	.file	"mm.cc"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4,,15
	.type	_Z2mmR6matrixS0_S0_._omp_fn.0, @function
_Z2mmR6matrixS0_S0_._omp_fn.0:
.LFB4883:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	leaq	16(%rsp), %r13
	.cfi_def_cfa 13, 0
	andq	$-32, %rsp
	pushq	-8(%r13)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	movq	%rdi, %r14
	pushq	%r13
	.cfi_escape 0xf,0x3,0x76,0x68,0x6
	pushq	%r12
	pushq	%rbx
	subq	$360, %rsp
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	.cfi_escape 0x10,0x3,0x2,0x76,0x58
	call	omp_get_num_threads
	movslq	%eax, %rbx
	call	omp_get_thread_num
	movq	24(%r14), %rdx
	movslq	%eax, %rcx
	leaq	14(%rdx), %rax
	addq	$7, %rdx
	cmovns	%rdx, %rax
	sarq	$3, %rax
	cqto
	idivq	%rbx
	cmpq	%rdx, %rcx
	jge	.L11
	addq	$1, %rax
	xorl	%edx, %edx
.L11:
	imulq	%rax, %rcx
	addq	%rcx, %rdx
	addq	%rdx, %rax
	cmpq	%rax, %rdx
	jge	.L12
	salq	$3, %rax
	vxorps	%xmm2, %xmm2, %xmm2
	movq	%r14, %r15
	vmovaps	%ymm2, %ymm3
	movq	%rax, -400(%rbp)
	movq	40(%r14), %rax
	vmovaps	%ymm2, %ymm4
	vmovaps	%ymm2, %ymm5
	leaq	0(,%rdx,8), %rdi
	vmovaps	%ymm2, %ymm6
	vmovaps	%ymm2, %ymm1
	movq	%rdi, -176(%rbp)
	vmovaps	%ymm2, %ymm7
	vmovaps	%ymm2, %ymm8
	movq	%rax, -208(%rbp)
.L5:
	cmpq	$0, -208(%rbp)
	jle	.L7
	movq	-176(%rbp), %rbx
	leaq	1(%rbx), %rcx
	movq	%rbx, %rax
	addq	$6, %rax
	movq	%rcx, %rsi
	movq	%rcx, -392(%rbp)
	leaq	2(%rbx), %rcx
	movq	%rax, %rdi
	movq	%rax, -368(%rbp)
	movq	16(%r15), %rax
	movq	%rcx, %r8
	movq	%rcx, -360(%rbp)
	leaq	3(%rbx), %rcx
	movq	%rcx, %r9
	movq	%rcx, -384(%rbp)
	leaq	4(%rbx), %rcx
	movq	24(%rax), %rdx
	movq	%rcx, %r10
	movq	%rcx, -352(%rbp)
	movq	16(%rax), %rax
	leaq	5(%rbx), %rcx
	movq	%rcx, %r11
	movq	%rcx, -376(%rbp)
	leaq	7(%rbx), %rcx
	movq	%rcx, -344(%rbp)
	imulq	%rax, %rbx
	movq	%rcx, %r12
	movq	32(%r15), %rcx
	movq	%rcx, -80(%rbp)
	movq	%rsi, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rbx,4), %rbx
	movq	%rbx, -312(%rbp)
	leaq	(%rdx,%rcx,4), %rbx
	movq	%r8, %rcx
	imulq	%rax, %rcx
	movq	%rbx, %r14
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, -240(%rbp)
	movq	%r9, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, -272(%rbp)
	movq	%r10, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, -304(%rbp)
	movq	%r11, %rcx
	imulq	%rax, %rcx
	leaq	(%rdx,%rcx,4), %rcx
	movq	%rcx, -336(%rbp)
	movq	%rdi, %rcx
	imulq	%rax, %rcx
	imulq	%r12, %rax
	leaq	(%rdx,%rcx,4), %rdi
	xorl	%ecx, %ecx
	leaq	(%rdx,%rax,4), %rax
	movq	%rdi, -328(%rbp)
	movq	%rax, -320(%rbp)
	.p2align 4,,10
	.p2align 3
