/*
 * mm.cc --- 行列積
 */

#include <assert.h>
#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <unistd.h>
#include <x86intrin.h>
#include <omp.h>
typedef float real;
typedef real realv __attribute__((vector_size(32),aligned(sizeof(real))));
enum { n_lanes = sizeof(realv) / sizeof(real) };

/* 行列クラス
   matrix A;
   init(A, M, N, rg);
 */
struct matrix {
  long n_rows;			// 計算対象の行数
  long n_cols;			// 計算対象の列数
  long ld;			// 1行の要素数(a[i,j]からa[i+1,j]までの要素数)
  real * a;			// 要素の配列(行優先: a(0,0), a(0,1), ...)
  // A(i,j) で (i,j)要素へアクセスできるようにするための関数
  real& operator()(long i, long j) {
    return a[i * ld + j];
  }
  realv loadv(long i, long j) {
    //return _mm256_loadu_ps(&a[i * ld + j]);
    return *((realv*)(&a[i * ld + j]));
  }
  void storev(long i, long j, realv v) {
    *((realv*)(&a[i * ld + j])) = v;
    //return _mm256_storeu_ps(&a[i * ld + j], v);
  }
  void incv(long i, long j, realv v) {
    *((realv*)(&a[i * ld + j])) = v+loadv(i,j);
    //return _mm256_storeu_ps(&a[i * ld + j], v);
  }
};

/* Aを MxNのゼロ行列にする */
void zero(matrix& A, long M, long N) {
  A.n_rows = M;
  A.n_cols = N;
  A.ld = N;
  A.a = (real *)_mm_malloc(sizeof(real) * M * N, 64);
  for (long i = 0; i < M; i++) {
    for (long j = 0; j < N; j++) {
      A(i,j) = 0.0;
    }
  }
}

/* Aを MxNのランダムな行列にする. rgは乱数生成器 */
void init(matrix& A, long M, long N, unsigned short rg[3]) {
  A.n_rows = M;
  A.n_cols = N;
  A.ld = N;
  A.a = (real *)_mm_malloc(sizeof(real) * M * N, 64);
  for (long i = 0; i < M; i++) {
    for (long j = 0; j < N; j++) {
      A(i,j) = erand48(rg);	/* 乱数 */
    }
  }
}

void destroy(matrix& A) {
  A.n_rows = 0;
  A.n_cols = 0;
  A.ld = 0;
  free(A.a);
  A.a = 0;
}

/* プログラムのオプション
   C : MxN (zero)
   A : MxK (乱数)
   B : KxN (乱数)
   として C += A * B を repeat回繰り返す.
   seedは乱数の種
 */
typedef struct {
  long M;
  long N;
  long K;
  long repeat;
  long seed;
} options_t;


#include MMx_H

void help(options_t * o, char * argv0) {
  fprintf(stderr,
	  "usage:\n"
	  "  %s [options]:\n"
	  "perform matrix matrix multiply of (M,N) += (M,K) * (K,N) \n"
	  "options:\n"
	  " -M num : set M to num (%ld)\n"
	  " -N num : set N to num (%ld)\n"
	  " -K num : set K to num (%ld)\n"
	  " -r num : repeat num times (%ld)\n"
	  " -x X : set random seed to X, to change initial configuration (%ld)\n"
	  ,
	  argv0,
	  o->M, o->N, o->K, o->repeat,
	  o->seed);
}

/* コマンドラインを処理して, options_t 構造体にオプションをセット */
int parse_args(int argc, char ** argv, options_t * o) {
  o->M = 1040;
  o->N = 1040;
  o->K = 1040;
  o->repeat = 1;
  o->seed = 9876543210987654L;
  while (1) {
    int f = getopt(argc, argv, "M:N:K:r:x:");
    switch (f) {
    case -1:
      return 1;			// OK
    case 'M':
      o->M = atol(optarg);
      break;
    case 'N':
      o->N = atol(optarg);
      break;
    case 'K':
      o->K = atol(optarg);
      break;
    case 'r':
      o->repeat = atol(optarg);
      break;
    case 'x':
      o->seed = atol(optarg);
      break;
    default:
      help(o, argv[0]); exit(1);
    }
  }
  assert(0);			// should not reach here
}

