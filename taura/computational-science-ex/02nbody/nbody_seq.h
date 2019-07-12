/**
   @file nbody_seq.h --- single-core, non-vectorized implementation
 */

/**
   @brief pがqから受ける加速度を計算して p->acc に加算 (mM/(r^2+eps^2) r/sqrt(r^2+eps^2))
   @return pがqから受けるポテンシャル (-mM/(r^2+eps^2))
 */
real interact2(particle * p,    /** 力を受ける粒子 */
               particle * q,    /** 力を与える粒子 */
               real eps         /** ソフトニングパラメータ */
               ) {
  vec dx = q->pos - p->pos;
  real r2 = norm2(dx) + eps * eps;
  real rinv = rsqrt(r2);
  vec f = dx * (q->m * rinv * rinv * rinv);
  p->acc = p->acc + f;
  return - p->m * q->m * rinv;
}

/**
   @brief 全粒子(p[0] ... p[n-1])が受ける加速度を計算
   @return 全ポテンシャル
 */
real interact_all(long n,       /** 粒子数 */
                  particle * p, /** 粒子配列 */
                  particlev * pv, /** SIMD粒子の配列(未使用)  */
                  options_t * o   /** コマンドラインオプション  */
                  ) {
  (void)pv;
  real U = 0.0;
  real eps = o->eps;
  for (long i = 0; i < n; i++) {
    p[i].acc = vec(0.0, 0.0, 0.0);
    for (long j = 0; j < n; j++) {
      if(i!=j)
        U += interact2(p + i, p + j, eps);
    }
  }
  printf("%d,%f\n",0,p->pos.x[0]);
  printf("%d,%f\n",0,p->vel.x[0]);
  printf("%d,%f\n",0,p->acc.x[0]);
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
  (void)pv;
  real K = 0.0;
  for (long i = 0; i < n; i++) {
    K += 0.5 * p[i].m * norm2(p[i].vel);
  }
  return K;
}

/**
   @brief 全粒子(p[0]...p[n-1])の加速度が与えられた状態で, 
   全粒子のdt時間後の速度と位置を計算
   @return dt
 */
real update(long n,             /** 粒子数 */
            particle * p,       /** 粒子配列 */
            particlev * pv,       /** 粒子配列 */
            real dt             /** 時間 */
            ) {
  (void)pv;
  for (long i = 0; i < n; i++) {
    p[i].vel = p[i].vel + p[i].acc * dt;
    p[i].pos = p[i].pos + p[i].vel * dt;
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

