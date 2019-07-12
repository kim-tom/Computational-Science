/* 
 * mm_seq.h --- ほとんど最適化されていない行列積
 */

/* A : MxK, B : KxN, C : MxN */
void mm(matrix& A, matrix& B, matrix& C) {
  long M = A.n_rows, K = A.n_cols, N = B.n_cols;
  assert(B.n_rows == K);
  assert(C.n_rows == M);
  assert(C.n_cols == N);
  for (long i = 0; i < M; i++) {
    for (long j = 0; j < N; j+=n_lanes) {
      realv c = {0,0,0,0,0,0,0,0};
      asm volatile("# ==================");
      for (long k = 0; k < K; k++) {
        c += A(i,k) * B.loadv(k,j);
        //cの変数を10個くらいに増やす。この命令が一回に5サイクルかかってもったいない。OpenMP使えば更に早くなる。
      }
      asm volatile("# ------------------");
      C.storev(i,j,c);
    }
  }
  
}
