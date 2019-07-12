/*
 * mm_ilp.h --- 最適化されている行列積
 */
#define P 8
/* A : MxK, B : KxN, C : MxN */

realv add_reg(realv out, realv in){
  return out+in;
}

#pragma omp declare reduction(ar: realv: omp_out=add_reg(omp_out,omp_in))

void mm(matrix& A, matrix& B, matrix& C) {
  long M = A.n_rows, K = A.n_cols, N = B.n_cols;
  assert(B.n_rows == K);
  assert(C.n_rows == M);
  assert(C.n_cols == N);
  realv c0,c1,c2,c3,c4,c5,c6,c7,init={0,0,0,0,0,0,0,0},temp;
#pragma omp parallel for reduction(ar:c0,c1,c2,c3,c4,c5,c6,c7)
  for (long i = 0; i < M; i+=P) {
    for (long j = 0; j < N; j+=n_lanes) {
      //realv c0={0,0,0,0,0,0,0,0},c1={0,0,0,0,0,0,0,0},c2={0,0,0,0,0,0,0,0},c3={0,0,0,0,0,0,0,0},c4={0,0,0,0,0,0,0,0},c5={0,0,0,0,0,0,0,0},c6={0,0,0,0,0,0,0,0},c7={0,0,0,0,0,0,0,0},temp;
      c0=c1=c2=c3=c4=c5=c6=c7=init;
      //cl=(i+l,j)th component
      asm volatile("# ==================");

      for (long k = 0; k < K; k++) {
        temp=B.loadv(k,j);
        asm volatile("# temp");
        c0 += A(i,k) * temp;
        c1 += A(i+1,k) * temp;
        c2 += A(i+2,k) * temp;
        c3 += A(i+3,k) * temp;
        c4 += A(i+4,k) * temp;
        c5 += A(i+5,k) * temp;
        c6 += A(i+6,k) * temp;
        c7 += A(i+7,k) * temp;
      }
      asm volatile("# ------------------");

      C.incv(i,j,c0);
      C.incv(i+1,j,c1);
      C.incv(i+2,j,c2);
      C.incv(i+3,j,c3);
      C.incv(i+4,j,c4);
      C.incv(i+5,j,c5);
      C.incv(i+6,j,c6);
      C.incv(i+7,j,c7);
    }
  }
}

/* void mm2(matrix& A, matrix& B, matrix& C) { */
/*   long M = A.n_rows, K = A.n_cols, N = B.n_cols; */
/*   assert(B.n_rows == K); */
/*   assert(C.n_rows == M); */
/*   assert(C.n_cols == N); */
/*   realv c[P]; //c[l]=(i+l,j)th component */
/*   for (long i = 0; i < M; i+=P) { */
/*     for (long j = 0; j < N; j+=n_lanes) { */
/*       asm volatile("# =================="); */
/*       for(int k = 0; k<P; k++){ */
/*         for(int l = 0; l<n_lanes; l++){ */
/*           c[k][l]=0.0F; */
/*         } */
/*       } */
/*       for(int l = 0; l<P;l++){ */
/*         realv s={0.0F,0.0F,0.0F,0.0F,0.0F,0.0F,0.0F,0.0F}; */
/*         //#pragma omp parallel shared(s) */
/*         #pragma omp parallel for reduction(ar:s) */
/*         for (long k = 0; k < K; k++) { */
/*           s += A(i+l,k) * B.loadv(k,j); */
/*         } */
/*         c[l]=s; */

/*       } */
/*       asm volatile("# ------------------"); */
/*       for(int l = 0; l<P;l++){ */
/*         C.incv(i+l,j,c[l]); */
/*       } */
/*     } */
/*   } */
/* } */

