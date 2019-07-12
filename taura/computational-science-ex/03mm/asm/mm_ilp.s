	.file	"mm.cc"
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"%d threads used.\n"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.type	main._omp_fn.0, @function
main._omp_fn.0:
.LFB4881:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4881
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	call	omp_get_thread_num
	movl	%eax, %ebx
	call	omp_get_num_threads
	testl	%ebx, %ebx
	je	.L7
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L7:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 8
	movl	%eax, %esi
	movl	$.LC0, %edi
	xorl	%eax, %eax
	jmp	printf
	.cfi_endproc
.LFE4881:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4881:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4881-.LLSDACSB4881
.LLSDACSB4881:
.LLSDACSE4881:
	.text
	.size	main._omp_fn.0, .-main._omp_fn.0
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	_Z4zeroR6matrixll
	.type	_Z4zeroR6matrixll, @function
_Z4zeroR6matrixll:
.LFB4872:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdx, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	leaq	0(,%rdx,4), %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	xorl	%r12d, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rdi, %rbx
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
	movq	%rdx, 8(%rdi)
	movq	%rdx, 16(%rdi)
	movq	%rsi, %rdx
	imulq	%r13, %rdx
	movq	%rsi, (%rdi)
	movl	$64, %esi
	leaq	8(%rsp), %rdi
	call	posix_memalign
	testl	%eax, %eax
	cmove	8(%rsp), %r12
	movq	%r12, 24(%rbx)
	testq	%rbp, %rbp
	jle	.L17
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L16:
	testq	%r15, %r15
	jle	.L13
	leaq	(%r12,%r14,4), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	call	memset
.L13:
	addq	$1, %rbx
	addq	%r15, %r14
	cmpq	%rbx, %rbp
	jne	.L16
.L17:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4872:
	.size	_Z4zeroR6matrixll, .-_Z4zeroR6matrixll
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	_Z4initR6matrixllPt
	.type	_Z4initR6matrixllPt, @function
_Z4initR6matrixllPt:
.LFB4873:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	movq	%rdi, %r15
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rcx, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	movq	%rdx, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	movq	%rsi, %rbx
	subq	$40, %rsp
	.cfi_def_cfa_offset 96
	movq	%rdx, 8(%rdi)
	movq	%rdx, 16(%rdi)
	salq	$2, %rdx
	imulq	%rsi, %rdx
	movq	%rsi, (%rdi)
	movq	%rsi, 8(%rsp)
	leaq	24(%rsp), %rdi
	movl	$64, %esi
	call	posix_memalign
	xorl	%edx, %edx
	testl	%eax, %eax
	cmove	24(%rsp), %rdx
	movq	%rdx, 24(%r15)
	testq	%rbx, %rbx
	jle	.L30
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L28:
	xorl	%ebx, %ebx
	testq	%r12, %r12
	jle	.L25
	.p2align 4,,10
	.p2align 3
.L29:
	movq	%rbp, %rax
	movq	24(%r15), %rdx
	movq	%r13, %rdi
	imulq	16(%r15), %rax
	addq	%rbx, %rax
	addq	$1, %rbx
	leaq	(%rdx,%rax,4), %r14
	call	erand48
	vxorps	%xmm1, %xmm1, %xmm1
	vcvtsd2ss	%xmm0, %xmm1, %xmm1
	vmovss	%xmm1, (%r14)
	cmpq	%rbx, %r12
	jne	.L29
.L25:
	addq	$1, %rbp
	cmpq	%rbp, 8(%rsp)
	jne	.L28
.L30:
	addq	$40, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4873:
	.size	_Z4initR6matrixllPt, .-_Z4initR6matrixllPt
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	_Z7destroyR6matrix
	.type	_Z7destroyR6matrix, @function
_Z7destroyR6matrix:
.LFB4874:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	movq	$0, (%rdi)
	movq	$0, 8(%rdi)
	movq	$0, 16(%rdi)
	movq	24(%rdi), %rdi
	call	free
	movq	$0, 24(%rbx)
	popq	%rbx
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4874:
	.size	_Z7destroyR6matrix, .-_Z7destroyR6matrix
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.rodata.str1.1
.LC5:
	.string	"mm_ilp.h"
