#include<stdio.h>
#include<stdlib.h>
#include <time.h>
#define N 3
double product(double y[][N], double z[][N],int i,int j,int k){
  return y[i][k]*z[k][j]; //y[i][k]*z[j][k];
}
double opt_product(double y[][N], double z[][N],int i,int j,int k){
  return y[i][k]*z[j][k];
}
void initYZ(double y[][N],double z[][N]){
  int i,j;
  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      y[i][j]=i-j;
      z[i][j]=i+j;
    }
  }
}
int main(int argc, char *argv[]){
  int i,j,k,flag;
  flag=atoi(argv[1]);
  static double x[N][N],y[N][N],z[N][N];
  double r,time_spent;
  clock_t begin = clock();
  double (*funcp)(double (*)[N], double (*)[N],int,int,int);
  if(flag==1){
    funcp=&product;
  }else{
    funcp=&opt_product;
  }
  initYZ(y,z);
  for(i=0;i<N;i++){
    for(j=0;j<N;j++){
      r=0;
      for(k=0;k<N;k++){
        r=r+(*funcp)(y,z,i,j,k);
      }
      x[i][j]=r;
    }
  }
  clock_t end = clock();
  time_spent = (double)(end - begin) / CLOCKS_PER_SEC*1e3;
  printf("%d\t%f\n",N,time_spent); //ms
}