.L8:
	vmovups	48(%r15), %ymm1
#APP
# 25 "mm_mp.h" 1
	# ==================
# 0 "" 2
#NO_APP
	cmpq	$0, -80(%rbp)
	jle	.L16
	movq	(%r15), %rdx
	vmovaps	%ymm1, %ymm2
	vmovaps	%ymm1, %ymm3
	vmovaps	%ymm1, %ymm4
	movq	-368(%rbp), %rbx
	vmovaps	%ymm1, %ymm5
	vmovaps	%ymm1, %ymm6
	vmovaps	%ymm1, %ymm7
	movq	-344(%rbp), %rdi
	vmovaps	%ymm1, %ymm8
	movq	-376(%rbp), %r8
	movq	16(%rdx), %rsi
	movq	-352(%rbp), %r9
	movq	-384(%rbp), %r10
	movq	-360(%rbp), %r11
	imulq	%rsi, %rbx
	movq	8(%r15), %rax
	imulq	%rsi, %rdi
	movq	24(%rdx), %r13
	imulq	%rsi, %r8
	imulq	%rsi, %r9
	imulq	%rsi, %r10
	movq	16(%rax), %r12
	movq	%rbx, -112(%rbp)
	movq	-392(%rbp), %rbx
	imulq	%rsi, %r11
	movq	%rdi, %rdx
	movq	24(%rax), %rax
	movq	-80(%rbp), %rdi
	salq	$2, %r12
	imulq	%rsi, %rbx
	imulq	-176(%rbp), %rsi
	leaq	(%rax,%rcx,4), %rax
	movq	%rax, -144(%rbp)
	addq	%rsi, %rdi
	subq	%rsi, %rdx
	subq	%rsi, %rbx
	leaq	0(%r13,%rsi,4), %rax
	subq	%rsi, %r11
	subq	%rsi, %r10
	leaq	0(%r13,%rdi,4), %r13
	movq	-112(%rbp), %rdi
	subq	%rsi, %r9
	subq	%rsi, %r8
	subq	%rsi, %rdi
	movq	%rdx, %rsi
	movq	-144(%rbp), %rdx
	.p2align 4,,10
	.p2align 3
.L10:
	vmovups	(%rdx), %ymm0
	vmovups	%ymm0, 80(%r15)
#APP
# 29 "mm_mp.h" 1
	# temp