.LC6:
	.string	"B.n_rows == K"
.LC7:
	.string	"C.n_rows == M"
.LC8:
	.string	"C.n_cols == N"
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	_Z2mmR6matrixS0_S0_
	.type	_Z2mmR6matrixS0_S0_, @function
_Z2mmR6matrixS0_S0_:
.LFB4875:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	movq	%rdi, %r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$192, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	(%rdi), %rax
	movq	%rdx, -224(%rbp)
	movq	%rax, -216(%rbp)
	movq	8(%rdi), %rax
	movq	8(%rsi), %rdi
	movq	%rax, -144(%rbp)
	movq	%rdi, -72(%rbp)
	cmpq	(%rsi), %rax
	jne	.L52
	movq	-216(%rbp), %rdi
	cmpq	(%rdx), %rdi
	jne	.L53
	movq	-72(%rbp), %rdi
	cmpq	8(%rdx), %rdi
	jne	.L37
	cmpq	$0, -216(%rbp)
	movq	$0, -64(%rbp)
	jle	.L50
	movq	%rsi, -208(%rbp)
	movq	%r14, %r15
.L48:
	cmpq	$0, -72(%rbp)
	jle	.L44
	movq	-64(%rbp), %rax
	movq	-224(%rbp), %r11
	leaq	4(%rax), %rcx
	movq	%rcx, %r8
	movq	%rcx, -176(%rbp)
	movq	24(%r11), %rdx
	leaq	5(%rax), %rcx
	movq	%rcx, -200(%rbp)
	leaq	1(%rax), %rsi
	movq	%rcx, %r9
	leaq	6(%rax), %rcx
	movq	%rsi, -168(%rbp)
	leaq	2(%rax), %rbx
	movq	%rcx, %r10
	movq	%rcx, -160(%rbp)
	movq	%rax, %rcx
	leaq	3(%rax), %rdi
	addq	$7, %rax
	movq	%rbx, -192(%rbp)
	movq	%rax, %r14
	movq	%rax, -184(%rbp)
	movq	16(%r11), %rax
	movq	%rdi, -152(%rbp)
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, -88(%rbp)
	movq	%rsi, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx,4), %rsi
	movq	%rbx, %rcx
	imulq	%rax, %rcx
	movq	%rsi, -96(%rbp)
	leaq	(%rdx,%rcx,4), %rbx
	movq	%rdi, %rcx
	imulq	%rax, %rcx
	movq	%rbx, -104(%rbp)
	leaq	(%rdx,%rcx,4), %rdi
	movq	%r8, %rcx
	imulq	%rax, %rcx
	movq	%rdi, -112(%rbp)
	leaq	(%rdx,%rcx,4), %rdi
	movq	%r9, %rcx
	imulq	%rax, %rcx
	movq	%rdi, -80(%rbp)
	leaq	(%rdx,%rcx,4), %rbx
	movq	%r10, %rcx
	imulq	%rax, %rcx
	movq	%rbx, -136(%rbp)
	imulq	%r14, %rax
	leaq	(%rdx,%rcx,4), %rsi
	xorl	%ecx, %ecx
	leaq	(%rdx,%rax,4), %rax
	movq	%rsi, -128(%rbp)
	movq	%rax, -120(%rbp)
	.p2align 4,,10
	.p2align 3
.L45:
#APP
# 19 "mm_ilp.h" 1
	# ==================
