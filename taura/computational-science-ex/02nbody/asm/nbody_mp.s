	.file	"nbody.cc"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB1:
	.text
.LHOTB1:
	.p2align 4,,15
	.type	_Z12interact_alllP8particleP9particlevP9options_t._omp_fn.0, @function
_Z12interact_alllP8particleP9particlevP9options_t._omp_fn.0:
.LFB4960:
	.cfi_startproc
	.cfi_personality 0x3,__gxx_personality_v0
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
	subq	$160, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	(%rdi), %r13
	leaq	7(%r13), %rax
	testq	%r13, %r13
	cmovs	%rax, %r13
	call	omp_get_num_threads
	movslq	%eax, %rbx
	sarq	$3, %r13
	call	omp_get_thread_num
	movslq	%eax, %rcx
	movq	%r13, %rax
	cqto
	idivq	%rbx
	cmpq	%rdx, %rcx
	jge	.L10
	addq	$1, %rax
	xorl	%edx, %edx
.L10:
	imulq	%rax, %rcx
	vxorps	%xmm8, %xmm8, %xmm8
	leaq	(%rcx,%rdx), %rdi
	addq	%rdi, %rax
	movq	%rax, -208(%rbp)
	cmpq	%rax, %rdi
	jge	.L3
	movq	8(%r14), %r15
	leaq	(%rdi,%rdi,4), %rax
	leaq	(%rdi,%rax,2), %rax
	vmovups	16(%r14), %ymm14
	salq	$5, %rax
	leaq	256(%r15,%rax), %rdx
	.p2align 4,,10
	.p2align 3
.L5:
	vmovups	%ymm14, (%rdx)
	vmovups	%ymm14, 32(%rdx)
	vmovups	%ymm14, 64(%rdx)
	testq	%r13, %r13
	jle	.L8
	vmovss	48(%r14), %xmm9
	movl	%edi, %ebx
	vmovaps	%ymm14, %ymm7
	vmovaps	%ymm14, %ymm6
	vmovups	-192(%rdx), %ymm13
	vmovaps	%ymm14, %ymm5
	xorl	%r12d, %r12d
	vmulss	%xmm9, %xmm9, %xmm9
	vmovups	-160(%rdx), %ymm12
	vmovups	-128(%rdx), %ymm11
	leaq	128(%r15), %rsi
	vmovups	-224(%rdx), %ymm10
	vbroadcastss	%xmm9, %ymm9
	.p2align 4,,10
	.p2align 3
.L9:
	leaq	-32(%rsi), %r11
	movl	%r12d, %r8d
	xorl	%eax, %eax
	leaq	-64(%rsi), %r10
	leaq	-96(%rsi), %r9
	leaq	-144(%rbp), %rcx
	jmp	.L7
	.p2align 4,,10
	.p2align 3
.L6:
	vsubps	%ymm2, %ymm7, %ymm7
	addq	$4, %rax
	vmulps	%ymm10, %ymm4, %ymm4
	addq	$4, %rcx
	vsubps	%ymm1, %ymm6, %ymm6
	vfnmadd231ps	%ymm0, %ymm4, %ymm8
	vsubps	%ymm3, %ymm5, %ymm5
	vmovups	%ymm7, 64(%rdx)
	vmovups	%ymm6, 32(%rdx)
	vmovups	%ymm5, (%rdx)
	cmpq	$32, %rax
	je	.L18
.L7:
	vbroadcastss	(%rsi,%rax), %ymm2
	vbroadcastss	(%r11,%rax), %ymm1
	vbroadcastss	(%r10,%rax), %ymm3
	vsubps	%ymm2, %ymm11, %ymm2
	vsubps	%ymm1, %ymm12, %ymm1
	vbroadcastss	(%r9,%rax), %ymm4
	vsubps	%ymm3, %ymm13, %ymm3
	vmovaps	%ymm4, -176(%rbp)
	vmulps	%ymm1, %ymm1, %ymm0
	vfmadd231ps	%ymm3, %ymm3, %ymm0
	vfmadd231ps	%ymm2, %ymm2, %ymm0
	vaddps	%ymm9, %ymm0, %ymm0
	vrsqrtps	%ymm0, %ymm0
	vmulps	%ymm4, %ymm0, %ymm15
	vmulps	%ymm0, %ymm15, %ymm15
	vmulps	%ymm0, %ymm15, %ymm15
	vmulps	%ymm2, %ymm15, %ymm2
	vmulps	%ymm1, %ymm15, %ymm1
	vmulps	%ymm3, %ymm15, %ymm3
	vmovaps	%ymm1, -112(%rbp)
	vmovaps	%ymm3, -144(%rbp)
	vmovaps	%ymm2, -80(%rbp)
	cmpl	%ebx, %r8d
	jne	.L6
	movl	$0x00000000, (%rcx)
	movl	$0x00000000, 32(%rcx)
	movl	$0x00000000, 64(%rcx)
	vmovaps	-112(%rbp), %ymm1
	movl	$0x00000000, -176(%rbp,%rax)
	vmovaps	-144(%rbp), %ymm3
	vmovaps	-80(%rbp), %ymm2
	vmovaps	-176(%rbp), %ymm4
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L18:
	addq	$1, %r12
	addq	$352, %rsi
	cmpq	%r12, %r13
	jne	.L9
.L8:
	addq	$1, %rdi
	addq	$352, %rdx
	cmpq	%rdi, -208(%rbp)
	jne	.L5
.L3:
	vmovaps	%ymm8, -208(%rbp)
	vzeroupper
	call	GOMP_atomic_start
	vmovaps	-208(%rbp), %ymm8
	vaddps	52(%r14), %ymm8, %ymm8
	vmovups	%ymm8, 52(%r14)
	vzeroupper
	call	GOMP_atomic_end
	addq	$160, %rsp
	popq	%rbx
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4960:
	.size	_Z12interact_alllP8particleP9particlevP9options_t._omp_fn.0, .-_Z12interact_alllP8particleP9particlevP9options_t._omp_fn.0
	.section	.text.unlikely
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
	.p2align 4,,15
	.globl	_Z7get_tscv
	.type	_Z7get_tscv, @function
_Z7get_tscv:
.LFB4905:
	.cfi_startproc
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
	xorl	%edi, %edi
	movq	%rsp, %rsi
	call	clock_gettime
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
	imulq	$1000000000, (%rsp), %rdx
	addq	8(%rsp), %rdx
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4905:
	.size	_Z7get_tscv, .-_Z7get_tscv
	.section	.text.unlikely
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
	.p2align 4,,15
	.globl	_Z3diePKc
	.type	_Z3diePKc, @function
_Z3diePKc:
.LFB4906:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	call	perror
	movl	$1, %edi
	call	exit
	.cfi_endproc
.LFE4906:
	.size	_Z3diePKc, .-_Z3diePKc
	.section	.text.unlikely
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
	.p2align 4,,15
	.globl	_Zpl3vecS_
	.type	_Zpl3vecS_, @function
