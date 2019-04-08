#include<stdio.h>
#include <stdlib.h>
#include <time.h>
#define N 500
double product(double y[][N], double z[][N],int i,int j,int k){
  return y[i][k]*z[k][j];
}
void initYZ(double y[][N],double z[][N]){
  int i,j;
  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      y[i][j]=1;
      z[i][j]=1;
    }
  }
}
int main(int argc, char *argv[]){
  int i,j,k,flag;
  flag=atoi(argv[1]);
  static double x[N][N],y[N][N],z[N][N];
  double r,time_spent;
  clock_t begin = clock();

  initYZ(y,z);
  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      r=0;
      for(k=0;k<N;k++){
        switch(flag){
          case 1:
            r=r+product(y,z,i,j,k);
            break;
          case 2:
            r=r+product(y,z,i,k,j);
            break;
          case 3:
            r=r+product(y,z,j,i,k);
            break;
          case 4:
            r=r+product(y,z,j,k,i);
            break;
          case 5:
            r=r+product(y,z,k,i,j);
            break;
          case 6:
            r=r+product(y,z,k,j,i);
            break;
        }
      }
      x[i][j]=r;
    }
  }
  clock_t end = clock();
  time_spent = (double)(end - begin) / CLOCKS_PER_SEC*1e3;
  printf("%d\t%f\n",N,time_spent); //ms
}