# 0 "" 2
#NO_APP
	movq	-144(%rbp), %r14
	testq	%r14, %r14
	jle	.L46
	movq	-208(%rbp), %rax
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	%ymm1, %ymm2
	vmovaps	%ymm1, %ymm3
	movq	16(%r15), %rsi
	vmovaps	%ymm1, %ymm4
	vmovaps	%ymm1, %ymm5
	vmovaps	%ymm1, %ymm6
	movq	-160(%rbp), %r8
	vmovaps	%ymm1, %ymm7
	vmovaps	%ymm1, %ymm8
	movq	-200(%rbp), %r9
	movq	-176(%rbp), %r10
	movq	-152(%rbp), %r11
	movq	-192(%rbp), %rbx
	imulq	%rsi, %r8
	movq	-168(%rbp), %r12
	imulq	%rsi, %r9
	movq	-184(%rbp), %rdi
	imulq	%rsi, %r10
	movq	16(%rax), %rdx
	imulq	%rsi, %r11
	movq	24(%rax), %rax
	imulq	%rsi, %rbx
	imulq	%rsi, %r12
	imulq	%rsi, %rdi
	imulq	-64(%rbp), %rsi
	leaq	0(,%rdx,4), %r13
	leaq	(%rax,%rcx,4), %rdx
	movq	24(%r15), %rax
	addq	%rsi, %r14
	subq	%rsi, %r12
	subq	%rsi, %rbx
	leaq	(%rax,%rsi,4), %rax
	subq	%rsi, %r11
	subq	%rsi, %r10
	movq	%rax, -56(%rbp)
	movq	24(%r15), %rax
	subq	%rsi, %r9
	subq	%rsi, %r8
	subq	%rsi, %rdi
	leaq	(%rax,%r14,4), %r14
	movq	-56(%rbp), %rax
	.p2align 4,,10
	.p2align 3
.L43:
	vmovups	(%rdx), %ymm0
#APP
# 22 "mm_ilp.h" 1
	# temp
