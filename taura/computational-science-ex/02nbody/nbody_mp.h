/**
   @file nbody_ilp.h optimized program
 */
      
/**
   @brief pがqから受ける加速度を計算して p->acc に加算 (mM/(r^2+eps^2) r/sqrt(r^2+eps^2))
   @return pがqから受けるポテンシャル (-mM/(r^2+eps^2))
 */

realv interact2v(particlev * pv, /** 力を受けるn_lanesつの粒子 */
               particlev * qv,    /** 力を与える粒子 */
                 real eps,      /** ソフトニングパラメータ */
                 realv *Uv, int i, int j  ) {
  realv m,r2,rinv;
  vecv dx,f;
  vec pos;
  for(int k =0; k<n_lanes;k++){
    pos=vec(qv->pos.x[0][k],qv->pos.x[1][k],qv->pos.x[2][k]);
    m = set1(qv->m[k]);
    dx = pv->pos-pos;
    r2 = norm2v(dx) + eps * eps;
    rinv = rsqrtv(r2);
    f = dx * (m * rinv * rinv * rinv);
    if(i==j){
      f.x[0][k]=0.0; //同じ座標の相互作用を無効にするため
      f.x[1][k]=0.0;
      f.x[2][k]=0.0;
      m[k]=0.0;
    }
    pv->acc = pv->acc - f;
    *Uv -= pv->m * m * rinv;
    //printf("%f\n",m[0]);
  }
  return *Uv;
}

/**
   @brief 全粒子(p[0] ... p[n-1])が受ける加速度を計算
   @return 全ポテンシャル
 */
realv add_reg(realv out, realv in){
  return out+in;
}

#pragma omp declare reduction(ar: realv: omp_out=add_reg(omp_out,omp_in))
real interact_all(long n,       /** 粒子数 */
                  particle * p, /** 粒子配列 */
                  particlev * pv, /** SIMD粒子の配列(未使用)  */
                  options_t * o   /** コマンドラインオプション  */
                  ) {
  (void)p;
  realv Uv = {0,0,0,0,0,0,0,0},zerov = {0,0,0,0,0,0,0,0};
  real U=0;
  real eps = o->eps;
#pragma omp parallel for reduction(ar:Uv)
  for (long i = 0; i < n/n_lanes; i++) {
    pv[i].acc = vecv(zerov);
    for (long j = 0; j < n/n_lanes; j++) {
      interact2v(pv + i, pv + j, eps,&Uv,i,j);
    }
  }
  printf("%d,%f\n",0,pv->pos.x[0][0]);
  printf("%d,%f\n",0,pv->vel.x[0][0]);
  printf("%d,%f\n",0,pv->acc.x[0][0]);
  for (int i = 0; i < n_lanes; i++) {
    U += Uv[i];
  }
  return 0.5 * U;
}

/**
   @brief 全粒子(p[0] ... p[n-1])の運動エネルギー
   @return 全運動エネルギー
 */
real kinetic(long n,       /** 粒子数 */
             particle * p,  /** 粒子配列 */
             particlev * pv  /** 粒子配列 */
             ) {
  (void)p;
  realv Kv = {0,0,0,0,0,0,0};
  for (long i = 0; i < n/n_lanes; i++) {
    Kv += 0.5 * pv[i].m * norm2v(pv[i].vel);
  }
  real K=0;
  for (int i = 0; i < n_lanes; i++) {
    K += Kv[i];
  }
  return K;
}

/**
   @brief 全粒子(p[0]...p[n-1])の加速度が与えられた状態で, 
   全粒子のdt時間後の速度と位置を計算
1   @return dt
 */
real update(long n,             /** 粒子数 */
            particle * p,       /** 粒子配列 */
            particlev * pv,       /** 粒子配列 */
            real dt             /** 時間 */
            ) {
  (void)p;
  for (long i = 0; i < n/n_lanes; i++) {
    pv[i].vel = pv[i].vel + pv[i].acc * set1(dt);
    pv[i].pos = pv[i].pos + pv[i].vel * set1(dt);
  }
  return dt;
}

/** 
    @brief MPIの初期化 (MPIを使わない場合なにも必要なし)
 */
void mpi_init(int * argcp,      /** コマンドライン引数の数 */
              char ***argvp     /** コマンドライン引数配列の先頭アドレスのアドレス  */
              ) {
  (void)argcp;
  (void)argvp;
}

/** 
    @brief MPIの終了 (MPIを使わない場合なにも必要なし)
 */
void mpi_finalize() {
}

/** 
    @brief MPIプロセス番号 (MPIを使わない場合0)
 */
int get_mpi_rank() {
  return 0;
}

/** 
    @brief MPIプロセス数 (MPIを使わない場合1)
 */
int get_mpi_nprocs() {
  return 1;
}

/** 
    @brief ポインタpを全プロセスへ送る (MPIを使わない場合なにも必要なし)
 */
void * bcast_ptr(void * p) {
  return p;
}

/** 
    @brief 全粒子のデータをプロセス0のp[0] ... p[n-1]へ収集
 */
void gather_particles(long n,       /** 粒子数 */
                      particle * p, /** 粒子配列 */
                      options_t * o /** コマンドラインオプション  */
                      ) {
  (void)n;
  (void)p;
  (void)o;
}

/** 
    @brief 全粒子のデータを全プロセスに送信
 */
void sync_particles(long n,       /** 粒子数 */
                    particle * p, /** 粒子配列 */
                    options_t * o /** コマンドラインオプション  */
                    ) {
  (void)n;
  (void)p;
  (void)o;
}