_Zpl3vecS_:
.LFB4916:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	vmovq	%xmm0, -48(%rbp)
	vmovq	%xmm2, -64(%rbp)
	vmovd	%xmm1, -40(%rbp)
	vmovss	-48(%rbp), %xmm2
	vmovd	%xmm3, -56(%rbp)
	vmovss	-40(%rbp), %xmm0
	vmovss	-44(%rbp), %xmm1
	vaddss	-56(%rbp), %xmm0, %xmm0
	vaddss	-60(%rbp), %xmm1, %xmm1
	vaddss	-64(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -24(%rbp)
	vmovss	%xmm1, -28(%rbp)
	vmovd	-24(%rbp), %xmm1
	vmovss	%xmm2, -32(%rbp)
	vmovq	-32(%rbp), %xmm0
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4916:
	.size	_Zpl3vecS_, .-_Zpl3vecS_
	.section	.text.unlikely
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
	.p2align 4,,15
	.globl	_Zpl4vecvS_
	.type	_Zpl4vecvS_, @function
_Zpl4vecvS_:
.LFB4917:
	.cfi_startproc
	pushq	%r10
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	vmovups	80(%rsp), %ymm0
	movq	%rdi, %rax
	leaq	16(%rsp), %r10
	vmovups	32(%r10), %ymm1
	vaddps	160(%r10), %ymm0, %ymm0
	vaddps	128(%r10), %ymm1, %ymm1
	vmovups	(%r10), %ymm2
	vaddps	96(%r10), %ymm2, %ymm2
	vmovups	%ymm0, 64(%rdi)
	vmovups	%ymm1, 32(%rdi)
	vmovups	%ymm2, (%rdi)
	vzeroupper
	popq	%r10
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4917:
	.size	_Zpl4vecvS_, .-_Zpl4vecvS_
	.section	.text.unlikely
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
	.p2align 4,,15
	.globl	_Zmi3vecS_
	.type	_Zmi3vecS_, @function
_Zmi3vecS_:
.LFB4918:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	vmovq	%xmm0, -48(%rbp)
	vmovq	%xmm2, -64(%rbp)
	vmovd	%xmm1, -40(%rbp)
	vmovss	-48(%rbp), %xmm2
	vmovd	%xmm3, -56(%rbp)
	vmovss	-40(%rbp), %xmm0
	vmovss	-44(%rbp), %xmm1
	vsubss	-56(%rbp), %xmm0, %xmm0
	vsubss	-60(%rbp), %xmm1, %xmm1
	vsubss	-64(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -24(%rbp)
	vmovss	%xmm1, -28(%rbp)
	vmovd	-24(%rbp), %xmm1
	vmovss	%xmm2, -32(%rbp)
	vmovq	-32(%rbp), %xmm0
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4918:
	.size	_Zmi3vecS_, .-_Zmi3vecS_
	.section	.text.unlikely
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
	.p2align 4,,15
	.globl	_Zmi4vecvS_
	.type	_Zmi4vecvS_, @function
_Zmi4vecvS_:
.LFB4919:
	.cfi_startproc
	pushq	%r10
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	vmovups	80(%rsp), %ymm0
	movq	%rdi, %rax
	leaq	16(%rsp), %r10
	vmovups	32(%r10), %ymm1
	vsubps	160(%r10), %ymm0, %ymm0
	vsubps	128(%r10), %ymm1, %ymm1
	vmovups	(%r10), %ymm2
	vsubps	96(%r10), %ymm2, %ymm2
	vmovups	%ymm0, 64(%rdi)
	vmovups	%ymm1, 32(%rdi)
	vmovups	%ymm2, (%rdi)
	vzeroupper
	popq	%r10
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4919:
	.size	_Zmi4vecvS_, .-_Zmi4vecvS_
	.section	.text.unlikely
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
	.p2align 4,,15
	.globl	_Z4set1f
	.type	_Z4set1f, @function
_Z4set1f:
.LFB4920:
	.cfi_startproc
	vbroadcastss	%xmm0, %ymm0
	ret
	.cfi_endproc
.LFE4920:
	.size	_Z4set1f, .-_Z4set1f
	.section	.text.unlikely
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
	.p2align 4,,15
	.globl	_Zmi3vec4vecv
	.type	_Zmi3vec4vecv, @function
_Zmi3vec4vecv:
.LFB4921:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rdi, %rax
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	vmovq	%xmm0, -32(%rbp)
	vmovd	%xmm1, -24(%rbp)
	vbroadcastss	-32(%rbp), %ymm2
	vbroadcastss	-24(%rbp), %ymm0
	vbroadcastss	-28(%rbp), %ymm1
	vsubps	64(%r10), %ymm0, %ymm0
	vsubps	32(%r10), %ymm1, %ymm1
	vsubps	(%r10), %ymm2, %ymm2
	vmovups	%ymm0, 64(%rdi)
	vmovups	%ymm1, 32(%rdi)
	vmovups	%ymm2, (%rdi)
	vzeroupper
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4921:
	.size	_Zmi3vec4vecv, .-_Zmi3vec4vecv
	.section	.text.unlikely
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
	.p2align 4,,15
	.globl	_Zmi4vecv3vec
	.type	_Zmi4vecv3vec, @function
_Zmi4vecv3vec:
.LFB4922:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	movq	%rdi, %rax
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	vmovq	%xmm0, -32(%rbp)
	vmovd	%xmm1, -24(%rbp)
	vmovups	64(%r10), %ymm0
	vbroadcastss	-24(%rbp), %ymm1
	vbroadcastss	-28(%rbp), %ymm2
	vsubps	%ymm1, %ymm0, %ymm0
	vmovups	32(%r10), %ymm1
	vbroadcastss	-32(%rbp), %ymm3
	vsubps	%ymm2, %ymm1, %ymm1
	vmovups	(%r10), %ymm2
	vmovups	%ymm0, 64(%rdi)
	vsubps	%ymm3, %ymm2, %ymm2
	vmovups	%ymm1, 32(%rdi)
	vmovups	%ymm2, (%rdi)
	vzeroupper
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4922:
	.size	_Zmi4vecv3vec, .-_Zmi4vecv3vec
	.section	.text.unlikely
.LCOLDE10:
	.text
.LHOTE10:
	.section	.text.unlikely
.LCOLDB11:
	.text
.LHOTB11:
	.p2align 4,,15
	.globl	_Zml3vecf
	.type	_Zml3vecf, @function
_Zml3vecf:
.LFB4923:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	vmovq	%xmm0, -48(%rbp)
	vmovd	%xmm1, -40(%rbp)
	vmulss	-44(%rbp), %xmm2, %xmm1
	vmulss	-40(%rbp), %xmm2, %xmm0
	vmulss	-48(%rbp), %xmm2, %xmm2
	vmovss	%xmm1, -28(%rbp)
	vmovss	%xmm0, -24(%rbp)
	vmovd	-24(%rbp), %xmm1
	vmovss	%xmm2, -32(%rbp)
	vmovq	-32(%rbp), %xmm0
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4923:
	.size	_Zml3vecf, .-_Zml3vecf
	.section	.text.unlikely
.LCOLDE11:
	.text
.LHOTE11:
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
	.p2align 4,,15
	.globl	_Zml4vecvDv8_f
	.type	_Zml4vecvDv8_f, @function
_Zml4vecvDv8_f:
.LFB4924:
	.cfi_startproc
	pushq	%r10
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	movq	%rdi, %rax
	vmulps	80(%rsp), %ymm0, %ymm1
	vmulps	48(%rsp), %ymm0, %ymm2
	leaq	16(%rsp), %r10
	vmulps	(%r10), %ymm0, %ymm0
	vmovups	%ymm2, 32(%rdi)
	vmovups	%ymm0, (%rdi)
	vmovups	%ymm1, 64(%rdi)
	vzeroupper
	popq	%r10
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4924:
	.size	_Zml4vecvDv8_f, .-_Zml4vecvDv8_f
	.section	.text.unlikely
.LCOLDE12:
	.text
.LHOTE12:
	.globl	_Zml4vecvU8__vectorf
	.set	_Zml4vecvU8__vectorf,_Zml4vecvDv8_f
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
	.p2align 4,,15
	.globl	_Zdv3vecf
	.type	_Zdv3vecf, @function
_Zdv3vecf:
.LFB4925:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	vmovq	%xmm0, -48(%rbp)
	vmovd	%xmm1, -40(%rbp)
	vmovss	.LC13(%rip), %xmm0
	vdivss	%xmm2, %xmm0, %xmm2
	vmulss	-40(%rbp), %xmm2, %xmm0
	vmulss	-44(%rbp), %xmm2, %xmm1
	vmulss	-48(%rbp), %xmm2, %xmm2
	vmovss	%xmm0, -24(%rbp)
	vmovss	%xmm1, -28(%rbp)
	vmovd	-24(%rbp), %xmm1
	vmovss	%xmm2, -32(%rbp)
	vmovq	-32(%rbp), %xmm0
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4925:
	.size	_Zdv3vecf, .-_Zdv3vecf
	.section	.text.unlikely
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
.LCOLDB15:
	.text
.LHOTB15:
	.p2align 4,,15
	.globl	_Z3dot3vecS_
	.type	_Z3dot3vecS_, @function
_Z3dot3vecS_:
.LFB4926:
	.cfi_startproc
	vmovq	%xmm0, -16(%rsp)
	vmovss	-12(%rsp), %xmm0
	vmovq	%xmm2, -32(%rsp)
	vmovss	-16(%rsp), %xmm4
	vmovd	%xmm1, -8(%rsp)
	vmulss	-28(%rsp), %xmm0, %xmm0
	vfmadd231ss	-32(%rsp), %xmm4, %xmm0
	vmovd	%xmm3, -24(%rsp)
	vmovss	-8(%rsp), %xmm5
	vfmadd231ss	-24(%rsp), %xmm5, %xmm0
	ret
	.cfi_endproc
.LFE4926:
	.size	_Z3dot3vecS_, .-_Z3dot3vecS_
	.section	.text.unlikely
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
	.p2align 4,,15
	.globl	_Z3dot4vecvS_
	.type	_Z3dot4vecvS_, @function
_Z3dot4vecvS_:
.LFB4927:
	.cfi_startproc
	pushq	%r10
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	vmovups	48(%rsp), %ymm0
	vmulps	144(%rsp), %ymm0, %ymm0
	leaq	16(%rsp), %r10
	vmovups	(%r10), %ymm1
	vmovups	64(%r10), %ymm2
	vfmadd231ps	96(%r10), %ymm1, %ymm0
	vfmadd231ps	160(%r10), %ymm2, %ymm0
	popq	%r10
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4927:
	.size	_Z3dot4vecvS_, .-_Z3dot4vecvS_
	.section	.text.unlikely
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
	.p2align 4,,15
	.globl	_Z5norm23vec
	.type	_Z5norm23vec, @function
_Z5norm23vec:
.LFB4928:
	.cfi_startproc
	vmovq	%xmm0, -16(%rsp)
	vmovss	-12(%rsp), %xmm2
	vmovd	%xmm1, -8(%rsp)
	vmovss	-16(%rsp), %xmm1
	vmulss	%xmm2, %xmm2, %xmm2
	vmovss	-8(%rsp), %xmm0
	vfmadd132ss	%xmm1, %xmm2, %xmm1
	vfmadd132ss	%xmm0, %xmm1, %xmm0
	ret
	.cfi_endproc
.LFE4928:
	.size	_Z5norm23vec, .-_Z5norm23vec
	.section	.text.unlikely
.LCOLDE17:
	.text
.LHOTE17:
	.section	.text.unlikely
.LCOLDB18:
	.text
.LHOTB18:
	.p2align 4,,15
	.globl	_Z6norm2v4vecv
	.type	_Z6norm2v4vecv, @function
_Z6norm2v4vecv:
.LFB4929:
	.cfi_startproc
	pushq	%r10
	.cfi_def_cfa_offset 16
	.cfi_offset 10, -16
	vmovups	16(%rsp), %ymm1
	leaq	16(%rsp), %r10
	vmovups	32(%r10), %ymm2
	vmovups	64(%r10), %ymm0
	vmulps	%ymm2, %ymm2, %ymm2
	popq	%r10
	.cfi_def_cfa_offset 8
	vfmadd132ps	%ymm1, %ymm2, %ymm1
	vfmadd132ps	%ymm0, %ymm1, %ymm0
	ret
	.cfi_endproc
.LFE4929:
	.size	_Z6norm2v4vecv, .-_Z6norm2v4vecv
	.section	.text.unlikely
.LCOLDE18:
	.text
.LHOTE18:
	.section	.text.unlikely
.LCOLDB19:
	.text
.LHOTB19:
	.p2align 4,,15
	.globl	_Z6rsqrtvDv8_f
	.type	_Z6rsqrtvDv8_f, @function
_Z6rsqrtvDv8_f:
.LFB4930:
	.cfi_startproc
	vrsqrtps	%ymm0, %ymm0
	ret
	.cfi_endproc
.LFE4930:
	.size	_Z6rsqrtvDv8_f, .-_Z6rsqrtvDv8_f
	.section	.text.unlikely
.LCOLDE19:
	.text
.LHOTE19:
	.globl	_Z6rsqrtvU8__vectorf
	.set	_Z6rsqrtvU8__vectorf,_Z6rsqrtvDv8_f
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	_Z5rsqrtf
	.type	_Z5rsqrtf, @function
_Z5rsqrtf:
.LFB4931:
	.cfi_startproc
	vbroadcastss	%xmm0, %ymm0
	vrsqrtps	%ymm0, %ymm0
	vzeroupper
	ret
	.cfi_endproc
.LFE4931:
	.size	_Z5rsqrtf, .-_Z5rsqrtf
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.text.unlikely
.LCOLDB21:
	.text
.LHOTB21:
	.p2align 4,,15
	.globl	_Z10interact2vP9particlevS0_fPDv8_fii
	.type	_Z10interact2vP9particlevS0_fPDv8_fii, @function
_Z10interact2vP9particlevS0_fPDv8_fii:
.LFB4932:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	xorl	%eax, %eax
	pushq	-8(%r10)
	vmulss	%xmm0, %xmm0, %xmm6
	pushq	%rbp
	leaq	128(%rsi), %r11
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r12
	leaq	64(%rsi), %r9
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x70,0x6
	.cfi_escape 0x10,0xc,0x2,0x76,0x78
	leaq	96(%rsi), %r10
	addq	$32, %rsi
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x68
	leaq	-144(%rbp), %rbx
	vbroadcastss	%xmm6, %ymm6
	leaq	32(%rbx), %r12
	subq	$32, %rsp
	addq	$64, %rbx
	jmp	.L52
	.p2align 4,,10
	.p2align 3
.L51:
	vmovups	320(%rdi), %ymm3
	addq	$4, %rax
	vmulps	32(%rdi), %ymm0, %ymm0
	vsubps	%ymm5, %ymm3, %ymm5
	vmovups	288(%rdi), %ymm3
	vsubps	%ymm4, %ymm3, %ymm4
	vmovups	256(%rdi), %ymm3
	vmovups	%ymm5, 320(%rdi)
	vsubps	%ymm2, %ymm3, %ymm2
	vmovups	%ymm4, 288(%rdi)
	vmovups	%ymm2, 256(%rdi)
	vfnmadd213ps	(%rdx), %ymm1, %ymm0
	vmovups	%ymm0, (%rdx)
	cmpq	$32, %rax
	je	.L55
.L52:
	vbroadcastss	(%r11,%rax), %ymm1
	vmovups	96(%rdi), %ymm2
	vmovups	128(%rdi), %ymm5
	vbroadcastss	(%r10,%rax), %ymm4
	vsubps	%ymm1, %ymm5, %ymm5
	vmovups	64(%rdi), %ymm1
	vsubps	%ymm4, %ymm2, %ymm4
	vbroadcastss	(%r9,%rax), %ymm2
	vbroadcastss	(%rsi,%rax), %ymm0
	vsubps	%ymm2, %ymm1, %ymm7
	vmulps	%ymm4, %ymm4, %ymm1
	vmovaps	%ymm0, -176(%rbp)
	vfmadd231ps	%ymm7, %ymm7, %ymm1
	vfmadd231ps	%ymm5, %ymm5, %ymm1
	vaddps	%ymm6, %ymm1, %ymm1
	vrsqrtps	%ymm1, %ymm1
	vmulps	%ymm0, %ymm1, %ymm3
	vmulps	%ymm1, %ymm3, %ymm3
	vmulps	%ymm1, %ymm3, %ymm2
	vmulps	%ymm5, %ymm2, %ymm5
	vmulps	%ymm4, %ymm2, %ymm4
	vmovaps	%ymm5, -80(%rbp)
	vmulps	%ymm7, %ymm2, %ymm2
	vmovaps	%ymm4, -112(%rbp)
	vmovaps	%ymm2, -144(%rbp)
	cmpl	%r8d, %ecx
	jne	.L51
	movl	$0x00000000, -144(%rax,%rbp)
	movl	$0x00000000, -176(%rbp,%rax)
	vmovaps	-176(%rbp), %ymm0
	movl	$0x00000000, (%r12,%rax)
	movl	$0x00000000, (%rbx,%rax)
	vmovaps	-144(%rbp), %ymm2
	vmovaps	-112(%rbp), %ymm4
	vmovaps	-80(%rbp), %ymm5
	jmp	.L51
	.p2align 4,,10
	.p2align 3
.L55:
	addq	$32, %rsp
	popq	%rbx
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%r12
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4932:
	.size	_Z10interact2vP9particlevS0_fPDv8_fii, .-_Z10interact2vP9particlevS0_fPDv8_fii
	.section	.text.unlikely
.LCOLDE21:
	.text
.LHOTE21:
	.globl	_Z10interact2vP9particlevS0_fPU8__vectorfii
	.set	_Z10interact2vP9particlevS0_fPU8__vectorfii,_Z10interact2vP9particlevS0_fPDv8_fii
	.section	.text.unlikely
.LCOLDB22:
	.text
.LHOTB22:
	.p2align 4,,15
	.globl	_Z7add_regDv8_fS_
	.type	_Z7add_regDv8_fS_, @function
_Z7add_regDv8_fS_:
.LFB4933:
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
.LFE4933:
	.size	_Z7add_regDv8_fS_, .-_Z7add_regDv8_fS_
	.section	.text.unlikely
.LCOLDE22:
	.text
.LHOTE22:
	.globl	_Z7add_regU8__vectorfS_
	.set	_Z7add_regU8__vectorfS_,_Z7add_regDv8_fS_
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC24:
	.string	"%d,%f\n"
	.section	.text.unlikely
.LCOLDB26:
	.text
.LHOTB26:
	.p2align 4,,15
	.globl	_Z12interact_alllP8particleP9particlevP9options_t
	.type	_Z12interact_alllP8particleP9particlevP9options_t, @function
_Z12interact_alllP8particleP9particlevP9options_t:
.LFB4935:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	vxorps	%xmm0, %xmm0, %xmm0
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	leaq	-112(%rbp), %rsi
	pushq	%rbx
	addq	$-128, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x70
	vmovss	28(%rcx), %xmm1
	movq	%rdi, -112(%rbp)
	xorl	%ecx, %ecx
	movq	%rdx, -104(%rbp)
	movl	$_Z12interact_alllP8particleP9particlevP9options_t._omp_fn.0, %edi
	xorl	%edx, %edx
	vmovups	%ymm0, -60(%rbp)
	vmovups	%ymm0, -96(%rbp)
	vmovss	%xmm1, -64(%rbp)
	vzeroupper
	call	GOMP_parallel
	movq	-104(%rbp), %rbx
	xorl	%esi, %esi
	movl	$.LC24, %edi
	vmovups	-60(%rbp), %ymm0
	movl	$1, %eax
	vmovups	%ymm0, -144(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	64(%rbx), %xmm0, %xmm0
	vzeroupper
	call	printf
	xorl	%esi, %esi
	movl	$.LC24, %edi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	160(%rbx), %xmm0, %xmm0
	call	printf
	xorl	%esi, %esi
	movl	$.LC24, %edi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	256(%rbx), %xmm0, %xmm0
	call	printf
	vxorps	%xmm0, %xmm0, %xmm0
	vaddss	-144(%rbp), %xmm0, %xmm0
	vaddss	-140(%rbp), %xmm0, %xmm0
	vaddss	-136(%rbp), %xmm0, %xmm0
	vaddss	-132(%rbp), %xmm0, %xmm0
	vaddss	-128(%rbp), %xmm0, %xmm0
	vaddss	-124(%rbp), %xmm0, %xmm0
	vaddss	-120(%rbp), %xmm0, %xmm0
	vaddss	-116(%rbp), %xmm0, %xmm0
	vmulss	.LC25(%rip), %xmm0, %xmm0
	subq	$-128, %rsp
	popq	%rbx
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4935:
	.size	_Z12interact_alllP8particleP9particlevP9options_t, .-_Z12interact_alllP8particleP9particlevP9options_t
	.section	.text.unlikely
.LCOLDE26:
	.text
.LHOTE26:
	.section	.text.unlikely
.LCOLDB28:
	.text
.LHOTB28:
	.p2align 4,,15
	.globl	_Z7kineticlP8particleP9particlev
	.type	_Z7kineticlP8particleP9particlev, @function
_Z7kineticlP8particleP9particlev:
.LFB4936:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	testq	%rdi, %rdi
	vxorps	%xmm0, %xmm0, %xmm0
	pushq	-8(%r10)
	leaq	7(%rdi), %rax
	pushq	%rbp
	cmovs	%rax, %rdi
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	sarq	$3, %rdi
	vmovaps	%ymm0, -48(%rbp)
	testq	%rdi, %rdi
	jle	.L63
	leaq	(%rdi,%rdi,4), %rcx
	vmovaps	%ymm0, %ymm3
	vmovaps	.LC27(%rip), %ymm5
	leaq	(%rdi,%rcx,2), %rcx
	leaq	32(%rdx), %rax
	salq	$5, %rcx
	leaq	32(%rdx,%rcx), %rdx
	.p2align 4,,10
	.p2align 3
.L62:
	vmovups	128(%rax), %ymm1
	vmulps	(%rax), %ymm5, %ymm4
	addq	$352, %rax
	vmovups	-192(%rax), %ymm2
	vmovups	-160(%rax), %ymm0
	vmulps	%ymm2, %ymm2, %ymm2
	vfmadd132ps	%ymm1, %ymm2, %ymm1
	vfmadd132ps	%ymm0, %ymm1, %ymm0
	vfmadd231ps	%ymm0, %ymm4, %ymm3
	cmpq	%rax, %rdx
	jne	.L62
	vmovaps	%ymm3, -48(%rbp)
.L63:
	vxorps	%xmm0, %xmm0, %xmm0
	vaddss	-48(%rbp), %xmm0, %xmm0
	vaddss	-44(%rbp), %xmm0, %xmm0
	vaddss	-40(%rbp), %xmm0, %xmm0
	vaddss	-36(%rbp), %xmm0, %xmm0
	vaddss	-32(%rbp), %xmm0, %xmm0
	vaddss	-28(%rbp), %xmm0, %xmm0
	vaddss	-24(%rbp), %xmm0, %xmm0
	vaddss	-20(%rbp), %xmm0, %xmm0
	vzeroupper
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4936:
	.size	_Z7kineticlP8particleP9particlev, .-_Z7kineticlP8particleP9particlev
	.section	.text.unlikely
.LCOLDE28:
	.text
.LHOTE28:
	.section	.text.unlikely
.LCOLDB29:
	.text
.LHOTB29:
	.p2align 4,,15
	.globl	_Z6updatelP8particleP9particlevf
	.type	_Z6updatelP8particleP9particlevf, @function
_Z6updatelP8particleP9particlevf:
.LFB4937:
	.cfi_startproc
	leaq	7(%rdi), %rax
	testq	%rdi, %rdi
	cmovs	%rax, %rdi
	sarq	$3, %rdi
	testq	%rdi, %rdi
	jle	.L72
	leaq	(%rdi,%rdi,4), %rcx
	vbroadcastss	%xmm0, %ymm1
	leaq	(%rdi,%rcx,2), %rcx
	leaq	160(%rdx), %rax
	salq	$5, %rcx
	leaq	160(%rdx,%rcx), %rdx
	.p2align 4,,10
	.p2align 3
.L70:
	vmovups	160(%rax), %ymm2
	addq	$352, %rax
	vfmadd213ps	-288(%rax), %ymm1, %ymm2
	vmovups	%ymm2, -288(%rax)
	vmovups	-224(%rax), %ymm3
	vfmadd213ps	-384(%rax), %ymm1, %ymm2
	vfmadd213ps	-320(%rax), %ymm1, %ymm3
	vmovups	%ymm2, -384(%rax)
	vmovups	-256(%rax), %ymm4
	vmovups	%ymm3, -320(%rax)
	vfmadd213ps	-352(%rax), %ymm1, %ymm4
	vfmadd213ps	-416(%rax), %ymm1, %ymm3
	vmovups	%ymm4, -352(%rax)
	vfmadd213ps	-448(%rax), %ymm1, %ymm4
	vmovups	%ymm3, -416(%rax)
	vmovups	%ymm4, -448(%rax)
	cmpq	%rax, %rdx
	jne	.L70
	vzeroupper
.L72:
	ret
	.cfi_endproc
.LFE4937:
	.size	_Z6updatelP8particleP9particlevf, .-_Z6updatelP8particleP9particlevf
	.section	.text.unlikely
.LCOLDE29:
	.text
.LHOTE29:
	.section	.text.unlikely
.LCOLDB30:
	.text
.LHOTB30:
	.p2align 4,,15
	.globl	_Z8mpi_initPiPPPc
	.type	_Z8mpi_initPiPPPc, @function
_Z8mpi_initPiPPPc:
.LFB4938:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE4938:
	.size	_Z8mpi_initPiPPPc, .-_Z8mpi_initPiPPPc
	.section	.text.unlikely
.LCOLDE30:
	.text
.LHOTE30:
	.section	.text.unlikely
.LCOLDB31:
	.text
.LHOTB31:
	.p2align 4,,15
	.globl	_Z12mpi_finalizev
	.type	_Z12mpi_finalizev, @function
_Z12mpi_finalizev:
.LFB4939:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE4939:
	.size	_Z12mpi_finalizev, .-_Z12mpi_finalizev
	.section	.text.unlikely
.LCOLDE31:
	.text
.LHOTE31:
	.section	.text.unlikely
.LCOLDB32:
	.text
.LHOTB32:
	.p2align 4,,15
	.globl	_Z12get_mpi_rankv
	.type	_Z12get_mpi_rankv, @function
_Z12get_mpi_rankv:
.LFB4940:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE4940:
	.size	_Z12get_mpi_rankv, .-_Z12get_mpi_rankv
	.section	.text.unlikely
.LCOLDE32:
	.text
.LHOTE32:
	.section	.text.unlikely
.LCOLDB33:
	.text
.LHOTB33:
	.p2align 4,,15
	.globl	_Z14get_mpi_nprocsv
	.type	_Z14get_mpi_nprocsv, @function
_Z14get_mpi_nprocsv:
.LFB4941:
	.cfi_startproc
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE4941:
	.size	_Z14get_mpi_nprocsv, .-_Z14get_mpi_nprocsv
	.section	.text.unlikely
.LCOLDE33:
	.text
.LHOTE33:
	.section	.text.unlikely
.LCOLDB34:
	.text
.LHOTB34:
	.p2align 4,,15
	.globl	_Z9bcast_ptrPv
	.type	_Z9bcast_ptrPv, @function
_Z9bcast_ptrPv:
.LFB4942:
	.cfi_startproc
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE4942:
	.size	_Z9bcast_ptrPv, .-_Z9bcast_ptrPv
	.section	.text.unlikely
.LCOLDE34:
	.text
.LHOTE34:
	.section	.text.unlikely
.LCOLDB35:
	.text
.LHOTB35:
	.p2align 4,,15
	.globl	_Z16gather_particleslP8particleP9options_t
	.type	_Z16gather_particleslP8particleP9options_t, @function
_Z16gather_particleslP8particleP9options_t:
.LFB4962:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE4962:
	.size	_Z16gather_particleslP8particleP9options_t, .-_Z16gather_particleslP8particleP9options_t
	.section	.text.unlikely
.LCOLDE35:
	.text
.LHOTE35:
	.section	.text.unlikely
.LCOLDB36:
	.text
.LHOTB36:
	.p2align 4,,15
	.globl	_Z14sync_particleslP8particleP9options_t
	.type	_Z14sync_particleslP8particleP9options_t, @function
_Z14sync_particleslP8particleP9options_t:
.LFB4944:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE4944:
	.size	_Z14sync_particleslP8particleP9options_t, .-_Z14sync_particleslP8particleP9options_t
	.section	.text.unlikely
.LCOLDE36:
	.text
.LHOTE36:
	.section	.text.unlikely
.LCOLDB39:
	.text
.LHOTB39:
	.p2align 4,,15
	.globl	_Z4ballPfPt
	.type	_Z4ballPfPt, @function
_Z4ballPfPt:
.LFB4945:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$1000, %r13d
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rdi, %r12
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movq	%rsi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$24, %rsp
	.cfi_def_cfa_offset 64
	.p2align 4,,10
	.p2align 3
.L83:
	xorl	%ebx, %ebx
	vxorps	%xmm1, %xmm1, %xmm1
.L81:
	movq	%rbp, %rdi
	vmovss	%xmm1, 12(%rsp)
	call	erand48
	vmovss	12(%rsp), %xmm1
	vmovsd	.LC38(%rip), %xmm2
	vfmadd132sd	.LC37(%rip), %xmm2, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r12,%rbx,4)
	addq	$1, %rbx
	vfmadd231ss	%xmm0, %xmm0, %xmm1
	cmpq	$3, %rbx
	jne	.L81
	vmovss	.LC13(%rip), %xmm3
	vucomiss	%xmm1, %xmm3
	ja	.L86
	subl	$1, %r13d
	jne	.L83
.L86:
	addq	$24, %rsp
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE4945:
	.size	_Z4ballPfPt, .-_Z4ballPfPt
	.section	.text.unlikely
.LCOLDE39:
	.text
.LHOTE39:
	.section	.text.unlikely
.LCOLDB41:
	.text
.LHOTB41:
	.p2align 4,,15
	.globl	_Z8gaussianPt
	.type	_Z8gaussianPt, @function
_Z8gaussianPt:
.LFB4946:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L96:
	movq	%rbx, %rdi
	call	erand48
	movq	%rbx, %rdi
	vxorps	%xmm2, %xmm2, %xmm2
	vmovsd	.LC38(%rip), %xmm3
	vfmadd132sd	.LC37(%rip), %xmm3, %xmm0
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, (%rsp)
	call	erand48
	vmovss	(%rsp), %xmm2
	vxorps	%xmm5, %xmm5, %xmm5
	vmovsd	.LC38(%rip), %xmm4
	vfmadd132sd	.LC37(%rip), %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vfmadd231ss	%xmm2, %xmm2, %xmm0
	vucomiss	%xmm5, %xmm0
	jbe	.L96
	vmovss	.LC13(%rip), %xmm6
	vucomiss	%xmm0, %xmm6
	jbe	.L96
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm0, %xmm1, %xmm1
	vmovapd	%xmm1, %xmm0
	vmovss	%xmm2, 12(%rsp)
	vmovsd	%xmm1, (%rsp)
	call	log
	vmovsd	(%rsp), %xmm1
	vmulsd	.LC40(%rip), %xmm0, %xmm0
	vmovss	12(%rsp), %xmm2
	vdivsd	%xmm1, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L98
.L92:
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm0, %xmm2, %xmm0
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	ret
.L98:
	.cfi_restore_state
	vmovapd	%xmm1, %xmm0
	vmovss	%xmm2, (%rsp)
	call	sqrt
	vmovss	(%rsp), %xmm2
	jmp	.L92
	.cfi_endproc
.LFE4946:
	.size	_Z8gaussianPt, .-_Z8gaussianPt
	.section	.text.unlikely
.LCOLDE41:
	.text
.LHOTE41:
	.section	.text.unlikely
.LCOLDB42:
	.text
.LHOTB42:
	.p2align 4,,15
	.globl	_Z5initvlP8particleP9particlev
	.type	_Z5initvlP8particleP9particlev, @function
_Z5initvlP8particleP9particlev:
.LFB4947:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L107
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	xorl	%ecx, %ecx
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	.p2align 4,,10
	.p2align 3
.L103:
	movl	%ecx, %eax
	vmovss	4(%rsi), %xmm0
	addq	$8, %rcx
	addq	$352, %rsi
	sarl	$3, %eax
	cltq
	leaq	(%rax,%rax,4), %r8
	leaq	(%rax,%r8,2), %rax
	movl	-352(%rsi), %r8d
	salq	$5, %rax
	addq	%rdx, %rax
	vmovss	%xmm0, 32(%rax)
	vmovss	-344(%rsi), %xmm0
	movl	%r8d, (%rax)
	movl	-308(%rsi), %r8d
	vmovss	%xmm0, -112(%rbp)
	vmovss	-340(%rsi), %xmm0
	vmovss	%xmm0, -80(%rbp)
	vmovss	-336(%rsi), %xmm0
	movl	%r8d, 4(%rax)
	movl	-264(%rsi), %r8d
	vmovss	%xmm0, -48(%rbp)
	vmovss	-304(%rsi), %xmm0
	vmovss	%xmm0, 36(%rax)
	vmovss	-300(%rsi), %xmm0
	vmovss	%xmm0, -108(%rbp)
	vmovss	-296(%rsi), %xmm0
	vmovss	%xmm0, -76(%rbp)
	vmovss	-292(%rsi), %xmm0
	movl	%r8d, 8(%rax)
	movl	-220(%rsi), %r8d
	vmovss	%xmm0, -44(%rbp)
	vmovss	-260(%rsi), %xmm0
	vmovss	%xmm0, 40(%rax)
	vmovss	-256(%rsi), %xmm0
	vmovss	%xmm0, -104(%rbp)
	vmovss	-252(%rsi), %xmm0
	vmovss	%xmm0, -72(%rbp)
	vmovss	-248(%rsi), %xmm0
	movl	%r8d, 12(%rax)
	vmovss	%xmm0, -40(%rbp)
	vmovss	-216(%rsi), %xmm0
	movl	-176(%rsi), %r8d
	vmovss	%xmm0, 44(%rax)
	vmovss	-212(%rsi), %xmm0
	vmovss	%xmm0, -100(%rbp)
	vmovss	-208(%rsi), %xmm0
	vmovss	%xmm0, -68(%rbp)
	vmovss	-204(%rsi), %xmm0
	movl	%r8d, 16(%rax)
	movl	-132(%rsi), %r8d
	vmovss	%xmm0, -36(%rbp)
	vmovss	-172(%rsi), %xmm0
	vmovss	%xmm0, 48(%rax)
	vmovss	-168(%rsi), %xmm0
	vmovss	%xmm0, -96(%rbp)
	vmovss	-164(%rsi), %xmm0
	vmovss	%xmm0, -64(%rbp)
	vmovss	-160(%rsi), %xmm0
	movl	%r8d, 20(%rax)
	movl	-88(%rsi), %r8d
	vmovss	%xmm0, -32(%rbp)
	vmovss	-128(%rsi), %xmm0
	vmovss	%xmm0, 52(%rax)
	vmovss	-124(%rsi), %xmm0
	vmovss	%xmm0, -92(%rbp)
	vmovss	-120(%rsi), %xmm0
	vmovss	%xmm0, -60(%rbp)
	vmovss	-116(%rsi), %xmm0
	movl	%r8d, 24(%rax)
	vmovss	%xmm0, -28(%rbp)
	vmovss	-84(%rsi), %xmm0
	vmovss	%xmm0, 56(%rax)
	vmovss	-80(%rsi), %xmm0
	movl	-44(%rsi), %r8d
	vmovss	%xmm0, -88(%rbp)
	vmovss	-76(%rsi), %xmm0
	vmovss	%xmm0, -56(%rbp)
	vmovss	-72(%rsi), %xmm0
	movl	%r8d, 28(%rax)
	vmovss	%xmm0, -24(%rbp)
	vmovss	-40(%rsi), %xmm0
	vmovss	%xmm0, 60(%rax)
	vmovss	-36(%rsi), %xmm0
	vmovss	%xmm0, -84(%rbp)
	vmovss	-32(%rsi), %xmm0
	vmovss	%xmm0, -52(%rbp)
	vmovss	-28(%rsi), %xmm0
	vmovss	%xmm0, -20(%rbp)
	vmovaps	-112(%rbp), %ymm0
	vmovups	%ymm0, 64(%rax)
	vmovaps	-80(%rbp), %ymm0
	vmovups	%ymm0, 96(%rax)
	vmovaps	-48(%rbp), %ymm0
	vmovups	%ymm0, 128(%rax)
	vmovss	-332(%rsi), %xmm0
	vmovss	%xmm0, -112(%rbp)
	vmovss	-328(%rsi), %xmm0
	vmovss	%xmm0, -80(%rbp)
	vmovss	-324(%rsi), %xmm0
	vmovss	%xmm0, -48(%rbp)
	vmovss	-288(%rsi), %xmm0
	vmovss	%xmm0, -108(%rbp)
	vmovss	-284(%rsi), %xmm0
	vmovss	%xmm0, -76(%rbp)
	vmovss	-280(%rsi), %xmm0
	vmovss	%xmm0, -44(%rbp)
	vmovss	-244(%rsi), %xmm0
	vmovss	%xmm0, -104(%rbp)
	vmovss	-240(%rsi), %xmm0
	vmovss	%xmm0, -72(%rbp)
	vmovss	-236(%rsi), %xmm0
	vmovss	%xmm0, -40(%rbp)
	vmovss	-200(%rsi), %xmm0
	vmovss	%xmm0, -100(%rbp)
	vmovss	-196(%rsi), %xmm0
	vmovss	%xmm0, -68(%rbp)
	vmovss	-192(%rsi), %xmm0
	vmovss	%xmm0, -36(%rbp)
	vmovss	-156(%rsi), %xmm0
	vmovss	%xmm0, -96(%rbp)
	vmovss	-152(%rsi), %xmm0
	vmovss	%xmm0, -64(%rbp)
	vmovss	-148(%rsi), %xmm0
	vmovss	%xmm0, -32(%rbp)
	vmovss	-112(%rsi), %xmm0
	vmovss	%xmm0, -92(%rbp)
	vmovss	-108(%rsi), %xmm0
	vmovss	%xmm0, -60(%rbp)
	vmovss	-104(%rsi), %xmm0
	vmovss	%xmm0, -28(%rbp)
	vmovss	-68(%rsi), %xmm0
	vmovss	%xmm0, -88(%rbp)
	vmovss	-64(%rsi), %xmm0
	vmovss	%xmm0, -56(%rbp)
	vmovss	-60(%rsi), %xmm0
	vmovss	%xmm0, -24(%rbp)
	vmovss	-24(%rsi), %xmm0
	vmovss	%xmm0, -84(%rbp)
	vmovss	-20(%rsi), %xmm0
	vmovss	%xmm0, -52(%rbp)
	vmovss	-16(%rsi), %xmm0
	vmovss	%xmm0, -20(%rbp)
	vmovaps	-112(%rbp), %ymm0
	vmovups	%ymm0, 160(%rax)
	vmovaps	-80(%rbp), %ymm0
	vmovups	%ymm0, 192(%rax)
	vmovaps	-48(%rbp), %ymm0
	vmovups	%ymm0, 224(%rax)
	vmovss	-320(%rsi), %xmm0
	vmovss	%xmm0, -112(%rbp)
	vmovss	-316(%rsi), %xmm0
	vmovss	%xmm0, -80(%rbp)
	vmovss	-312(%rsi), %xmm0
	vmovss	%xmm0, -48(%rbp)
	vmovss	-276(%rsi), %xmm0
	vmovss	%xmm0, -108(%rbp)
	vmovss	-272(%rsi), %xmm0
	vmovss	%xmm0, -76(%rbp)
	vmovss	-268(%rsi), %xmm0
	vmovss	%xmm0, -44(%rbp)
	vmovss	-232(%rsi), %xmm0
	vmovss	%xmm0, -104(%rbp)
	vmovss	-228(%rsi), %xmm0
	vmovss	%xmm0, -72(%rbp)
	vmovss	-224(%rsi), %xmm0
	vmovss	%xmm0, -40(%rbp)
	vmovss	-188(%rsi), %xmm0
	vmovss	%xmm0, -100(%rbp)
	vmovss	-184(%rsi), %xmm0
	vmovss	%xmm0, -68(%rbp)
	vmovss	-180(%rsi), %xmm0
	vmovss	%xmm0, -36(%rbp)
	vmovss	-144(%rsi), %xmm0
	vmovss	%xmm0, -96(%rbp)
	vmovss	-140(%rsi), %xmm0
	vmovss	%xmm0, -64(%rbp)
	vmovss	-136(%rsi), %xmm0
	vmovss	%xmm0, -32(%rbp)
	vmovss	-100(%rsi), %xmm0
	vmovss	%xmm0, -92(%rbp)
	vmovss	-96(%rsi), %xmm0
	vmovss	%xmm0, -60(%rbp)
	vmovss	-92(%rsi), %xmm0
	vmovss	%xmm0, -28(%rbp)
	vmovss	-56(%rsi), %xmm0
	vmovss	%xmm0, -88(%rbp)
	vmovss	-52(%rsi), %xmm0
	vmovss	%xmm0, -56(%rbp)
	vmovss	-48(%rsi), %xmm0
	vmovss	%xmm0, -24(%rbp)
	vmovss	-12(%rsi), %xmm0
	vmovss	%xmm0, -84(%rbp)
	vmovss	-8(%rsi), %xmm0
	vmovss	%xmm0, -52(%rbp)
	vmovss	-4(%rsi), %xmm0
	vmovss	%xmm0, -20(%rbp)
	vmovaps	-112(%rbp), %ymm0
	vmovups	%ymm0, 256(%rax)
	vmovaps	-80(%rbp), %ymm0
	vmovups	%ymm0, 288(%rax)
	vmovaps	-48(%rbp), %ymm0
	vmovups	%ymm0, 320(%rax)
	cmpq	%rcx, %rdi
	jg	.L103
	vzeroupper
	popq	%r10
	.cfi_restore 10
	.cfi_def_cfa 10, 0
	popq	%rbp
	.cfi_restore 6
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
.L107:
	ret
	.cfi_endproc
.LFE4947:
	.size	_Z5initvlP8particleP9particlev, .-_Z5initvlP8particleP9particlev
	.section	.text.unlikely
.LCOLDE42:
	.text
.LHOTE42:
	.section	.text.unlikely
.LCOLDB46:
	.text
.LHOTB46:
	.p2align 4,,15
	.globl	_Z4initlP8particleP9particlevP9options_t
	.type	_Z4initlP8particleP9particlevP9options_t, @function
_Z4initlP8particleP9particlevP9options_t:
.LFB4948:
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
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$224, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	64(%rcx), %rax
	movq	%rdx, -256(%rbp)
	movq	%rdi, -240(%rbp)
	movq	%rsi, -248(%rbp)
	movq	%rcx, -264(%rbp)
	movq	%rax, %rdx
	movw	%ax, -188(%rbp)
	sarq	$32, %rdx
	movw	%dx, -192(%rbp)
	movq	%rax, %rdx
	sarq	$16, %rdx
	movw	%dx, -190(%rbp)
	testq	%rdi, %rdi
	jle	.L128
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rdi, %xmm1, %xmm1
	vxorps	%xmm6, %xmm6, %xmm6
	xorl	%r14d, %r14d
	vmovsd	.LC43(%rip), %xmm0
	leaq	8(%rsi), %r12
	leaq	-192(%rbp), %rbx
	vdivsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm6, %xmm6
	vmovss	%xmm6, -232(%rbp)
	vxorps	%xmm6, %xmm6, %xmm6
	vmovss	%xmm6, -220(%rbp)
	vmovss	%xmm6, -228(%rbp)
	vmovsd	.LC37(%rip), %xmm6
	vmovsd	%xmm6, -200(%rbp)
	vmovsd	.LC38(%rip), %xmm6
	vmovsd	%xmm6, -208(%rbp)
	vmovss	.LC13(%rip), %xmm6
	vmovss	%xmm6, -224(%rbp)
	.p2align 4,,10
	.p2align 3
.L113:
	vmovss	-232(%rbp), %xmm6
	movl	%r14d, -8(%r12)
	movl	$1000, %r13d
	vmovss	%xmm6, -4(%r12)
	vaddss	-228(%rbp), %xmm6, %xmm6
	vmovss	%xmm6, -228(%rbp)
	.p2align 4,,10
	.p2align 3
.L112:
	xorl	%r15d, %r15d
	vxorps	%xmm1, %xmm1, %xmm1
.L110:
	movq	%rbx, %rdi
	vmovss	%xmm1, -216(%rbp)
	call	erand48
	vmovss	-216(%rbp), %xmm1
	vmovsd	-208(%rbp), %xmm6
	vfmadd132sd	-200(%rbp), %xmm6, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r12,%r15,4)
	addq	$1, %r15
	vfmadd231ss	%xmm0, %xmm0, %xmm1
	cmpq	$3, %r15
	jne	.L110
	vmovss	-224(%rbp), %xmm5
	vucomiss	%xmm1, %xmm5
	ja	.L111
	subl	$1, %r13d
	jne	.L112
	.p2align 4,,10
	.p2align 3
.L111:
	addq	$1, %r14
	addq	$44, %r12
	cmpq	%r14, -240(%rbp)
	jne	.L113
	movq	-248(%rbp), %rsi
	movq	-240(%rbp), %rbx
.L109:
	movq	-256(%rbp), %r15
	movq	%rbx, %rdi
	movq	%r15, %rdx
	call	_Z5initvlP8particleP9particlev
	movq	-264(%rbp), %r14
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	leaq	-144(%rbp), %rsi
	movl	$_Z12interact_alllP8particleP9particlevP9options_t._omp_fn.0, %edi
	vxorps	%xmm0, %xmm0, %xmm0
	movq	%rbx, -144(%rbp)
	vmovups	%ymm0, -92(%rbp)
	movq	%r15, -136(%rbp)
	vmovss	28(%r14), %xmm1
	vmovups	%ymm0, -128(%rbp)
	vmovss	%xmm1, -96(%rbp)
	vzeroupper
	call	GOMP_parallel
	movq	-136(%rbp), %rbx
	xorl	%esi, %esi
	movl	$.LC24, %edi
	vmovups	-92(%rbp), %ymm0
	movl	$1, %eax
	vmovups	%ymm0, -176(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	64(%rbx), %xmm0, %xmm0
	vzeroupper
	call	printf
	xorl	%esi, %esi
	movl	$.LC24, %edi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	160(%rbx), %xmm0, %xmm0
	call	printf
	xorl	%esi, %esi
	movl	$.LC24, %edi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	256(%rbx), %xmm0, %xmm0
	call	printf
	vmovss	24(%r14), %xmm1
	vmovss	-220(%rbp), %xmm6
	vmovss	.LC44(%rip), %xmm2
	vaddss	-176(%rbp), %xmm6, %xmm0
	vaddss	%xmm1, %xmm1, %xmm1
	vmovss	-228(%rbp), %xmm6
	vaddss	-172(%rbp), %xmm0, %xmm0
	vaddss	-168(%rbp), %xmm0, %xmm0
	vaddss	-164(%rbp), %xmm0, %xmm0
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vaddss	-160(%rbp), %xmm0, %xmm0
	vaddss	-156(%rbp), %xmm0, %xmm0
	vaddss	-152(%rbp), %xmm0, %xmm0
	vaddss	-148(%rbp), %xmm0, %xmm0
	vmulss	.LC25(%rip), %xmm0, %xmm0
	vandps	%xmm2, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulsd	%xmm0, %xmm1, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vmulss	.LC45(%rip), %xmm6, %xmm2
	vcvtss2sd	%xmm2, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L142
.L114:
	cmpq	$0, -240(%rbp)
	vxorps	%xmm6, %xmm6, %xmm6
	vcvtsd2ss	%xmm0, %xmm6, %xmm6
	vmovss	%xmm6, -232(%rbp)
	jle	.L124
	vmovsd	.LC37(%rip), %xmm6
	xorl	%r14d, %r14d
	movq	-248(%rbp), %rax
	leaq	-192(%rbp), %rbx
	vmovsd	%xmm6, -200(%rbp)
	vmovsd	.LC38(%rip), %xmm6
	vmovsd	%xmm6, -208(%rbp)
	vmovss	.LC13(%rip), %xmm6
	leaq	32(%rax), %r13
	vmovss	%xmm6, -224(%rbp)
	.p2align 4,,10
	.p2align 3
.L125:
	leaq	-12(%r13), %r12
	.p2align 4,,10
	.p2align 3
.L137:
	movq	%rbx, %rdi
	call	erand48
	movq	%rbx, %rdi
	vxorps	%xmm2, %xmm2, %xmm2
	vmovsd	-208(%rbp), %xmm4
	vfmadd132sd	-200(%rbp), %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, -216(%rbp)
	call	erand48
	vmovsd	-208(%rbp), %xmm4
	vfmadd132sd	-200(%rbp), %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vmovss	-216(%rbp), %xmm2
	vfmadd231ss	%xmm2, %xmm2, %xmm0
	vucomiss	-220(%rbp), %xmm0
	jbe	.L137
	vmovss	-224(%rbp), %xmm7
	vucomiss	%xmm0, %xmm7
	jbe	.L137
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm0, %xmm1, %xmm1
	vmovapd	%xmm1, %xmm0
	vmovss	%xmm2, -228(%rbp)
	vmovsd	%xmm1, -216(%rbp)
	call	log
	vmovsd	-216(%rbp), %xmm1
	vmulsd	.LC40(%rip), %xmm0, %xmm0
	vmovss	-228(%rbp), %xmm2
	vdivsd	%xmm1, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L143
.L121:
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm0, %xmm2, %xmm0
	addq	$4, %r12
	movl	$0x00000000, 8(%r12)
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	-232(%rbp), %xmm0, %xmm0
	vmovss	%xmm0, -4(%r12)
	cmpq	%r13, %r12
	jne	.L137
	addq	$1, %r14
	addq	$44, %r13
	cmpq	%r14, -240(%rbp)
	jne	.L125
.L124:
	testb	$7, -240(%rbp)
	je	.L126
	movq	-240(%rbp), %rdx
	movq	-248(%rbp), %rcx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rdx,%rax,2), %rax
	leaq	(%rcx,%rax,4), %rax
	.p2align 4,,10
	.p2align 3
.L127:
	movl	%edx, (%rax)
	addq	$1, %rdx
	addq	$44, %rax
	movl	$0x00000000, -40(%rax)
	movl	$0x00000000, -36(%rax)
	movl	$0x00000000, -24(%rax)
	movl	$0x00000000, -12(%rax)
	movl	$0x00000000, -32(%rax)
	movl	$0x00000000, -20(%rax)
	movl	$0x00000000, -8(%rax)
	movl	$0x00000000, -28(%rax)
	movl	$0x00000000, -16(%rax)
	movl	$0x00000000, -4(%rax)
	testb	$7, %dl
	jne	.L127
.L126:
	movq	-256(%rbp), %rdx
	movq	-248(%rbp), %rsi
	movq	-240(%rbp), %rdi
	call	_Z5initvlP8particleP9particlev
	addq	$224, %rsp
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
.L143:
	.cfi_restore_state
	vmovapd	%xmm1, %xmm0
	vmovss	%xmm2, -216(%rbp)
	call	sqrt
	vmovss	-216(%rbp), %xmm2
	jmp	.L121
.L128:
	vxorps	%xmm6, %xmm6, %xmm6
	movq	%rdi, %rbx
	vmovss	%xmm6, -220(%rbp)
	vmovss	%xmm6, -228(%rbp)
	jmp	.L109
.L142:
	vmovapd	%xmm1, %xmm0
	call	sqrt
	jmp	.L114
	.cfi_endproc
.LFE4948:
	.size	_Z4initlP8particleP9particlevP9options_t, .-_Z4initlP8particleP9particlevP9options_t
	.section	.text.unlikely
.LCOLDE46:
	.text
.LHOTE46:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC47:
	.string	"step: %ld t: %.9f T: %.9f n: %ld U: %f K: %f U+K: %f\n"
	.align 8
.LC48:
	.string	"%ld m: %f pos: %f %f %f vel: %f %f %f acc: %f %f %f\n"
	.section	.text.unlikely
.LCOLDB49:
	.text
.LHOTB49:
	.p2align 4,,15
	.globl	_Z15dump_config_txtlfflP8particleffP8_IO_FILE
	.type	_Z15dump_config_txtlfflP8particleffP8_IO_FILE, @function
_Z15dump_config_txtlfflP8particleffP8_IO_FILE:
.LFB4949:
	.cfi_startproc
	vaddss	%xmm3, %xmm2, %xmm4
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	movl	$5, %eax
	movq	%rsi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	movq	%rcx, %r12
	movq	%rsi, %rcx
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	movl	$.LC47, %esi
	vcvtss2sd	%xmm3, %xmm3, %xmm3
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	movq	%rdx, %rbx
	movq	%rdi, %rdx
	movq	%r12, %rdi
	subq	$8, %rsp
	.cfi_def_cfa_offset 48
	vcvtss2sd	%xmm4, %xmm4, %xmm4
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	addq	$4, %rbx
	call	fprintf
	xorl	%ebp, %ebp
	testq	%r13, %r13
	jle	.L146
	.p2align 4,,10
	.p2align 3
.L148:
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rbp, %rdx
	vcvtss2sd	36(%rbx), %xmm1, %xmm1
	vcvtss2sd	(%rbx), %xmm0, %xmm0
	movl	$.LC48, %esi
	movq	%r12, %rdi
	addq	$1, %rbp
	vxorpd	%xmm7, %xmm7, %xmm7
	vxorpd	%xmm6, %xmm6, %xmm6
	vxorpd	%xmm5, %xmm5, %xmm5
	vxorpd	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	addq	$44, %rbx
	vmovsd	%xmm1, 8(%rsp)
	movl	$8, %eax
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	-12(%rbx), %xmm1, %xmm1
	vmovsd	%xmm1, (%rsp)
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	-16(%rbx), %xmm7, %xmm7
	vcvtss2sd	-20(%rbx), %xmm6, %xmm6
	vcvtss2sd	-24(%rbx), %xmm5, %xmm5
	vcvtss2sd	-28(%rbx), %xmm4, %xmm4
	vcvtss2sd	-32(%rbx), %xmm3, %xmm3
	vcvtss2sd	-36(%rbx), %xmm2, %xmm2
	vcvtss2sd	-40(%rbx), %xmm1, %xmm1
	call	fprintf
	popq	%rax
	.cfi_def_cfa_offset 56
	popq	%rdx
	.cfi_def_cfa_offset 48
	cmpq	%rbp, %r13
	jne	.L148
.L146:
	addq	$8, %rsp
	.cfi_def_cfa_offset 40
	movq	%r12, %rdi
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	jmp	fflush
	.cfi_endproc
.LFE4949:
	.size	_Z15dump_config_txtlfflP8particleffP8_IO_FILE, .-_Z15dump_config_txtlfflP8particleffP8_IO_FILE
	.section	.text.unlikely
.LCOLDE49:
	.text
.LHOTE49:
	.section	.rodata.str1.1
.LC50:
	.string	"fwrite"
	.section	.text.unlikely
.LCOLDB51:
	.text
.LHOTB51:
	.p2align 4,,15
	.globl	_Z11dump_configlfflP8particleffP8_IO_FILE
	.type	_Z11dump_configlfflP8particleffP8_IO_FILE, @function
_Z11dump_configlfflP8particleffP8_IO_FILE:
.LFB4950:
	.cfi_startproc
	pushq	%r13
	.cfi_def_cfa_offset 16
	.cfi_offset 13, -16
	vmovq	%rdi, %xmm5
	vunpcklps	%xmm3, %xmm2, %xmm2
	vunpcklps	%xmm1, %xmm0, %xmm1
	pushq	%r12
	.cfi_def_cfa_offset 24
	.cfi_offset 12, -24
	vmovlhps	%xmm2, %xmm1, %xmm1
	vpinsrq	$1, %rsi, %xmm5, %xmm4
	pushq	%rbp
	.cfi_def_cfa_offset 32
	.cfi_offset 6, -32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	.cfi_offset 3, -40
	subq	$88, %rsp
	.cfi_def_cfa_offset 128
	vmovaps	%xmm4, (%rsp)
	vmovaps	%xmm1, 16(%rsp)
	testq	%rsi, %rsi
	jle	.L156
	movq	%rcx, %r13
	movq	%rsi, %r12
	xorl	%ebp, %ebp
	leaq	4(%rdx), %rbx
	.p2align 4,,10
	.p2align 3
.L155:
	movq	4(%rbx), %rax
	movq	%r13, %rcx
	movl	$1, %edx
	movq	%rsp, %rdi
	vmovss	(%rbx), %xmm0
	movl	$80, %esi
	movq	%rbp, 32(%rsp)
	vmovss	%xmm0, 40(%rsp)
	movq	%rax, 44(%rsp)
	movl	12(%rbx), %eax
	movl	%eax, 52(%rsp)
	movq	16(%rbx), %rax
	movq	%rax, 56(%rsp)
	movl	24(%rbx), %eax
	movl	%eax, 64(%rsp)
	movq	28(%rbx), %rax
	movq	%rax, 68(%rsp)
	movl	36(%rbx), %eax
	movl	%eax, 76(%rsp)
	call	fwrite
	cmpq	$1, %rax
	jne	.L158
	addq	$1, %rbp
	addq	$44, %rbx
	cmpq	%rbp, %r12
	jne	.L155
.L156:
	addq	$88, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%rbp
	.cfi_def_cfa_offset 24
	popq	%r12
	.cfi_def_cfa_offset 16
	popq	%r13
	.cfi_def_cfa_offset 8
	ret
.L158:
	.cfi_restore_state
	movl	$.LC50, %edi
	call	_Z3diePKc
	.cfi_endproc
.LFE4950:
	.size	_Z11dump_configlfflP8particleffP8_IO_FILE, .-_Z11dump_configlfflP8particleffP8_IO_FILE
	.section	.text.unlikely
.LCOLDE51:
	.text
.LHOTE51:
	.section	.rodata.str1.8
	.align 8
.LC52:
	.ascii	"usage:\n  %s [options]:\noptions:\n -n N : simulate N partic"
	.ascii	"les (%ld)\n -t dt : time step (%f)\n -T T : simulation end t"
	.ascii	"ime (%f)\n -s N : simulate N steps (%ld)\n -r rv : virial ra"
	.ascii	"tio (%f)\n"
	.string	" -e eps : softening parameter (%f)\n -o FILE : dump output to FILE (%s)\n -d A:B:C : dump between step A up to step B-1, with interval C (i.e., dump at step A, A+C, A+2C, ...) (%ld:%ld:%ld)\n -x X : set random seed to X, to change initial configuration (%ld)\n"
	.section	.text.unlikely
.LCOLDB53:
	.text
.LHOTB53:
	.p2align 4,,15
	.globl	_Z4helpP9options_tPc
	.type	_Z4helpP9options_tPc, @function
_Z4helpP9options_tPc:
.LFB4954:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	48(%rdi), %rax
	movq	%rsi, %rdx
	movq	56(%rdi), %rcx
	movq	64(%rdi), %rsi
	cmpq	$-1, %rax
	je	.L160
	movq	8(%rdi), %r8
.L161:
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	16(%rdi), %xmm0, %xmm0
	pushq	%rsi
	.cfi_def_cfa_offset 24
	vxorpd	%xmm3, %xmm3, %xmm3
	pushq	%rcx
	.cfi_def_cfa_offset 32
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	$.LC52, %esi
	pushq	%rax
	.cfi_def_cfa_offset 40
	movl	$4, %eax
	pushq	40(%rdi)
	.cfi_def_cfa_offset 48
	vcvtss2sd	28(%rdi), %xmm3, %xmm3
	movq	32(%rdi), %r9
	vcvtss2sd	24(%rdi), %xmm2, %xmm2
	vcvtss2sd	20(%rdi), %xmm1, %xmm1
	movq	(%rdi), %rcx
	movq	stderr(%rip), %rdi
	call	fprintf
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.p2align 4,,10
	.p2align 3
.L160:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rax
	movq	%rax, %r8
	jmp	.L161
	.cfi_endproc
.LFE4954:
	.size	_Z4helpP9options_tPc, .-_Z4helpP9options_tPc
	.section	.text.unlikely
.LCOLDE53:
	.text
.LHOTE53:
	.section	.rodata.str1.8
	.align 8
.LC54:
	.string	"error: malformed dump interval %s (valid form: a, a:b, a:b:c)\n"
	.section	.text.unlikely
.LCOLDB55:
	.text
.LHOTB55:
	.p2align 4,,15
	.globl	_Z10parse_dumpPcP9options_t
	.type	_Z10parse_dumpPcP9options_t, @function
_Z10parse_dumpPcP9options_t:
.LFB4955:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	movl	$58, %esi
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	movq	%rdi, %rbp
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$8, %rsp
	.cfi_def_cfa_offset 64
	call	strchr
	testq	%rax, %rax
	je	.L164
	movq	%rax, %r13
	movq	%rax, %rbx
	addq	$1, %r13
	je	.L164
	movl	$58, %esi
	movq	%r13, %rdi
	call	strchr
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L165
	leaq	1(%rax), %r15
	movq	%rbx, %rax
	subq	%rbp, %rax
	testq	%rax, %rax
	jle	.L167
.L166:
	movsbl	0(%rbp), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	.L173
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	strtol
	movq	%rax, 40(%r14)
.L167:
	testq	%r15, %r15
	je	.L170
	subq	%r13, %r12
	testq	%r12, %r12
	jle	.L171
.L170:
	movsbl	1(%rbx), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	.L173
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	strtol
	movq	%rax, 48(%r14)
	testq	%r15, %r15
	je	.L193
.L171:
	movsbl	(%r15), %eax
	testb	%al, %al
	je	.L193
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	.L194
.L173:
	movq	stderr(%rip), %rdi
	movq	%rbp, %rdx
	movl	$.LC54, %esi
	xorl	%eax, %eax
	call	fprintf
	addq	$8, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 56
	xorl	%eax, %eax
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
	.p2align 4,,10
	.p2align 3
.L164:
	.cfi_restore_state
	movsbl	0(%rbp), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	.L173
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	strtol
	movq	%rax, 40(%r14)
.L193:
	movl	$1, %eax
.L195:
	addq	$8, %rsp
	.cfi_remember_state
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
	.p2align 4,,10
	.p2align 3
.L194:
	.cfi_restore_state
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%r15, %rdi
	call	strtol
	movq	%rax, 56(%r14)
	movl	$1, %eax
	jmp	.L195
.L165:
	movq	%rbx, %rax
	xorl	%r15d, %r15d
	subq	%rbp, %rax
	testq	%rax, %rax
	jg	.L166
	jmp	.L170
	.cfi_endproc
.LFE4955:
	.size	_Z10parse_dumpPcP9options_t, .-_Z10parse_dumpPcP9options_t
	.section	.text.unlikely
.LCOLDE55:
	.text
.LHOTE55:
	.section	.text.unlikely
.LCOLDB56:
	.text
.LHOTB56:
	.p2align 4,,15
	.globl	_Z12set_defaultsP9options_t
	.type	_Z12set_defaultsP9options_t, @function
_Z12set_defaultsP9options_t:
.LFB4956:
	.cfi_startproc
	movq	8(%rdi), %rax
	testq	%rax, %rax
	jne	.L197
	vmovss	20(%rdi), %xmm0
	vdivss	16(%rdi), %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	movq	%rax, 8(%rdi)
.L197:
	cmpq	$-1, 48(%rdi)
	je	.L200
	ret
	.p2align 4,,10
	.p2align 3
.L200:
	movq	%rax, 48(%rdi)
	ret
	.cfi_endproc
.LFE4956:
	.size	_Z12set_defaultsP9options_t, .-_Z12set_defaultsP9options_t
	.section	.text.unlikely
.LCOLDE56:
	.text
.LHOTE56:
	.section	.rodata.str1.1
.LC60:
	.string	"n:s:t:T:r:e:o:d:x:vp"
	.section	.text.unlikely
.LCOLDB61:
	.text
.LHOTB61:
	.p2align 4,,15
	.globl	_Z10parse_argsiPPcP9options_t
	.type	_Z10parse_argsiPPcP9options_t, @function
_Z10parse_argsiPPcP9options_t:
.LFB4957:
	.cfi_startproc
	vmovdqa	.LC59(%rip), %ymm0
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	.cfi_offset 13, -24
	movl	%edi, %r13d
	pushq	%r12
	.cfi_offset 12, -32
	movq	%rsi, %r12
	pushq	%r10
	pushq	%rbx
	.cfi_offset 10, -40
	.cfi_offset 3, -48
	movq	%rdx, %rbx
	movq	$1024, (%rdx)
	movq	$0, 8(%rdx)
	movl	$0x3a83126f, 16(%rdx)
	movl	$0x3dcccccd, 20(%rdx)
	movl	$0x3f000000, 24(%rdx)
	movl	$0x3a83126f, 28(%rdx)
	movq	$0, 32(%rdx)
	vmovdqu	%ymm0, 40(%rdx)
	vzeroupper
	.p2align 4,,10
	.p2align 3
.L202:
	movl	$.LC60, %edx
	movq	%r12, %rsi
	movl	%r13d, %edi
	call	getopt
	cmpl	$110, %eax
	je	.L204
	jle	.L228
	cmpl	$115, %eax
	je	.L211
	jg	.L212
	cmpl	$111, %eax
	je	.L213
	cmpl	$114, %eax
	jne	.L203
	movq	optarg(%rip), %rdi
	xorl	%esi, %esi
	call	strtod
	vxorps	%xmm6, %xmm6, %xmm6
	vcvtsd2ss	%xmm0, %xmm6, %xmm6
	vmovss	%xmm6, 24(%rbx)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L228:
	cmpl	$84, %eax
	je	.L206
	jle	.L229
	cmpl	$100, %eax
	je	.L209
	cmpl	$101, %eax
	jne	.L203
	movq	optarg(%rip), %rdi
	xorl	%esi, %esi
	call	strtod
	vxorps	%xmm7, %xmm7, %xmm7
	vcvtsd2ss	%xmm0, %xmm7, %xmm7
	vmovss	%xmm7, 28(%rbx)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L212:
	cmpl	$116, %eax
	je	.L215
	cmpl	$120, %eax
	jne	.L203
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 64(%rbx)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L229:
	cmpl	$-1, %eax
	jne	.L203
	movq	8(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L217
	vmovss	20(%rbx), %xmm0
	vdivss	16(%rbx), %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rdx
	movq	%rdx, 8(%rbx)
.L217:
	cmpq	$-1, 48(%rbx)
	movl	$1, %eax
	je	.L230
.L226:
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r10
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
	.p2align 4,,10
	.p2align 3
.L203:
	.cfi_restore_state
	movq	48(%rbx), %rax
	movq	(%r12), %rdx
	movq	64(%rbx), %rsi
	movq	56(%rbx), %rcx
	cmpq	$-1, %rax
	je	.L220
	movq	8(%rbx), %r8
.L221:
	pushq	%rsi
	movq	32(%rbx), %r9
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm3, %xmm3, %xmm3
	pushq	%rcx
	movq	(%rbx), %rcx
	vcvtss2sd	16(%rbx), %xmm0, %xmm0
	vcvtss2sd	28(%rbx), %xmm3, %xmm3
	pushq	%rax
	movq	stderr(%rip), %rdi
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	pushq	40(%rbx)
	movl	$.LC52, %esi
	vcvtss2sd	24(%rbx), %xmm2, %xmm2
	vcvtss2sd	20(%rbx), %xmm1, %xmm1
	movl	$4, %eax
	call	fprintf
	addq	$32, %rsp
	movl	$1, %edi
	call	exit
	.p2align 4,,10
	.p2align 3
.L211:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 8(%rbx)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L204:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, (%rbx)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L213:
	movq	optarg(%rip), %rdi
	call	strdup
	movq	%rax, 32(%rbx)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L206:
	movq	optarg(%rip), %rdi
	xorl	%esi, %esi
	call	strtod
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtsd2ss	%xmm0, %xmm5, %xmm5
	vmovss	%xmm5, 20(%rbx)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L209:
	movq	optarg(%rip), %rdi
	movq	%rbx, %rsi
	call	_Z10parse_dumpPcP9options_t
	testl	%eax, %eax
	jne	.L202
	jmp	.L226
	.p2align 4,,10
	.p2align 3
.L215:
	movq	optarg(%rip), %rdi
	xorl	%esi, %esi
	call	strtod
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsd2ss	%xmm0, %xmm4, %xmm4
	vmovss	%xmm4, 16(%rbx)
	jmp	.L202
	.p2align 4,,10
	.p2align 3
.L220:
	movq	8(%rbx), %rax
	movq	%rax, %r8
	jmp	.L221
	.p2align 4,,10
	.p2align 3
.L230:
	movq	%rdx, 48(%rbx)
	leaq	-32(%rbp), %rsp
	popq	%rbx
	popq	%r10
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4957:
	.size	_Z10parse_argsiPPcP9options_t, .-_Z10parse_argsiPPcP9options_t
	.section	.text.unlikely
.LCOLDE61:
	.text
.LHOTE61:
	.section	.rodata.str1.1
.LC62:
	.string	"None"
	.section	.rodata.str1.8
	.align 8
.LC63:
	.string	"n_particles: %ld, n_steps: %ld, dt: %f, T: %f, rv: %f, eps: %f, output: %s, dump: %ld:%ld:%ld, seed: %ld\n"
	.section	.rodata.str1.1
.LC64:
	.string	"-"
.LC65:
	.string	"w"
.LC66:
	.string	"fopen"
	.section	.rodata.str1.8
	.align 8
.LC68:
	.string	"iteration: %ld\nsync: %lld clocks = %f sec\ninteract_all: %lld clocks = %f sec\nkinetic: %lld clocks = %f sec\nupdate: %lld clocks = %f sec\n"
	.section	.rodata.str1.1
.LC69:
	.string	"interact_all: %f ppi/clocks\n"
.LC70:
	.string	"iteration: %f ppi/clocks\n"
.LC71:
	.string	"clock frequency: %f GHz\n"
.LC72:
	.string	"U= %f, K=%f\n\n"
	.section	.rodata.str1.8
	.align 8
.LC73:
	.string	"all iterations: %f ppi/clocks\n"
	.section	.text.unlikely
.LCOLDB74:
	.text
.LHOTB74:
	.p2align 4,,15
	.globl	_Z8mpi_mainiPPc
	.type	_Z8mpi_mainiPPc, @function
_Z8mpi_mainiPPc:
.LFB4958:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	leaq	-224(%rbp), %rdx
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	subq	$512, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	call	_Z10parse_argsiPPcP9options_t
	testl	%eax, %eax
	jne	.L276
.L275:
	movl	$1, %eax
.L273:
	leaq	-48(%rbp), %rsp
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
	.p2align 4,,10
	.p2align 3
.L276:
	.cfi_restore_state
	movq	-224(%rbp), %rax
	movl	$32, %esi
	movq	-216(%rbp), %rcx
	leaq	-232(%rbp), %rdi
	vmovss	-208(%rbp), %xmm5
	vmovss	-204(%rbp), %xmm7
	movq	%rax, %r14
	movq	%rax, -264(%rbp)
	addq	$14, %rax
	vmovss	-200(%rbp), %xmm6
	movq	%r14, %rbx
	vmovss	-196(%rbp), %xmm4
	movq	%rcx, %r13
	vmovss	%xmm5, -248(%rbp)
	addq	$7, %rbx
	vmovss	%xmm7, -244(%rbp)
	cmovns	%rbx, %rax
	vmovss	%xmm6, -256(%rbp)
	vmovss	%xmm4, -304(%rbp)
	sarq	$3, %rax
	movq	%rcx, -344(%rbp)
	leaq	(%rax,%rax,4), %rdx
	leaq	(%rax,%rdx,2), %r12
	salq	$5, %r12
	movq	%r12, %rdx
	call	posix_memalign
	xorl	%ecx, %ecx
	movq	%r12, %rdx
	movl	$32, %esi
	leaq	-240(%rbp), %rdi
	testl	%eax, %eax
	movq	%rcx, %rax
	cmove	-232(%rbp), %rax
	xorl	%r15d, %r15d
	movq	%rax, -448(%rbp)
	call	posix_memalign
	movl	$.LC62, %ecx
	movq	%r14, %rsi
	movq	%r13, %rdx
	testl	%eax, %eax
	vxorpd	%xmm6, %xmm6, %xmm6
	movl	$.LC63, %edi
	movq	-192(%rbp), %rax
	movq	-176(%rbp), %r9
	vcvtss2sd	-244(%rbp), %xmm6, %xmm6
	vmovapd	%xmm6, %xmm1
	vmovsd	%xmm6, -504(%rbp)
	movq	-184(%rbp), %r8
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtss2sd	-248(%rbp), %xmm0, %xmm0
	cmove	-240(%rbp), %r15
	vcvtss2sd	-304(%rbp), %xmm3, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtss2sd	-256(%rbp), %xmm2, %xmm2
	pushq	-160(%rbp)
	testq	%rax, %rax
	cmovne	%rax, %rcx
	movl	$4, %eax
	pushq	-168(%rbp)
	call	printf
	movq	-192(%rbp), %rax
	popq	%rcx
	popq	%rsi
	testq	%rax, %rax
	je	.L261
	cmpq	-184(%rbp), %r13
	jg	.L277
.L261:
	movq	$0, -272(%rbp)
.L237:
	movq	-448(%rbp), %rsi
	leaq	-224(%rbp), %rcx
	movq	%r15, %rdx
	movq	-264(%rbp), %rdi
	call	_Z4initlP8particleP9particlevP9options_t
	leaq	-144(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime
	rdtsc
	movq	-264(%rbp), %rcx
	salq	$32, %rdx
	orq	%rdx, %rax
	cmpq	$0, -344(%rbp)
	movq	%rax, -464(%rbp)
	movq	%rcx, %rax
	jle	.L278
	vbroadcastss	-248(%rbp), %ymm8
	testq	%rcx, %rcx
	movl	$0x00000000, -244(%rbp)
	cmovns	%rcx, %rbx
	subq	$1, %rax
	vmovaps	.LC27(%rip), %ymm9
	vmovaps	%ymm8, -496(%rbp)
	imulq	%rcx, %rax
	sarq	$3, %rbx
	movq	%rbx, -256(%rbp)
	movq	%rax, -456(%rbp)
	leaq	(%rbx,%rbx,4), %rax
	leaq	(%rbx,%rax,2), %rax
	xorl	%ebx, %ebx
	salq	$5, %rax
	leaq	160(%r15,%rax), %r12
	leaq	32(%r15,%rax), %r14
	movq	%r12, %r13
	.p2align 4,,10
	.p2align 3
.L255:
	leaq	-144(%rbp), %rsi
	xorl	%edi, %edi
	vmovaps	%ymm9, -336(%rbp)
	vzeroupper
	call	clock_gettime
	rdtsc
	xorl	%edi, %edi
	leaq	-144(%rbp), %rsi
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -352(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -368(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -376(%rbp)
	call	clock_gettime
	rdtsc
	xorl	%ecx, %ecx
	movl	$_Z12interact_alllP8particleP9particlevP9options_t._omp_fn.0, %edi
	vxorps	%xmm5, %xmm5, %xmm5
	vmovss	-196(%rbp), %xmm0
	leaq	-144(%rbp), %rsi
	salq	$32, %rdx
	vmovups	%ymm5, -92(%rbp)
	orq	%rdx, %rax
	xorl	%edx, %edx
	vmovups	%ymm5, -128(%rbp)
	movq	%rax, -432(%rbp)
	movq	-144(%rbp), %rax
	vmovss	%xmm0, -96(%rbp)
	movq	%rax, -384(%rbp)
	movq	-136(%rbp), %rax
	movq	%r15, -136(%rbp)
	movq	%rax, -392(%rbp)
	movq	-264(%rbp), %rax
	movq	%rax, -144(%rbp)
	vzeroupper
	call	GOMP_parallel
	vmovups	-92(%rbp), %ymm1
	xorl	%esi, %esi
	movl	$.LC24, %edi
	movq	-136(%rbp), %r12
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm1, -304(%rbp)
	vcvtss2sd	64(%r12), %xmm0, %xmm0
	vzeroupper
	call	printf
	xorl	%esi, %esi
	movl	$.LC24, %edi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	160(%r12), %xmm0, %xmm0
	call	printf
	xorl	%esi, %esi
	movl	$.LC24, %edi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	256(%r12), %xmm0, %xmm0
	call	printf
	xorl	%edi, %edi
	vmovaps	-304(%rbp), %ymm1
	vxorps	%xmm7, %xmm7, %xmm7
	leaq	-144(%rbp), %rsi
	vaddss	%xmm7, %xmm1, %xmm3
	vshufps	$85, %xmm1, %xmm1, %xmm2
	vshufps	$255, %xmm1, %xmm1, %xmm0
	vaddss	%xmm3, %xmm2, %xmm3
	vunpckhps	%xmm1, %xmm1, %xmm2
	vaddss	%xmm3, %xmm2, %xmm2
	vaddss	%xmm2, %xmm0, %xmm2
	vextractf128	$0x1, %ymm1, %xmm0
	vshufps	$85, %xmm0, %xmm0, %xmm1
	vaddss	%xmm2, %xmm0, %xmm2
	vaddss	%xmm2, %xmm1, %xmm2
	vunpckhps	%xmm0, %xmm0, %xmm1
	vshufps	$255, %xmm0, %xmm0, %xmm0
	vaddss	%xmm2, %xmm1, %xmm2
	vaddss	%xmm2, %xmm0, %xmm0
	vmulss	.LC25(%rip), %xmm0, %xmm5
	vmovss	%xmm5, -356(%rbp)
	vzeroupper
	call	clock_gettime
	rdtsc
	vxorps	%xmm3, %xmm3, %xmm3
	vmovaps	-336(%rbp), %ymm9
	salq	$32, %rdx
	orq	%rdx, %rax
	cmpq	$0, -256(%rbp)
	movq	%rax, -440(%rbp)
	movq	-144(%rbp), %rax
	movq	%rax, -400(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -408(%rbp)
	leaq	32(%r15), %rax
	jle	.L245
	.p2align 4,,10
	.p2align 3
.L246:
	vmovups	128(%rax), %ymm1
	vmulps	(%rax), %ymm9, %ymm4
	addq	$352, %rax
	vmovups	-192(%rax), %ymm2
	vmovups	-160(%rax), %ymm0
	vmulps	%ymm2, %ymm2, %ymm2
	vfmadd132ps	%ymm1, %ymm2, %ymm1
	vfmadd132ps	%ymm0, %ymm1, %ymm0
	vfmadd231ps	%ymm0, %ymm4, %ymm3
	cmpq	%r14, %rax
	jne	.L246
.L245:
	vxorps	%xmm6, %xmm6, %xmm6
	vaddss	%xmm6, %xmm3, %xmm2
	xorl	%edi, %edi
	vshufps	$85, %xmm3, %xmm3, %xmm1
	vshufps	$255, %xmm3, %xmm3, %xmm0
	leaq	-144(%rbp), %rsi
	vmovaps	%ymm9, -304(%rbp)
	vaddss	%xmm2, %xmm1, %xmm2
	vunpckhps	%xmm3, %xmm3, %xmm1
	vextractf128	$0x1, %ymm3, %xmm3
	vaddss	%xmm2, %xmm1, %xmm1
	vaddss	%xmm1, %xmm0, %xmm0
	vshufps	$85, %xmm3, %xmm3, %xmm1
	vaddss	%xmm0, %xmm3, %xmm0
	vaddss	%xmm0, %xmm1, %xmm0
	vunpckhps	%xmm3, %xmm3, %xmm1
	vshufps	$255, %xmm3, %xmm3, %xmm3
	vaddss	%xmm0, %xmm1, %xmm0
	vaddss	%xmm0, %xmm3, %xmm7
	vmovss	%xmm7, -336(%rbp)
	vzeroupper
	call	clock_gettime
	rdtsc
	vmovaps	-304(%rbp), %ymm9
	movq	%rax, %r12
	movq	-144(%rbp), %rax
	salq	$32, %rdx
	orq	%rdx, %r12
	cmpq	$0, -272(%rbp)
	movq	%rax, -416(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -424(%rbp)
	je	.L244
	movq	-184(%rbp), %rax
	cmpq	%rax, %rbx
	jl	.L244
	cmpq	-176(%rbp), %rbx
	jge	.L244
	movq	%rbx, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	cqto
	idivq	-168(%rbp)
	testq	%rdx, %rdx
	je	.L279
	.p2align 4,,10
	.p2align 3
.L244:
	cmpq	$0, -256(%rbp)
	leaq	160(%r15), %rax
	jle	.L253
	vmovaps	-496(%rbp), %ymm8
	.p2align 4,,10
	.p2align 3
.L254:
	vmovaps	160(%rax), %ymm0
	addq	$352, %rax
	vfmadd213ps	-288(%rax), %ymm8, %ymm0
	vmovaps	%ymm0, -288(%rax)
	vmovaps	-224(%rax), %ymm1
	vfmadd213ps	-384(%rax), %ymm8, %ymm0
	vfmadd213ps	-320(%rax), %ymm8, %ymm1
	vmovaps	%ymm0, -384(%rax)
	vmovaps	-256(%rax), %ymm2
	vmovaps	%ymm1, -320(%rax)
	vfmadd213ps	-352(%rax), %ymm8, %ymm2
	vfmadd213ps	-416(%rax), %ymm8, %ymm1
	vmovaps	%ymm2, -352(%rax)
	vfmadd213ps	-448(%rax), %ymm8, %ymm2
	vmovaps	%ymm1, -416(%rax)
	vmovaps	%ymm2, -448(%rax)
	cmpq	%rax, %r13
	jne	.L254
.L253:
	vmovss	-244(%rbp), %xmm6
	leaq	-144(%rbp), %rsi
	xorl	%edi, %edi
	vmovaps	%ymm9, -304(%rbp)
	vaddss	-248(%rbp), %xmm6, %xmm5
	vmovss	%xmm5, -244(%rbp)
	vzeroupper
	call	clock_gettime
	rdtsc
	movq	-144(%rbp), %rsi
	movq	-136(%rbp), %rcx
	vmovaps	-304(%rbp), %ymm9
	movq	%rax, %r11
	movq	-184(%rbp), %rax
	salq	$32, %rdx
	orq	%rdx, %r11
	cmpq	%rax, %rbx
	jl	.L252
	cmpq	-176(%rbp), %rbx
	jge	.L252
	movq	%rbx, %rdi
	subq	%rax, %rdi
	movq	%rdi, %rax
	cqto
	idivq	-168(%rbp)
	testq	%rdx, %rdx
	je	.L280
	.p2align 4,,10
	.p2align 3
.L252:
	addq	$1, %rbx
	cmpq	%rbx, -344(%rbp)
	jne	.L255
	vzeroupper
.L241:
	leaq	-144(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime
	rdtsc
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	$.LC73, %edi
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	-344(%rbp), %rdx
	imulq	-456(%rbp), %rdx
	subq	-464(%rbp), %rax
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	movl	$1, %eax
	vdivsd	%xmm1, %xmm0, %xmm0
	call	printf
	movq	-272(%rbp), %rax
	testq	%rax, %rax
	je	.L256
	cmpq	stdout(%rip), %rax
	je	.L256
	movq	%rax, %rdi
	call	fclose
.L256:
	movq	%r15, %rdi
	call	free
	movq	-448(%rbp), %rdi
	call	free
	xorl	%eax, %eax
	jmp	.L273
.L280:
	imulq	$1000000000, %rsi, %rsi
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm3, %xmm3, %xmm3
	imulq	$1000000000, -400(%rbp), %rdi
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovaps	%ymm9, -560(%rbp)
	imulq	$1000000000, -416(%rbp), %rdx
	addq	-408(%rbp), %rdi
	addq	-424(%rbp), %rdx
	addq	%rsi, %rcx
	movq	-432(%rbp), %r9
	movq	%rbx, %rsi
	imulq	$1000000000, -384(%rbp), %rax
	movq	%r11, -384(%rbp)
	addq	-392(%rbp), %rax
	movq	%rdi, %r8
	vmovsd	.LC67(%rip), %xmm1
	subq	%rdx, %rcx
	subq	%rdi, %rdx
	vcvtsi2sdq	%rdx, %xmm2, %xmm2
	movl	$.LC68, %edi
	imulq	$1000000000, -368(%rbp), %rdx
	vcvtsi2sdq	%rcx, %xmm3, %xmm3
	addq	-376(%rbp), %rdx
	subq	%rax, %r8
	vcvtsi2sdq	%r8, %xmm4, %xmm4
	movq	-440(%rbp), %r8
	vmulsd	%xmm1, %xmm2, %xmm2
	vmulsd	%xmm1, %xmm3, %xmm3
	subq	%rdx, %rax
	movq	%r9, %rdx
	subq	-352(%rbp), %rdx
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movq	%r8, %r10
	vmovsd	%xmm4, -376(%rbp)
	subq	%r9, %r10
	movq	%r11, %r9
	movl	$4, %eax
	subq	%r12, %r9
	subq	%r8, %r12
	movq	%r10, %rcx
	movq	%r10, -304(%rbp)
	movq	%r12, %r8
	vmulsd	%xmm1, %xmm0, %xmm0
	vmulsd	%xmm1, %xmm4, %xmm1
	vzeroupper
	call	printf
	vxorpd	%xmm3, %xmm3, %xmm3
	movq	-304(%rbp), %r10
	vxorpd	%xmm2, %xmm2, %xmm2
	movl	$.LC69, %edi
	movl	$1, %eax
	vcvtsi2sdq	-456(%rbp), %xmm3, %xmm3
	vcvtsi2sdq	%r10, %xmm2, %xmm2
	vmovsd	%xmm3, -304(%rbp)
	vdivsd	%xmm2, %xmm3, %xmm0
	vmovsd	%xmm2, -368(%rbp)
	call	printf
	movq	-384(%rbp), %r11
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	$.LC70, %edi
	subq	-352(%rbp), %r11
	movl	$1, %eax
	vmovsd	-304(%rbp), %xmm3
	vcvtsi2sdq	%r11, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm3, %xmm0
	call	printf
	movl	$.LC71, %edi
	movl	$1, %eax
	vmovsd	-368(%rbp), %xmm2
	vmovsd	-376(%rbp), %xmm4
	vdivsd	%xmm4, %xmm2, %xmm0
	call	printf
	movl	$.LC72, %edi
	movl	$2, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	-356(%rbp), %xmm0, %xmm0
	vcvtss2sd	-336(%rbp), %xmm1, %xmm1
	call	printf
	vmovaps	-560(%rbp), %ymm9
	jmp	.L252
.L279:
	vmovss	-356(%rbp), %xmm7
	movq	%rbx, %rdx
	movl	$.LC47, %esi
	movl	$5, %eax
	vmovss	-336(%rbp), %xmm5
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovaps	%ymm9, -304(%rbp)
	movq	-264(%rbp), %rcx
	vcvtss2sd	-244(%rbp), %xmm0, %xmm0
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtss2sd	%xmm7, %xmm2, %xmm2
	movq	-272(%rbp), %rdi
	vaddss	%xmm5, %xmm7, %xmm4
	vcvtss2sd	%xmm5, %xmm3, %xmm3
	vmovsd	-504(%rbp), %xmm1
	vcvtss2sd	%xmm4, %xmm4, %xmm4
	vzeroupper
	call	fprintf
	movq	-448(%rbp), %rcx
	xorl	%r8d, %r8d
	vmovaps	-304(%rbp), %ymm9
	addq	$4, %rcx
	cmpq	$0, -264(%rbp)
	jle	.L248
	movq	%rbx, -560(%rbp)
	movq	-272(%rbp), %rbx
	movq	%r15, -512(%rbp)
	movq	-264(%rbp), %r15
	movq	%r13, -520(%rbp)
	movq	%rcx, %r13
	movq	%r12, -528(%rbp)
	movq	%r8, %r12
	.p2align 4,,10
	.p2align 3
.L267:
	subq	$16, %rsp
	movq	%r12, %rdx
	movq	%rbx, %rdi
	vmovaps	%ymm9, -304(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	0(%r13), %xmm0, %xmm0
	vcvtss2sd	36(%r13), %xmm1, %xmm1
	vxorpd	%xmm7, %xmm7, %xmm7
	vxorpd	%xmm6, %xmm6, %xmm6
	vcvtss2sd	28(%r13), %xmm7, %xmm7
	vcvtss2sd	24(%r13), %xmm6, %xmm6
	vxorpd	%xmm5, %xmm5, %xmm5
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtss2sd	20(%r13), %xmm5, %xmm5
	vcvtss2sd	16(%r13), %xmm4, %xmm4
	movl	$.LC48, %esi
	movl	$8, %eax
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovsd	%xmm1, 8(%rsp)
	vcvtss2sd	12(%r13), %xmm3, %xmm3
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	8(%r13), %xmm2, %xmm2
	vcvtss2sd	32(%r13), %xmm1, %xmm1
	vmovsd	%xmm1, (%rsp)
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	4(%r13), %xmm1, %xmm1
	vzeroupper
	call	fprintf
	addq	$1, %r12
	addq	$44, %r13
	cmpq	%r12, %r15
	popq	%rax
	vmovaps	-304(%rbp), %ymm9
	popq	%rdx
	jne	.L267
	movq	-560(%rbp), %rbx
	movq	-512(%rbp), %r15
	movq	-520(%rbp), %r13
	movq	-528(%rbp), %r12
.L248:
	movq	-272(%rbp), %rdi
	vmovaps	%ymm9, -304(%rbp)
	vzeroupper
	call	fflush
	vmovaps	-304(%rbp), %ymm9
	jmp	.L244
.L277:
	movl	$.LC64, %edi
	movl	$2, %ecx
	movq	%rax, %rsi
	repz cmpsb
	jne	.L238
	movq	stdout(%rip), %rax
	movq	%rax, -272(%rbp)
	testq	%rax, %rax
	jne	.L237
	jmp	.L275
.L238:
	movl	$.LC65, %esi
	movq	%rax, %rdi
	call	fopen
	movq	%rax, -272(%rbp)
	testq	%rax, %rax
	jne	.L237
	movl	$.LC66, %edi
	call	perror
	jmp	.L275
.L278:
	subq	$1, %rax
	movq	%rax, %rdi
	imulq	%rcx, %rdi
	movq	%rdi, -456(%rbp)
	jmp	.L241
	.cfi_endproc
.LFE4958:
	.size	_Z8mpi_mainiPPc, .-_Z8mpi_mainiPPc
	.section	.text.unlikely
.LCOLDE74:
	.text
.LHOTE74:
	.section	.text.unlikely
.LCOLDB75:
	.section	.text.startup,"ax",@progbits
.LHOTB75:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB4959:
	.cfi_startproc
	jmp	_Z8mpi_mainiPPc
	.cfi_endproc
.LFE4959:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE75:
	.section	.text.startup
.LHOTE75:
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC13:
	.long	1065353216
	.align 4
.LC25:
	.long	1056964608
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC27:
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.long	1056964608
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC37:
	.long	0
	.long	1073741824
	.align 8
.LC38:
	.long	0
	.long	-1074790400
	.align 8
.LC40:
	.long	0
	.long	-1073741824
	.align 8
.LC43:
	.long	0
	.long	1072693248
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC44:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC45:
	.long	1077936128
	.section	.rodata.cst32
	.align 32
.LC59:
	.quad	0
	.quad	-1
	.quad	1
	.quad	9876543210987654
	.section	.rodata.cst8
	.align 8
.LC67:
	.long	3894859413
	.long	1041313291
	.ident	"GCC: (GNU) 5.4.0"
	.section	.note.GNU-stack,"",@progbits