/* C の要素をいくつかチェックしてあっていそうかチェック */
void check(matrix& A, matrix& B, matrix& C, long repeat) {
  unsigned short rg[3] = { 729, 918, 723 };
  float max_rel_err = 0.0;
  for (long t = 0; t < 10; t++) {
    /* ランダムな要素(C(i,j))を選ぶ */
    long i = nrand48(rg) % C.n_rows;
    long j = nrand48(rg) % C.n_cols;
    /*  C(i,j) は以下で計算できるはず */
    real s = 0.0;
    for (long k = 0; k < A.n_cols; k++) {
      s += A(i,k) * B(k,j);
    }
    /* repeat回繰り返しているからその repeat 倍 */
    s *= repeat;
    /* 相対エラーをチェック (1.0e-3 以内という保証はないが) */
    float rel_err = fabs((C(i,j) - s) / s);
    if (rel_err > 1.0e-3) {
      fprintf(stderr, "error: C(%ld,%ld) = %f != %f\n",
	      i, j, C(i,j), s);
      exit(1);
    }
    if (rel_err > max_rel_err) max_rel_err = rel_err;
  }
  printf("OK: max relative error = %f\n", max_rel_err);
}

double cur_time() {
  struct timespec ts[1];
  clock_gettime(CLOCK_REALTIME, ts);
  return ts->tv_sec + 1.0e-9 * ts->tv_nsec;
}

int main(int argc, char ** argv) {
  options_t o[1];
  /* コマンドラインを処理 */
  if (!parse_args(argc, argv, o)) return 1; // NG
  unsigned short rg[3] = { (unsigned short)(o->seed >> 32),
			   (unsigned short)(o->seed >> 16),
			   (unsigned short)(o->seed >> 0) };
  long M = o->M, N = o->N, K = o->K;
  /* A : MxK, B : KxN, C : MxN として行列を初期化 */
  matrix A, B, C;
  init(A, M, K, rg);
  init(B, K, N, rg);
  zero(C, M, N);
  
  /* A, B, C の大きさやflopsを表示 */
  long A_sz = M * K * sizeof(real);
  long B_sz = K * N * sizeof(real);
  long C_sz = M * N * sizeof(real);
  long flops = 2 * M * N * K * o->repeat;
  #pragma omp parallel
  {
  int t = omp_get_thread_num();
  int nt = omp_get_num_threads();
  /* n 回の繰り返しを nt スレッドで均等分割 */
  if(t==0)
    printf("%d threads used.\n",nt );
  }
  printf("A = %ld x %ld (%ld bytes)\n", M, K, A_sz);
  printf("B = %ld x %ld (%ld bytes)\n", K, N, B_sz);
  printf("C = %ld x %ld (%ld bytes)\n", M, N, C_sz);
  printf("repeat C += A * B %ld times\n", o->repeat);
  printf("%ld flops, total %ld bytes\n",
	 flops, A_sz + B_sz + C_sz);
  /* 本題. C += A * B を repeat 回繰り返す
     ここを測定する */
  double s0 = cur_time();
  long long t0 = _rdtsc();
  for (long i = 0; i < o->repeat; i++) {
    mm(A, B, C);
  }
  long long t1 = _rdtsc();
  double s1 = cur_time();
  long long dt = t1 - t0;
  double ds = s1 - s0;
  printf("%lld clocks\n", dt);
  printf("%f sec\n", ds);
  printf("%.3f flops/clock\n", flops / (double)dt);
  printf("%f GFLOPS\n", 1.0e-9 * flops / ds);
  printf("%.3f clocks/muladd\n", 2 * dt / (double)flops);
  /* 結果がまともかどうかチェック */
  check(A, B, C, o->repeat);
  destroy(A);
  destroy(B);
  destroy(C);
  return 0;
}
