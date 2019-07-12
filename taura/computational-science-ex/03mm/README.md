# mm

# コンパイル

```
$ make
```

するとほとんど最適化されていない 行列積のコード (mm_seq.h) からプログラム ./exe/mm_seq.exe ができる. 機械語(アセンブラ)は asm/mm_seq.s に生成される

# 実行

## -h でヘルプを表示

```
$ ./exe/mm_seq.exe -h
./exe/mm_seq.exe: invalid option -- 'h'
usage:
  ./exe/mm_seq.exe [options]:
perform matrix matrix multiply of (M,N) += (M,K) * (K,N) 
options:
 -M num : set M to num (1040)
 -N num : set N to num (1040)
 -K num : set K to num (1040)
 -r num : repeat num times (1)
 -x X : set random seed to X, to change initial configuration (9876543210987654)

```

## 無引数で実行すると A: 1040 x 1040 B: 1040 x 1040 の行列の掛け算を(1回)行う

```
$ ./exe/mm_seq.exe
A = 1040 x 1040 (4326400 bytes)
B = 1040 x 1040 (4326400 bytes)
C = 1040 x 1040 (4326400 bytes)
repeat C += A * B 1 times
2249728000 flops, total 12979200 bytes
2889793386 clocks
1.368275 sec
0.779 flops/clock
1.644208 GFLOPS
2.569 clocks/muladd
OK: max relative error = 0.000000
```

上記の
```
0.779 flops/clock
```

が性能指標で, これを大きくするのが目標. 行列のサイズや繰り返し数(-r)を, 測定がしやすいように適宜変更して良い. プログラムは任意サイズの行列を処理するようにしておくことが求められるが, 適宜「◯◯の倍数である」などという仮定を置いても良い.

なお上記の flops/clock の /clock は reference clockで測定している. これが processor clockで測定すれば, 32 flops/clock が1コアでの最大性能となる.  perfで測定した cycles を使って計算すると, ほぼ 0.4 flops/clock と出るはずである. これを1コアで32近くにし(つまり80倍高速化), さらにマルチコアで高速化できれば優秀

# 高速化

* 上記の flops/clock を向上させる
 * SIMD
 * 命令レベル並列性
 * マルチコア並列性
を駆使する. もちろんさらにMPIを使っても良い


# 作業方法

* mm_seq.h を好きな名前にコピーする
```
$ cp mm_seq.h mm_simd.h
```

* Makefile は mm_xxx.h というファイルを見つけると勝手に exe/mm_xxx.exe と asm/mm_xxx.s を生成してくれる

* プログラムのmain関数は mm.cc というファイルにある
* そこから全体としてプログラムがどう動いているかを知りたい場合はデバッガを使うと良い

 * Makefile をいじって, -O0 -g でコンパイルされるようにする (-O3 は無効に)
 * gdb ./exe/mm_seq.exe
  (gdb) break main
  (gdb) run -s 1