# 0 "" 2
#NO_APP
	vbroadcastss	(%rax), %ymm9
	addq	%r13, %rdx
	vfmadd231ps	%ymm0, %ymm9, %ymm8
	vbroadcastss	(%rax,%r12,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm7
	vbroadcastss	(%rax,%rbx,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm6
	vbroadcastss	(%rax,%r11,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm5
	vbroadcastss	(%rax,%r10,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm4
	vbroadcastss	(%rax,%r9,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm3
	vbroadcastss	(%rax,%r8,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm2
	vbroadcastss	(%rax,%rdi,4), %ymm9
	addq	$4, %rax
	vfmadd231ps	%ymm0, %ymm9, %ymm1
	cmpq	%rax, %r14
	jne	.L43
.L42:
#APP
# 32 "mm_ilp.h" 1
	# ------------------
# 0 "" 2
#NO_APP
	movq	-88(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm8, %ymm8
	vmovups	%ymm8, (%rax,%rcx,4)
	movq	-96(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm7, %ymm7
	vmovups	%ymm7, (%rax,%rcx,4)
	movq	-104(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm6, %ymm6
	vmovups	%ymm6, (%rax,%rcx,4)
	movq	-112(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm5, %ymm5
	vmovups	%ymm5, (%rax,%rcx,4)
	movq	-80(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm4, %ymm4
	vmovups	%ymm4, (%rax,%rcx,4)
	movq	-136(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm3, %ymm3
	vmovups	%ymm3, (%rax,%rcx,4)
	movq	-128(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm2, %ymm2
	vmovups	%ymm2, (%rax,%rcx,4)
	movq	-120(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm1, %ymm1
	vmovups	%ymm1, (%rax,%rcx,4)
	addq	$8, %rcx
	cmpq	%rcx, -72(%rbp)
	jg	.L45
.L44:
	addq	$8, -64(%rbp)
	movq	-64(%rbp), %rax
	cmpq	%rax, -216(%rbp)
	jg	.L48
	vzeroupper
.L50:
	addq	$192, %rsp
	popq	%rbx
	popq	%r10
	.cfi_remember_state
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
.L46:
	.cfi_restore_state
	vxorps	%xmm1, %xmm1, %xmm1
	vmovaps	%ymm1, %ymm2
	vmovaps	%ymm1, %ymm3
	vmovaps	%ymm1, %ymm4
	vmovaps	%ymm1, %ymm5
	vmovaps	%ymm1, %ymm6
	vmovaps	%ymm1, %ymm7
	vmovaps	%ymm1, %ymm8
	jmp	.L42
.L52:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$10, %edx
	movl	$.LC5, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L53:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$11, %edx
	movl	$.LC5, %esi
	movl	$.LC7, %edi
	call	__assert_fail
.L37:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$12, %edx
	movl	$.LC5, %esi
	movl	$.LC8, %edi
	call	__assert_fail
	.cfi_endproc
.LFE4875:
	.size	_Z2mmR6matrixS0_S0_, .-_Z2mmR6matrixS0_S0_
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.ascii	"usage:\n  %s [options]:"
	.string	"\nperform matrix matrix multiply of (M,N) += (M,K) * (K,N) \noptions:\n -M num : set M to num (%ld)\n -N num : set N to num (%ld)\n -K num : set K to num (%ld)\n -r num : repeat num times (%ld)\n -x X : set random seed to X, to change initial configuration (%ld)\n"
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	_Z4helpP9options_tPc
	.type	_Z4helpP9options_tPc, @function
_Z4helpP9options_tPc:
.LFB4876:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdx
	xorl	%eax, %eax
	pushq	32(%rdi)
	.cfi_def_cfa_offset 24
	movl	$.LC10, %esi
	pushq	24(%rdi)
	.cfi_def_cfa_offset 32
	movq	16(%rdi), %r9
	movq	8(%rdi), %r8
	movq	(%rdi), %rcx
	movq	stderr(%rip), %rdi
	call	fprintf
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4876:
	.size	_Z4helpP9options_tPc, .-_Z4helpP9options_tPc
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.rodata.str1.1
.LC12:
	.string	"M:N:K:r:x:"
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
	.p2align 4,,15
	.globl	_Z10parse_argsiPPcP9options_t
	.type	_Z10parse_argsiPPcP9options_t, @function
_Z10parse_argsiPPcP9options_t:
.LFB4877:
	.cfi_startproc
	movabsq	$9876543210987654, %rax
	pushq	%r12
	.cfi_def_cfa_offset 16
	.cfi_offset 12, -16
	movl	%edi, %r12d
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	movq	%rdx, %rbx
	movq	$1040, (%rdx)
	movq	$1040, 8(%rdx)
	movq	$1040, 16(%rdx)
	movq	$1, 24(%rdx)
	movq	%rax, 32(%rdx)
.L57:
	movl	$.LC12, %edx
	movq	%rbp, %rsi
	movl	%r12d, %edi
	call	getopt
	cmpl	$77, %eax
	je	.L59
	jle	.L71
	cmpl	$114, %eax
	je	.L63
	cmpl	$120, %eax
	je	.L64
	cmpl	$78, %eax
	je	.L72
.L58:
	movq	stderr(%rip), %rdi
	movl	$.LC10, %esi
	xorl	%eax, %eax
	movq	16(%rbx), %r9
	movq	8(%rbx), %r8
	movq	(%rbx), %rcx
	movq	0(%rbp), %rdx
	pushq	32(%rbx)
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	pushq	24(%rbx)
	.cfi_def_cfa_offset 48
	call	fprintf
	movl	$1, %edi
	call	exit
	.p2align 4,,10
	.p2align 3
.L72:
	.cfi_restore_state
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 8(%rbx)
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L71:
	cmpl	$-1, %eax
	je	.L68
	cmpl	$75, %eax
	jne	.L58
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 16(%rbx)
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L68:
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 24
	movl	$1, %eax
	popq	%rbp
	.cfi_def_cfa_offset 16
	popq	%r12
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L59:
	.cfi_restore_state
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, (%rbx)
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L64:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 32(%rbx)
	jmp	.L57
	.p2align 4,,10
	.p2align 3
.L63:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 24(%rbx)
	jmp	.L57
	.cfi_endproc
.LFE4877:
	.size	_Z10parse_argsiPPcP9options_t, .-_Z10parse_argsiPPcP9options_t
	.section	.text.unlikely
.LCOLDE13:
	.text
.LHOTE13:
	.section	.rodata.str1.1
.LC17:
	.string	"error: C(%ld,%ld) = %f != %f\n"
.LC18:
	.string	"OK: max relative error = %f\n"
	.section	.text.unlikely
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4,,15
	.globl	_Z5checkR6matrixS0_S0_l
	.type	_Z5checkR6matrixS0_S0_l, @function
_Z5checkR6matrixS0_S0_l:
.LFB4878:
	.cfi_startproc
	vxorps	%xmm7, %xmm7, %xmm7
	vcvtsi2ssq	%rcx, %xmm7, %xmm7
	pushq	%r14
	.cfi_def_cfa_offset 16
	.cfi_offset 14, -16
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 24
	.cfi_offset 13, -24
	movl	$729, %eax
	movl	$723, %esi
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 32
	.cfi_offset 12, -32
	vxorps	%xmm0, %xmm0, %xmm0
	pushq	%rbp
	.cfi_def_cfa_offset 40
	.cfi_offset 6, -40
	movq	%rdx, %rbp
	movl	$918, %edx
	pushq	%rbx
	.cfi_def_cfa_offset 48
	.cfi_offset 3, -48
	movl	$10, %ebx
	subq	$32, %rsp
	.cfi_def_cfa_offset 80
	movw	%ax, 16(%rsp)
	movw	%dx, 18(%rsp)
	movw	%si, 20(%rsp)
	vmovss	%xmm7, 12(%rsp)
	.p2align 4,,10
	.p2align 3
.L79:
	leaq	16(%rsp), %rdi
	vmovss	%xmm0, 8(%rsp)
	call	nrand48
	leaq	16(%rsp), %rdi
	cqto
	idivq	0(%rbp)
	movq	%rdx, %r12
	call	nrand48
	vxorps	%xmm1, %xmm1, %xmm1
	vmovss	8(%rsp), %xmm0
	cqto
	idivq	8(%rbp)
	movq	8(%r13), %rax
	testq	%rax, %rax
	jle	.L74
	movq	%r12, %rsi
	movq	24(%r13), %rcx
	vxorps	%xmm1, %xmm1, %xmm1
	imulq	16(%r13), %rsi
	movq	16(%r14), %r11
	movq	24(%r14), %r8
	leaq	(%rcx,%rsi,4), %rdi
	addq	%rax, %rsi
	leaq	0(,%r11,4), %r9
	leaq	(%r8,%rdx,4), %r8
	leaq	(%rcx,%rsi,4), %r10
	.p2align 4,,10
	.p2align 3
.L75:
	vmovss	(%rdi), %xmm5
	addq	$4, %rdi
	vfmadd231ss	(%r8), %xmm5, %xmm1
	addq	%r9, %r8
	cmpq	%r10, %rdi
	jne	.L75
.L74:
	movq	%r12, %rax
	movq	24(%rbp), %rcx
	vxorpd	%xmm4, %xmm4, %xmm4
	imulq	16(%rbp), %rax
	vmulss	12(%rsp), %xmm1, %xmm1
	addq	%rdx, %rax
	vmovss	(%rcx,%rax,4), %xmm3
	vsubss	%xmm1, %xmm3, %xmm2
	vdivss	%xmm1, %xmm2, %xmm2
	vandps	.LC15(%rip), %xmm2, %xmm2
	vcvtss2sd	%xmm2, %xmm4, %xmm4
	vucomisd	.LC16(%rip), %xmm4
	ja	.L87
	vmaxss	%xmm0, %xmm2, %xmm0
	subq	$1, %rbx
	jne	.L79
	movl	$.LC18, %edi
	movl	$1, %eax
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	call	printf
	addq	$32, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 48
	popq	%rbx
	.cfi_def_cfa_offset 40
	popq	%rbp
	.cfi_def_cfa_offset 32
	popq	%r12
	.cfi_def_cfa_offset 24
	popq	%r13
	.cfi_def_cfa_offset 16
	popq	%r14
	.cfi_def_cfa_offset 8
	ret
.L87:
	.cfi_restore_state
	movq	%rdx, %rcx
	movq	%r12, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	movl	$.LC17, %esi
	movq	stderr(%rip), %rdi
	movl	$2, %eax
	vcvtss2sd	%xmm3, %xmm0, %xmm0
	call	fprintf
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE4878:
	.size	_Z5checkR6matrixS0_S0_l, .-_Z5checkR6matrixS0_S0_l
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.globl	_Z8cur_timev
	.type	_Z8cur_timev, @function
_Z8cur_timev:
.LFB4879:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	xorl	%edi, %edi
	movq	%rsp, %rsi
	call	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	8(%rsp), %xmm0, %xmm0
	vcvtsi2sdq	(%rsp), %xmm1, %xmm1
	vfmadd132sd	.LC20(%rip), %xmm1, %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4879:
	.size	_Z8cur_timev, .-_Z8cur_timev
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.section	.rodata.str1.1
.LC22:
	.string	"A = %ld x %ld (%ld bytes)\n"
.LC23:
	.string	"B = %ld x %ld (%ld bytes)\n"
.LC24:
	.string	"C = %ld x %ld (%ld bytes)\n"
.LC25:
	.string	"repeat C += A * B %ld times\n"
.LC26:
	.string	"%ld flops, total %ld bytes\n"
.LC27:
	.string	"%lld clocks\n"
.LC28:
	.string	"%f sec\n"
.LC29:
	.string	"%.3f flops/clock\n"
.LC30:
	.string	"%f GFLOPS\n"
.LC31:
	.string	"%.3f clocks/muladd\n"
	.section	.text.unlikely
.LCOLDB32:
	.section	.text.startup,"ax",@progbits
.LHOTB32:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB4880:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$200, %rsp
	.cfi_def_cfa_offset 256
	leaq	144(%rsp), %rdx
	call	_Z10parse_argsiPPcP9options_t
	movl	$1, %edx
	testl	%eax, %eax
	jne	.L101
.L98:
	addq	$200, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	movl	%edx, %eax
	popq	%rbx
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_def_cfa_offset 8
	ret
.L101:
	.cfi_restore_state
	movq	176(%rsp), %rax
	leaq	16(%rsp), %rcx
	movq	160(%rsp), %r13
	leaq	48(%rsp), %rdi
	movq	144(%rsp), %rbp
	movq	152(%rsp), %r12
	movq	%rax, %rdx
	movw	%ax, 20(%rsp)
	sarq	$32, %rdx
	movw	%dx, 16(%rsp)
	movq	%rax, %rdx
	movq	%rbp, %rsi
	movq	%rbp, %r15
	leaq	0(%rbp,%rbp), %rbx
	sarq	$16, %rdx
	movq	%r12, %r14
	movw	%dx, 18(%rsp)
	imulq	%r13, %r15
	movq	%r13, %rdx
	call	_Z4initR6matrixllPt
	leaq	16(%rsp), %rcx
	movq	%r12, %rdx
	movq	%r13, %rsi
	leaq	80(%rsp), %rdi
	call	_Z4initR6matrixllPt
	leaq	112(%rsp), %rdi
	movq	%r12, %rdx
	movq	%rbp, %rsi
	call	_Z4zeroR6matrixll
	movq	%rbp, %rdx
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	imulq	%r12, %rdx
	salq	$2, %r15
	movl	$main._omp_fn.0, %edi
	imulq	%r12, %rbx
	imulq	%r13, %r14
	leaq	0(,%rdx,4), %rax
	xorl	%edx, %edx
	imulq	%r13, %rbx
	movq	%rax, (%rsp)
	imulq	168(%rsp), %rbx
	salq	$2, %r14
	call	GOMP_parallel
	movq	%r15, %rcx
	movq	%r13, %rdx
	movq	%rbp, %rsi
	movl	$.LC22, %edi
	xorl	%eax, %eax
	call	printf
	movq	%r14, %rcx
	movq	%r12, %rdx
	movq	%r13, %rsi
	movl	$.LC23, %edi
	xorl	%eax, %eax
	addq	%r15, %r14
	call	printf
	movq	(%rsp), %r13
	movq	%r12, %rdx
	movq	%rbp, %rsi
	movl	$.LC24, %edi
	xorl	%eax, %eax
	movq	%r13, %rcx
	call	printf
	movq	168(%rsp), %rsi
	movl	$.LC25, %edi
	xorl	%eax, %eax
	call	printf
	leaq	(%r14,%r13), %rdx
	movq	%rbx, %rsi
	xorl	%eax, %eax
	movl	$.LC26, %edi
	call	printf
	leaq	32(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	32(%rsp), %xmm0, %xmm0
	vcvtsi2sdq	40(%rsp), %xmm1, %xmm1
	vfmadd132sd	.LC20(%rip), %xmm0, %xmm1
	vmovsd	%xmm1, (%rsp)
	rdtsc
	xorl	%ebp, %ebp
	salq	$32, %rdx
	movq	%rax, %r12
	orq	%rdx, %r12
	cmpq	$0, 168(%rsp)
	jle	.L93
	.p2align 4,,10
	.p2align 3
.L96:
	leaq	112(%rsp), %rdx
	addq	$1, %rbp
	leaq	80(%rsp), %rsi
	leaq	48(%rsp), %rdi
	call	_Z2mmR6matrixS0_S0_
	cmpq	%rbp, 168(%rsp)
	jg	.L96
.L93:
	rdtsc
	xorl	%edi, %edi
	leaq	32(%rsp), %rsi
	salq	$32, %rdx
	movq	%rax, %rbp
	orq	%rdx, %rbp
	call	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	subq	%r12, %rbp
	movq	%rbp, %rsi
	movl	$.LC27, %edi
	xorl	%eax, %eax
	vcvtsi2sdq	32(%rsp), %xmm1, %xmm1
	vcvtsi2sdq	40(%rsp), %xmm0, %xmm0
	vfmadd132sd	.LC20(%rip), %xmm1, %xmm0
	vsubsd	(%rsp), %xmm0, %xmm3
	vmovsd	%xmm3, (%rsp)
	call	printf
	vmovsd	(%rsp), %xmm0
	movl	$.LC28, %edi
	movl	$1, %eax
	call	printf
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$.LC29, %edi
	vcvtsi2sdq	%rbx, %xmm2, %xmm2
	movl	$1, %eax
	vcvtsi2sdq	%rbp, %xmm0, %xmm0
	addq	%rbp, %rbp
	vmovsd	%xmm2, 8(%rsp)
	vdivsd	%xmm0, %xmm2, %xmm0
	call	printf
	movl	$.LC30, %edi
	movl	$1, %eax
	vmovsd	.LC20(%rip), %xmm5
	vmulsd	8(%rsp), %xmm5, %xmm0
	vdivsd	(%rsp), %xmm0, %xmm0
	call	printf
	movl	$.LC31, %edi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rbp, %xmm0, %xmm0
	vdivsd	8(%rsp), %xmm0, %xmm0
	call	printf
	movq	168(%rsp), %rcx
	leaq	112(%rsp), %rdx
	leaq	80(%rsp), %rsi
	leaq	48(%rsp), %rdi
	call	_Z5checkR6matrixS0_S0_l
	movq	72(%rsp), %rdi
	call	free
	movq	104(%rsp), %rdi
	call	free
	movq	136(%rsp), %rdi
	call	free
	xorl	%edx, %edx
	jmp	.L98
	.cfi_endproc
.LFE4880:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE32:
	.section	.text.startup
.LHOTE32:
	.section	.rodata
	.align 32
	.type	_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, @object
	.size	_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, 35
_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__:
	.string	"void mm(matrix&, matrix&, matrix&)"
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC15:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC16:
	.long	3539053052
	.long	1062232653
	.align 8
.LC20:
	.long	3894859413
	.long	1041313291
	.ident	"GCC: (GNU) 5.4.0"
	.section	.note.GNU-stack,"",@progbits