# 0 "" 2
#NO_APP
	vbroadcastss	(%rax), %ymm9
	addq	%r12, %rdx
	vfmadd231ps	%ymm0, %ymm9, %ymm8
	vbroadcastss	(%rax,%rbx,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm7
	vbroadcastss	(%rax,%r11,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm1
	vbroadcastss	(%rax,%r10,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm6
	vbroadcastss	(%rax,%r9,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm5
	vbroadcastss	(%rax,%r8,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm4
	vbroadcastss	(%rax,%rdi,4), %ymm9
	vfmadd231ps	%ymm0, %ymm9, %ymm3
	vbroadcastss	(%rax,%rsi,4), %ymm9
	addq	$4, %rax
	vfmadd231ps	%ymm0, %ymm9, %ymm2
	cmpq	%rax, %r13
	jne	.L10
.L9:
#APP
# 39 "mm_mp.h" 1
	# ------------------
# 0 "" 2
#NO_APP
	movq	-312(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm8, %ymm0
	vmovups	%ymm0, (%rax,%rcx,4)
	movq	-240(%rbp), %rax
	vaddps	(%r14,%rcx,4), %ymm7, %ymm0
	vmovups	%ymm0, (%r14,%rcx,4)
	vaddps	(%rax,%rcx,4), %ymm1, %ymm0
	vmovups	%ymm0, (%rax,%rcx,4)
	movq	-272(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm6, %ymm0
	vmovups	%ymm0, (%rax,%rcx,4)
	movq	-304(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm5, %ymm0
	vmovups	%ymm0, (%rax,%rcx,4)
	movq	-336(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm4, %ymm0
	vmovups	%ymm0, (%rax,%rcx,4)
	movq	-328(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm3, %ymm0
	vmovups	%ymm0, (%rax,%rcx,4)
	movq	-320(%rbp), %rax
	vaddps	(%rax,%rcx,4), %ymm2, %ymm0
	vmovups	%ymm0, (%rax,%rcx,4)
	addq	$8, %rcx
	cmpq	-208(%rbp), %rcx
	jl	.L8
.L7:
	addq	$8, -176(%rbp)
	movq	-176(%rbp), %rax
	cmpq	%rax, -400(%rbp)
	jg	.L5
	movq	%r15, %r14
.L3:
	vmovaps	%ymm2, -304(%rbp)
	vmovaps	%ymm3, -272(%rbp)
	vmovaps	%ymm4, -240(%rbp)
	vmovaps	%ymm5, -208(%rbp)
	vmovaps	%ymm6, -176(%rbp)
	vmovaps	%ymm1, -144(%rbp)
	vmovaps	%ymm7, -112(%rbp)
	vmovaps	%ymm8, -80(%rbp)
	vzeroupper
	call	GOMP_atomic_start
	vmovaps	-80(%rbp), %ymm8
	vmovaps	-112(%rbp), %ymm7
	vaddps	336(%r14), %ymm8, %ymm8
	vaddps	304(%r14), %ymm7, %ymm7
	vmovaps	-144(%rbp), %ymm1
	vmovaps	-176(%rbp), %ymm6
	vmovups	%ymm8, 336(%r14)
	vaddps	272(%r14), %ymm1, %ymm1
	vmovups	%ymm7, 304(%r14)
	vaddps	240(%r14), %ymm6, %ymm6
	vmovaps	-208(%rbp), %ymm5
	vmovaps	-240(%rbp), %ymm4
	vmovups	%ymm1, 272(%r14)
	vaddps	208(%r14), %ymm5, %ymm5
	vmovups	%ymm6, 240(%r14)
	vaddps	176(%r14), %ymm4, %ymm4
	vmovaps	-272(%rbp), %ymm3
	vmovaps	-304(%rbp), %ymm2
	vmovups	%ymm5, 208(%r14)
	vmovups	%ymm4, 176(%r14)
	vaddps	112(%r14), %ymm2, %ymm2
	vaddps	144(%r14), %ymm3, %ymm3
	vmovups	%ymm2, 112(%r14)
	vmovups	%ymm3, 144(%r14)
	vzeroupper
	addq	$360, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	.cfi_remember_state
	.cfi_def_cfa 13, 0
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-16(%r13), %rsp
	.cfi_def_cfa 7, 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	GOMP_atomic_end
.L16:
	.cfi_restore_state
	vmovaps	%ymm1, %ymm2
	vmovaps	%ymm1, %ymm3
	vmovaps	%ymm1, %ymm4
	vmovaps	%ymm1, %ymm5
	vmovaps	%ymm1, %ymm6
	vmovaps	%ymm1, %ymm7
	vmovaps	%ymm1, %ymm8
	jmp	.L9
.L12:
	vxorps	%xmm2, %xmm2, %xmm2
	vmovaps	%ymm2, %ymm3
	vmovaps	%ymm2, %ymm4
	vmovaps	%ymm2, %ymm5
	vmovaps	%ymm2, %ymm6
	vmovaps	%ymm2, %ymm1
	vmovaps	%ymm2, %ymm7
	vmovaps	%ymm2, %ymm8
	jmp	.L3
	.cfi_endproc
.LFE4883:
	.size	_Z2mmR6matrixS0_S0_._omp_fn.0, .-_Z2mmR6matrixS0_S0_._omp_fn.0
	.section	.text.unlikely
.LCOLDE0:
	.text
.LHOTE0:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC1:
	.string	"%d threads used.\n"
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.type	main._omp_fn.1, @function
main._omp_fn.1:
.LFB4884:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
	.cfi_lsda 0x3,.LLSDA4884
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	call	omp_get_thread_num
	movl	%eax, %ebx
	call	omp_get_num_threads
	testl	%ebx, %ebx
	je	.L22
	popq	%rbx
	.cfi_remember_state
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L22:
	.cfi_restore_state
	popq	%rbx
	.cfi_def_cfa_offset 8
	movl	%eax, %esi
	movl	$.LC1, %edi
	xorl	%eax, %eax
	jmp	printf
	.cfi_endproc
.LFE4884:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA4884:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE4884-.LLSDACSB4884
.LLSDACSB4884:
.LLSDACSE4884:
	.text
	.size	main._omp_fn.1, .-main._omp_fn.1
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
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
	jle	.L32
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
	.p2align 4,,10
	.p2align 3
.L31:
	testq	%r15, %r15
	jle	.L28
	leaq	(%r12,%r14,4), %rdi
	movq	%r13, %rdx
	xorl	%esi, %esi
	call	memset
.L28:
	addq	$1, %rbx
	addq	%r15, %r14
	cmpq	%rbx, %rbp
	jne	.L31
.L32:
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
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
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
	jle	.L45
	xorl	%ebp, %ebp
	.p2align 4,,10
	.p2align 3
.L43:
	xorl	%ebx, %ebx
	testq	%r12, %r12
	jle	.L40
	.p2align 4,,10
	.p2align 3
.L44:
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
	jne	.L44
.L40:
	addq	$1, %rbp
	cmpq	%rbp, 8(%rsp)
	jne	.L43
.L45:
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
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
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
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	_Z7add_regDv8_fS_
	.type	_Z7add_regDv8_fS_, @function
_Z7add_regDv8_fS_:
.LFB4875:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	vaddps	%ymm1, %ymm0, %ymm0
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r10
	.cfi_offset 10, -24
	popq	%r10
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4875:
	.size	_Z7add_regDv8_fS_, .-_Z7add_regDv8_fS_
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.globl	_Z7add_regU8__vectorfS_
	.set	_Z7add_regU8__vectorfS_,_Z7add_regDv8_fS_
	.section	.rodata.str1.1
.LC7:
	.string	"mm_mp.h"
.LC8:
	.string	"B.n_rows == K"
.LC9:
	.string	"C.n_rows == M"
.LC10:
	.string	"C.n_cols == N"
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	_Z2mmR6matrixS0_S0_
	.type	_Z2mmR6matrixS0_S0_, @function
_Z2mmR6matrixS0_S0_:
.LFB4877:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r10
	subq	$376, %rsp
	.cfi_offset 10, -24
	movq	(%rdi), %r8
	movq	8(%rdi), %rax
	movq	8(%rsi), %rcx
	cmpq	(%rsi), %rax
	jne	.L56
	cmpq	(%rdx), %r8
	jne	.L57
	cmpq	8(%rdx), %rcx
	jne	.L58
	movq	%rdi, -384(%rbp)
	movl	$_Z2mmR6matrixS0_S0_._omp_fn.0, %edi
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rsi, -376(%rbp)
	leaq	-384(%rbp), %rsi
	movq	%rdx, -368(%rbp)
	xorl	%edx, %edx
	movq	%rcx, -344(%rbp)
	xorl	%ecx, %ecx
	vmovups	%ymm0, -48(%rbp)
	vmovups	%ymm0, -80(%rbp)
	vmovups	%ymm0, -112(%rbp)
	vmovups	%ymm0, -144(%rbp)
	vmovups	%ymm0, -176(%rbp)
	vmovups	%ymm0, -208(%rbp)
	vmovups	%ymm0, -240(%rbp)
	vmovups	%ymm0, -272(%rbp)
	movq	%r8, -360(%rbp)
	movq	%rax, -352(%rbp)
	vmovups	%ymm0, -336(%rbp)
	vmovups	%ymm0, -304(%rbp)
	vzeroupper
	call	GOMP_parallel
	addq	$376, %rsp
	popq	%r10
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L56:
	.cfi_restore_state
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$15, %edx
	movl	$.LC7, %esi
	movl	$.LC8, %edi
	call	__assert_fail
.L58:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$17, %edx
	movl	$.LC7, %esi
	movl	$.LC10, %edi
	call	__assert_fail
.L57:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$16, %edx
	movl	$.LC7, %esi
	movl	$.LC9, %edi
	call	__assert_fail
	.cfi_endproc
.LFE4877:
	.size	_Z2mmR6matrixS0_S0_, .-_Z2mmR6matrixS0_S0_
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC13:
	.ascii	"usage:\n  %s [options]:"
	.string	"\nperform matrix matrix multiply of (M,N) += (M,K) * (K,N) \noptions:\n -M num : set M to num (%ld)\n -N num : set N to num (%ld)\n -K num : set K to num (%ld)\n -r num : repeat num times (%ld)\n -x X : set random seed to X, to change initial configuration (%ld)\n"
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	_Z4helpP9options_tPc
	.type	_Z4helpP9options_tPc, @function
_Z4helpP9options_tPc:
.LFB4878:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	%rsi, %rdx
	xorl	%eax, %eax
	pushq	32(%rdi)
	.cfi_def_cfa_offset 24
	movl	$.LC13, %esi
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
.LFE4878:
	.size	_Z4helpP9options_tPc, .-_Z4helpP9options_tPc
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.rodata.str1.1
.LC15:
	.string	"M:N:K:r:x:"
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	_Z10parse_argsiPPcP9options_t
	.type	_Z10parse_argsiPPcP9options_t, @function
_Z10parse_argsiPPcP9options_t:
.LFB4879:
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
.L62:
	movl	$.LC15, %edx
	movq	%rbp, %rsi
	movl	%r12d, %edi
	call	getopt
	cmpl	$77, %eax
	je	.L64
	jle	.L76
	cmpl	$114, %eax
	je	.L68
	cmpl	$120, %eax
	je	.L69
	cmpl	$78, %eax
	je	.L77
.L63:
	movq	stderr(%rip), %rdi
	movl	$.LC13, %esi
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
.L77:
	.cfi_restore_state
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 8(%rbx)
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L76:
	cmpl	$-1, %eax
	je	.L73
	cmpl	$75, %eax
	jne	.L63
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 16(%rbx)
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L73:
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
.L64:
	.cfi_restore_state
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, (%rbx)
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L69:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 32(%rbx)
	jmp	.L62
	.p2align 4,,10
	.p2align 3
.L68:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 24(%rbx)
	jmp	.L62
	.cfi_endproc
.LFE4879:
	.size	_Z10parse_argsiPPcP9options_t, .-_Z10parse_argsiPPcP9options_t
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.rodata.str1.1
.LC20:
	.string	"error: C(%ld,%ld) = %f != %f\n"
.LC21:
	.string	"OK: max relative error = %f\n"
	.section	.text.unlikely
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4,,15
	.globl	_Z5checkR6matrixS0_S0_l
	.type	_Z5checkR6matrixS0_S0_l, @function
_Z5checkR6matrixS0_S0_l:
.LFB4880:
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
.L84:
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
	jle	.L79
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
.L80:
	vmovss	(%rdi), %xmm5
	addq	$4, %rdi
	vfmadd231ss	(%r8), %xmm5, %xmm1
	addq	%r9, %r8
	cmpq	%r10, %rdi
	jne	.L80
.L79:
	movq	%r12, %rax
	movq	24(%rbp), %rcx
	vxorpd	%xmm4, %xmm4, %xmm4
	imulq	16(%rbp), %rax
	vmulss	12(%rsp), %xmm1, %xmm1
	addq	%rdx, %rax
	vmovss	(%rcx,%rax,4), %xmm3
	vsubss	%xmm1, %xmm3, %xmm2
	vdivss	%xmm1, %xmm2, %xmm2
	vandps	.LC18(%rip), %xmm2, %xmm2
	vcvtss2sd	%xmm2, %xmm4, %xmm4
	vucomisd	.LC19(%rip), %xmm4
	ja	.L92
	vmaxss	%xmm0, %xmm2, %xmm0
	subq	$1, %rbx
	jne	.L84
	movl	$.LC21, %edi
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
.L92:
	.cfi_restore_state
	movq	%rdx, %rcx
	movq	%r12, %rdx
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	movl	$.LC20, %esi
	movq	stderr(%rip), %rdi
	movl	$2, %eax
	vcvtss2sd	%xmm3, %xmm0, %xmm0
	call	fprintf
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE4880:
	.size	_Z5checkR6matrixS0_S0_l, .-_Z5checkR6matrixS0_S0_l
	.section	.text.unlikely
.LCOLDE22:
	.text
.LHOTE22:
	.section	.text.unlikely
.LCOLDB24:
	.text
.LHOTB24:
	.p2align 4,,15
	.globl	_Z8cur_timev
	.type	_Z8cur_timev, @function
_Z8cur_timev:
.LFB4881:
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
	vfmadd132sd	.LC23(%rip), %xmm1, %xmm0
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4881:
	.size	_Z8cur_timev, .-_Z8cur_timev
	.section	.text.unlikely
.LCOLDE24:
	.text
.LHOTE24:
	.section	.rodata.str1.1
.LC25:
	.string	"A = %ld x %ld (%ld bytes)\n"
.LC26:
	.string	"B = %ld x %ld (%ld bytes)\n"
.LC27:
	.string	"C = %ld x %ld (%ld bytes)\n"
.LC28:
	.string	"repeat C += A * B %ld times\n"
.LC29:
	.string	"%ld flops, total %ld bytes\n"
.LC30:
	.string	"%lld clocks\n"
.LC31:
	.string	"%f sec\n"
.LC32:
	.string	"%.3f flops/clock\n"
.LC33:
	.string	"%f GFLOPS\n"
.LC34:
	.string	"%.3f clocks/muladd\n"
	.section	.text.unlikely
.LCOLDB35:
	.section	.text.startup,"ax",@progbits
.LHOTB35:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB4882:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	leaq	-464(%rbp), %rdx
	pushq	%r13
	pushq	%r12
	pushq	%r10
	pushq	%rbx
	subq	$576, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 10, -56
	.cfi_offset 3, -64
	call	_Z10parse_argsiPPcP9options_t
	movl	$1, %edx
	testl	%eax, %eax
	jne	.L114
.L111:
	addq	$576, %rsp
	movl	%edx, %eax
	popq	%rbx
	popq	%r10
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L114:
	.cfi_restore_state
	movq	-432(%rbp), %rax
	leaq	-560(%rbp), %r12
	movq	-448(%rbp), %r15
	leaq	-576(%rbp), %rcx
	movq	%r12, %rdi
	movq	-464(%rbp), %r14
	leaq	-528(%rbp), %r13
	movq	%rax, %rdx
	movw	%ax, -572(%rbp)
	sarq	$32, %rdx
	movw	%dx, -576(%rbp)
	movq	%rax, %rdx
	movq	%r14, %rsi
	movq	-456(%rbp), %rax
	sarq	$16, %rdx
	movw	%dx, -574(%rbp)
	movq	%r15, %rdx
	movq	%rax, %rbx
	call	_Z4initR6matrixllPt
	movq	%rbx, %rdx
	movq	%r15, %rsi
	movq	%r13, %rdi
	leaq	-576(%rbp), %rcx
	movq	%rbx, -584(%rbp)
	call	_Z4initR6matrixllPt
	movq	-584(%rbp), %rdx
	leaq	-496(%rbp), %rbx
	movq	%r14, %rsi
	movq	%rbx, %rdi
	call	_Z4zeroR6matrixll
	movq	%r14, %rdx
	movq	-584(%rbp), %rdi
	imulq	%r15, %rdx
	leaq	0(,%rdx,4), %rax
	movq	%rdi, %rdx
	imulq	%r15, %rdx
	movq	%rax, -592(%rbp)
	leaq	(%r14,%r14), %rax
	imulq	%rdi, %rax
	leaq	0(,%rdx,4), %rcx
	movq	%rdi, %rdx
	movl	$main._omp_fn.1, %edi
	imulq	%r14, %rdx
	movq	%rcx, -600(%rbp)
	xorl	%ecx, %ecx
	imulq	%r15, %rax
	imulq	-440(%rbp), %rax
	leaq	0(,%rdx,4), %rsi
	xorl	%edx, %edx
	movq	%rsi, -616(%rbp)
	xorl	%esi, %esi
	movq	%rax, -608(%rbp)
	call	GOMP_parallel
	movq	%r15, %rdx
	movq	%r14, %rsi
	movl	$.LC25, %edi
	movq	-592(%rbp), %rcx
	xorl	%eax, %eax
	call	printf
	movq	%r15, %rsi
	movl	$.LC26, %edi
	xorl	%eax, %eax
	movq	-600(%rbp), %rcx
	movq	-584(%rbp), %rdx
	call	printf
	movq	%r14, %rsi
	movl	$.LC27, %edi
	xorl	%eax, %eax
	movq	-616(%rbp), %r15
	movq	-584(%rbp), %rdx
	movq	%r15, %rcx
	call	printf
	movq	-440(%rbp), %rsi
	movl	$.LC28, %edi
	xorl	%eax, %eax
	call	printf
	movq	-592(%rbp), %rdx
	movl	$.LC29, %edi
	xorl	%eax, %eax
	addq	-600(%rbp), %rdx
	movq	-608(%rbp), %rsi
	addq	%r15, %rdx
	call	printf
	leaq	-416(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	-416(%rbp), %xmm0, %xmm0
	vcvtsi2sdq	-408(%rbp), %xmm1, %xmm1
	vfmadd132sd	.LC23(%rip), %xmm0, %xmm1
	vmovsd	%xmm1, -584(%rbp)
	rdtsc
	salq	$32, %rdx
	movq	%rax, %r14
	orq	%rdx, %r14
	cmpq	$0, -440(%rbp)
	jle	.L105
	movq	-560(%rbp), %rcx
	movq	-552(%rbp), %rax
	movq	-520(%rbp), %rsi
	cmpq	-528(%rbp), %rax
	jne	.L101
	cmpq	-496(%rbp), %rcx
	jne	.L102
	movq	-488(%rbp), %rdx
	xorl	%r15d, %r15d
	cmpq	%rdx, %rsi
	je	.L109
	jmp	.L103
	.p2align 4,,10
	.p2align 3
.L110:
	movq	-560(%rbp), %rcx
	movq	-552(%rbp), %rax
	movq	-520(%rbp), %rdx
	cmpq	-528(%rbp), %rax
	jne	.L101
	cmpq	-496(%rbp), %rcx
	jne	.L102
	cmpq	-488(%rbp), %rdx
	jne	.L103
.L109:
	movq	%rcx, -392(%rbp)
	movl	$_Z2mmR6matrixS0_S0_._omp_fn.0, %edi
	xorl	%ecx, %ecx
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rdx, -376(%rbp)
	leaq	-416(%rbp), %rsi
	xorl	%edx, %edx
	vmovups	%ymm0, -80(%rbp)
	vmovups	%ymm0, -112(%rbp)
	vmovups	%ymm0, -144(%rbp)
	vmovups	%ymm0, -176(%rbp)
	vmovups	%ymm0, -208(%rbp)
	vmovups	%ymm0, -240(%rbp)
	vmovups	%ymm0, -272(%rbp)
	vmovups	%ymm0, -304(%rbp)
	movq	%r12, -416(%rbp)
	movq	%r13, -408(%rbp)
	movq	%rbx, -400(%rbp)
	movq	%rax, -384(%rbp)
	vmovups	%ymm0, -368(%rbp)
	vmovups	%ymm0, -336(%rbp)
	vzeroupper
	addq	$1, %r15
	call	GOMP_parallel
	cmpq	%r15, -440(%rbp)
	jg	.L110
.L105:
	rdtsc
	xorl	%edi, %edi
	leaq	-416(%rbp), %rsi
	salq	$32, %rdx
	movq	%rax, %r15
	orq	%rdx, %r15
	call	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	subq	%r14, %r15
	movq	%r15, %rsi
	movl	$.LC30, %edi
	xorl	%eax, %eax
	vcvtsi2sdq	-416(%rbp), %xmm1, %xmm1
	movq	%r15, %r14
	vcvtsi2sdq	-408(%rbp), %xmm0, %xmm0
	addq	%r15, %r14
	vfmadd132sd	.LC23(%rip), %xmm1, %xmm0
	vsubsd	-584(%rbp), %xmm0, %xmm4
	vmovsd	%xmm4, -584(%rbp)
	call	printf
	movl	$.LC31, %edi
	movl	$1, %eax
	vmovsd	-584(%rbp), %xmm0
	call	printf
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$.LC32, %edi
	vcvtsi2sdq	-608(%rbp), %xmm3, %xmm3
	movl	$1, %eax
	vcvtsi2sdq	%r15, %xmm0, %xmm0
	vmovsd	%xmm3, -592(%rbp)
	vdivsd	%xmm0, %xmm3, %xmm0
	call	printf
	movl	$.LC33, %edi
	movl	$1, %eax
	vmovsd	.LC23(%rip), %xmm6
	vmulsd	-592(%rbp), %xmm6, %xmm0
	vdivsd	-584(%rbp), %xmm0, %xmm0
	call	printf
	movl	$.LC34, %edi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%r14, %xmm0, %xmm0
	vdivsd	-592(%rbp), %xmm0, %xmm0
	call	printf
	movq	%rbx, %rdx
	movq	%r13, %rsi
	movq	%r12, %rdi
	movq	-440(%rbp), %rcx
	call	_Z5checkR6matrixS0_S0_l
	movq	-536(%rbp), %rdi
	call	free
	movq	-504(%rbp), %rdi
	call	free
	movq	-472(%rbp), %rdi
	call	free
	xorl	%edx, %edx
	jmp	.L111
.L101:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$15, %edx
	movl	$.LC7, %esi
	movl	$.LC8, %edi
	call	__assert_fail
.L102:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$16, %edx
	movl	$.LC7, %esi
	movl	$.LC9, %edi
	call	__assert_fail
.L103:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$17, %edx
	movl	$.LC7, %esi
	movl	$.LC10, %edi
	call	__assert_fail
	.cfi_endproc
.LFE4882:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE35:
	.section	.text.startup
.LHOTE35:
	.section	.rodata
	.align 32
	.type	_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, @object
	.size	_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, 35
_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__:
	.string	"void mm(matrix&, matrix&, matrix&)"
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC18:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC19:
	.long	3539053052
	.long	1062232653
	.align 8
.LC23:
	.long	3894859413
	.long	1041313291
	.ident	"GCC: (GNU) 5.4.0"
	.section	.note.GNU-stack,"",@progbits
