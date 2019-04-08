#include<stdio.h>
#include <time.h>
#define M 300
#define N 500
#define ITE 100
void initX(double x[][N]){
  int i,j;
  for(i=0;i<M;i++){
    for(j=0;j<N;j++){
      x[i][j]=1;
    }
  }
}
int main(){
  int i,j,k;
  static double x[M][N];
  double time_spent;
  clock_t begin = clock();
  initX(x);
  for (k = 0; k < ITE; k = k+1){
    for (j = 0; j < N; j = j+1){
      for (i = 0; i < M; i = i+1){
        x[i][j] = 2 * x[i][j];
      }
    }
  }
  clock_t end = clock();
  time_spent = (double)(end - begin) / CLOCKS_PER_SEC*1e3;
  printf("%d\t%f\n",N,time_spent); //ms
}
