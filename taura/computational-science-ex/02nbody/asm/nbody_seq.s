	.file	"nbody.cc"
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
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
.LCOLDE0:
	.text
.LHOTE0:
	.section	.text.unlikely
.LCOLDB1:
	.text
.LHOTB1:
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
.LCOLDE1:
	.text
.LHOTE1:
	.section	.text.unlikely
.LCOLDB2:
	.text
.LHOTB2:
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
.LCOLDE2:
	.text
.LHOTE2:
	.section	.text.unlikely
.LCOLDB3:
	.text
.LHOTB3:
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
.LCOLDE3:
	.text
.LHOTE3:
	.section	.text.unlikely
.LCOLDB4:
	.text
.LHOTB4:
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
.LCOLDE4:
	.text
.LHOTE4:
	.section	.text.unlikely
.LCOLDB5:
	.text
.LHOTB5:
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
.LCOLDE5:
	.text
.LHOTE5:
	.section	.text.unlikely
.LCOLDB6:
	.text
.LHOTB6:
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
.LCOLDE6:
	.text
.LHOTE6:
	.section	.text.unlikely
.LCOLDB7:
	.text
.LHOTB7:
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
.LCOLDE7:
	.text
.LHOTE7:
	.section	.text.unlikely
.LCOLDB8:
	.text
.LHOTB8:
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
.LCOLDE8:
	.text
.LHOTE8:
	.section	.text.unlikely
.LCOLDB9:
	.text
.LHOTB9:
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
.LCOLDE9:
	.text
.LHOTE9:
	.section	.text.unlikely
.LCOLDB10:
	.text
.LHOTB10:
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
.LCOLDE10:
	.text
.LHOTE10:
	.globl	_Zml4vecvU8__vectorf
	.set	_Zml4vecvU8__vectorf,_Zml4vecvDv8_f
	.section	.text.unlikely
.LCOLDB12:
	.text
.LHOTB12:
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
	vmovss	.LC11(%rip), %xmm0
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
.LCOLDE12:
	.text
.LHOTE12:
	.section	.text.unlikely
.LCOLDB13:
	.text
.LHOTB13:
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
.LCOLDE13:
	.text
.LHOTE13:
	.section	.text.unlikely
.LCOLDB14:
	.text
.LHOTB14:
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
.LCOLDE14:
	.text
.LHOTE14:
	.section	.text.unlikely
.LCOLDB15:
	.text
.LHOTB15:
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
.LCOLDE15:
	.text
.LHOTE15:
	.section	.text.unlikely
.LCOLDB16:
	.text
.LHOTB16:
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
.LCOLDE16:
	.text
.LHOTE16:
	.section	.text.unlikely
.LCOLDB17:
	.text
.LHOTB17:
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
.LCOLDE17:
	.text
.LHOTE17:
	.globl	_Z6rsqrtvU8__vectorf
	.set	_Z6rsqrtvU8__vectorf,_Z6rsqrtvDv8_f
	.section	.text.unlikely
.LCOLDB18:
	.text
.LHOTB18:
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
.LCOLDE18:
	.text
.LHOTE18:
	.section	.text.unlikely
.LCOLDB20:
	.text
.LHOTB20:
	.p2align 4,,15
	.globl	_Z9interact2P8particleS0_f
	.type	_Z9interact2P8particleS0_f, @function
_Z9interact2P8particleS0_f:
.LFB4932:
	.cfi_startproc
	vmovss	12(%rsi), %xmm3
	vsubss	12(%rdi), %xmm3, %xmm3
	vmovss	16(%rsi), %xmm2
	vmovss	8(%rsi), %xmm4
	vmulss	%xmm3, %xmm3, %xmm1
	vsubss	16(%rdi), %xmm2, %xmm2
	vsubss	8(%rdi), %xmm4, %xmm4
	vfmadd231ss	%xmm4, %xmm4, %xmm1
	vfmadd231ss	%xmm2, %xmm2, %xmm1
	vfmadd231ss	%xmm0, %xmm0, %xmm1
	vbroadcastss	%xmm1, %ymm1
	vrsqrtps	%ymm1, %ymm1
	vmulss	4(%rsi), %xmm1, %xmm0
	vmulss	%xmm1, %xmm0, %xmm0
	vmulss	%xmm1, %xmm0, %xmm0
	vfmadd213ss	40(%rdi), %xmm0, %xmm2
	vfmadd213ss	36(%rdi), %xmm0, %xmm3
	vfmadd213ss	32(%rdi), %xmm4, %xmm0
	vmovss	%xmm0, 32(%rdi)
	vmovss	4(%rdi), %xmm0
	vmovss	%xmm2, 40(%rdi)
	vmovss	.LC19(%rip), %xmm2
	vmovss	%xmm3, 36(%rdi)
	vxorps	%xmm2, %xmm0, %xmm0
	vmulss	4(%rsi), %xmm0, %xmm0
	vmulss	%xmm1, %xmm0, %xmm0
	vzeroupper
	ret
	.cfi_endproc
.LFE4932:
	.size	_Z9interact2P8particleS0_f, .-_Z9interact2P8particleS0_f
	.section	.text.unlikely
.LCOLDE20:
	.text
.LHOTE20:
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC22:
	.string	"%d,%f\n"
	.section	.text.unlikely
.LCOLDB24:
	.text
.LHOTB24:
	.p2align 4,,15
	.globl	_Z12interact_alllP8particleP9particlevP9options_t
	.type	_Z12interact_alllP8particleP9particlevP9options_t, @function
_Z12interact_alllP8particleP9particlevP9options_t:
.LFB4933:
	.cfi_startproc
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	vxorps	%xmm6, %xmm6, %xmm6
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x78,0x6
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x70
	movq	%rsi, %rbx
	subq	$32, %rsp
	vmovss	28(%rcx), %xmm0
	testq	%rdi, %rdi
	jle	.L34
	leaq	32(%rsi), %rax
	xorl	%esi, %esi
	vxorps	%xmm6, %xmm6, %xmm6
	vmovss	.LC19(%rip), %xmm7
	leaq	4(%rbx), %r8
	.p2align 4,,10
	.p2align 3
.L37:
	movl	$0x00000000, (%rax)
	movq	%r8, %rdx
	xorl	%ecx, %ecx
	movl	$0x00000000, 4(%rax)
	movl	$0x00000000, 8(%rax)
	.p2align 4,,10
	.p2align 3
.L36:
	cmpq	%rcx, %rsi
	je	.L35
	vmovss	8(%rdx), %xmm4
	vsubss	-20(%rax), %xmm4, %xmm4
	vmovss	12(%rdx), %xmm3
	vmovss	4(%rdx), %xmm5
	vmulss	%xmm4, %xmm4, %xmm1
	vsubss	-16(%rax), %xmm3, %xmm3
	vsubss	-24(%rax), %xmm5, %xmm5
	vfmadd231ss	%xmm5, %xmm5, %xmm1
	vfmadd231ss	%xmm3, %xmm3, %xmm1
	vfmadd231ss	%xmm0, %xmm0, %xmm1
	vbroadcastss	%xmm1, %ymm1
	vrsqrtps	%ymm1, %ymm1
	vmulss	(%rdx), %xmm1, %xmm2
	vmulss	%xmm1, %xmm2, %xmm2
	vmulss	%xmm1, %xmm2, %xmm2
	vfmadd213ss	8(%rax), %xmm2, %xmm3
	vfmadd213ss	4(%rax), %xmm2, %xmm4
	vfmadd213ss	(%rax), %xmm5, %xmm2
	vmovss	%xmm2, (%rax)
	vmovss	-28(%rax), %xmm2
	vmovss	%xmm4, 4(%rax)
	vmovss	%xmm3, 8(%rax)
	vxorps	%xmm7, %xmm2, %xmm2
	vmulss	(%rdx), %xmm2, %xmm2
	vfmadd231ss	%xmm2, %xmm1, %xmm6
.L35:
	addq	$1, %rcx
	addq	$44, %rdx
	cmpq	%rcx, %rdi
	jne	.L36
	addq	$1, %rsi
	addq	$44, %rax
	cmpq	%rsi, %rdi
	jne	.L37
	vzeroupper
.L34:
	xorl	%esi, %esi
	movl	$.LC22, %edi
	movl	$1, %eax
	vmovss	%xmm6, -20(%rbp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	8(%rbx), %xmm0, %xmm0
	call	printf
	xorl	%esi, %esi
	movl	$.LC22, %edi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	20(%rbx), %xmm0, %xmm0
	call	printf
	xorl	%esi, %esi
	movl	$.LC22, %edi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	32(%rbx), %xmm0, %xmm0
	call	printf
	vmovss	-20(%rbp), %xmm6
	vmulss	.LC23(%rip), %xmm6, %xmm0
	addq	$32, %rsp
	popq	%rbx
	popq	%r10
	.cfi_def_cfa 10, 0
	popq	%rbp
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4933:
	.size	_Z12interact_alllP8particleP9particlevP9options_t, .-_Z12interact_alllP8particleP9particlevP9options_t
	.section	.text.unlikely
.LCOLDE24:
	.text
.LHOTE24:
	.section	.text.unlikely
.LCOLDB26:
	.text
.LHOTB26:
	.p2align 4,,15
	.globl	_Z7kineticlP8particleP9particlev
	.type	_Z7kineticlP8particleP9particlev, @function
_Z7kineticlP8particleP9particlev:
.LFB4934:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L46
	leaq	(%rdi,%rdi,4), %rdx
	vxorps	%xmm0, %xmm0, %xmm0
	vmovsd	.LC25(%rip), %xmm5
	leaq	(%rdi,%rdx,2), %rdx
	leaq	4(%rsi), %rax
	leaq	4(%rsi,%rdx,4), %rdx
	.p2align 4,,10
	.p2align 3
.L45:
	vmovss	20(%rax), %xmm3
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtss2sd	(%rax), %xmm4, %xmm4
	vmulsd	%xmm5, %xmm4, %xmm4
	vmovss	16(%rax), %xmm2
	addq	$44, %rax
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmulss	%xmm3, %xmm3, %xmm3
	vmovss	-20(%rax), %xmm1
	vfmadd132ss	%xmm2, %xmm3, %xmm2
	vfmadd132ss	%xmm1, %xmm2, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vfmadd231sd	%xmm1, %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	cmpq	%rax, %rdx
	jne	.L45
	ret
.L46:
	vxorps	%xmm0, %xmm0, %xmm0
	ret
	.cfi_endproc
.LFE4934:
	.size	_Z7kineticlP8particleP9particlev, .-_Z7kineticlP8particleP9particlev
	.section	.text.unlikely
.LCOLDE26:
	.text
.LHOTE26:
	.section	.text.unlikely
.LCOLDB27:
	.text
.LHOTB27:
	.p2align 4,,15
	.globl	_Z6updatelP8particleP9particlevf
	.type	_Z6updatelP8particleP9particlevf, @function
_Z6updatelP8particleP9particlevf:
.LFB4935:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L54
	leaq	(%rdi,%rdi,4), %rdx
	leaq	(%rdi,%rdx,2), %rdx
	leaq	20(%rsi), %rax
	leaq	20(%rsi,%rdx,4), %rdx
	.p2align 4,,10
	.p2align 3
.L52:
	vmovss	20(%rax), %xmm1
	addq	$44, %rax
	vfmadd213ss	-36(%rax), %xmm0, %xmm1
	vmovss	%xmm1, -36(%rax)
	vmovss	-28(%rax), %xmm2
	vfmadd213ss	-48(%rax), %xmm0, %xmm1
	vfmadd213ss	-40(%rax), %xmm0, %xmm2
	vmovss	%xmm1, -48(%rax)
	vmovss	-32(%rax), %xmm3
	vmovss	%xmm2, -40(%rax)
	vfmadd213ss	-44(%rax), %xmm0, %xmm3
	vfmadd213ss	-52(%rax), %xmm0, %xmm2
	vmovss	%xmm3, -44(%rax)
	vfmadd213ss	-56(%rax), %xmm0, %xmm3
	vmovss	%xmm2, -52(%rax)
	vmovss	%xmm3, -56(%rax)
	cmpq	%rax, %rdx
	jne	.L52
.L54:
	ret
	.cfi_endproc
.LFE4935:
	.size	_Z6updatelP8particleP9particlevf, .-_Z6updatelP8particleP9particlevf
	.section	.text.unlikely
.LCOLDE27:
	.text
.LHOTE27:
	.section	.text.unlikely
.LCOLDB28:
	.text
.LHOTB28:
	.p2align 4,,15
	.globl	_Z8mpi_initPiPPPc
	.type	_Z8mpi_initPiPPPc, @function
_Z8mpi_initPiPPPc:
.LFB4936:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE4936:
	.size	_Z8mpi_initPiPPPc, .-_Z8mpi_initPiPPPc
	.section	.text.unlikely
.LCOLDE28:
	.text
.LHOTE28:
	.section	.text.unlikely
.LCOLDB29:
	.text
.LHOTB29:
	.p2align 4,,15
	.globl	_Z12mpi_finalizev
	.type	_Z12mpi_finalizev, @function
_Z12mpi_finalizev:
.LFB4937:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE4937:
	.size	_Z12mpi_finalizev, .-_Z12mpi_finalizev
	.section	.text.unlikely
.LCOLDE29:
	.text
.LHOTE29:
	.section	.text.unlikely
.LCOLDB30:
	.text
.LHOTB30:
	.p2align 4,,15
	.globl	_Z12get_mpi_rankv
	.type	_Z12get_mpi_rankv, @function
_Z12get_mpi_rankv:
.LFB4938:
	.cfi_startproc
	xorl	%eax, %eax
	ret
	.cfi_endproc
.LFE4938:
	.size	_Z12get_mpi_rankv, .-_Z12get_mpi_rankv
	.section	.text.unlikely
.LCOLDE30:
	.text
.LHOTE30:
	.section	.text.unlikely
.LCOLDB31:
	.text
.LHOTB31:
	.p2align 4,,15
	.globl	_Z14get_mpi_nprocsv
	.type	_Z14get_mpi_nprocsv, @function
_Z14get_mpi_nprocsv:
.LFB4939:
	.cfi_startproc
	movl	$1, %eax
	ret
	.cfi_endproc
.LFE4939:
	.size	_Z14get_mpi_nprocsv, .-_Z14get_mpi_nprocsv
	.section	.text.unlikely
.LCOLDE31:
	.text
.LHOTE31:
	.section	.text.unlikely
.LCOLDB32:
	.text
.LHOTB32:
	.p2align 4,,15
	.globl	_Z9bcast_ptrPv
	.type	_Z9bcast_ptrPv, @function
_Z9bcast_ptrPv:
.LFB4940:
	.cfi_startproc
	movq	%rdi, %rax
	ret
	.cfi_endproc
.LFE4940:
	.size	_Z9bcast_ptrPv, .-_Z9bcast_ptrPv
	.section	.text.unlikely
.LCOLDE32:
	.text
.LHOTE32:
	.section	.text.unlikely
.LCOLDB33:
	.text
.LHOTB33:
	.p2align 4,,15
	.globl	_Z16gather_particleslP8particleP9options_t
	.type	_Z16gather_particleslP8particleP9options_t, @function
_Z16gather_particleslP8particleP9options_t:
.LFB4959:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE4959:
	.size	_Z16gather_particleslP8particleP9options_t, .-_Z16gather_particleslP8particleP9options_t
	.section	.text.unlikely
.LCOLDE33:
	.text
.LHOTE33:
	.section	.text.unlikely
.LCOLDB34:
	.text
.LHOTB34:
	.p2align 4,,15
	.globl	_Z14sync_particleslP8particleP9options_t
	.type	_Z14sync_particleslP8particleP9options_t, @function
_Z14sync_particleslP8particleP9options_t:
.LFB4942:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE4942:
	.size	_Z14sync_particleslP8particleP9options_t, .-_Z14sync_particleslP8particleP9options_t
	.section	.text.unlikely
.LCOLDE34:
	.text
.LHOTE34:
	.section	.text.unlikely
.LCOLDB37:
	.text
.LHOTB37:
	.p2align 4,,15
	.globl	_Z4ballPfPt
	.type	_Z4ballPfPt, @function
_Z4ballPfPt:
.LFB4943:
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
.L65:
	xorl	%ebx, %ebx
	vxorps	%xmm1, %xmm1, %xmm1
.L63:
	movq	%rbp, %rdi
	vmovss	%xmm1, 12(%rsp)
	call	erand48
	vmovss	12(%rsp), %xmm1
	vmovsd	.LC36(%rip), %xmm2
	vfmadd132sd	.LC35(%rip), %xmm2, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%r12,%rbx,4)
	addq	$1, %rbx
	vfmadd231ss	%xmm0, %xmm0, %xmm1
	cmpq	$3, %rbx
	jne	.L63
	vmovss	.LC11(%rip), %xmm3
	vucomiss	%xmm1, %xmm3
	ja	.L68
	subl	$1, %r13d
	jne	.L65
.L68:
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
.LFE4943:
	.size	_Z4ballPfPt, .-_Z4ballPfPt
	.section	.text.unlikely
.LCOLDE37:
	.text
.LHOTE37:
	.section	.text.unlikely
.LCOLDB39:
	.text
.LHOTB39:
	.p2align 4,,15
	.globl	_Z8gaussianPt
	.type	_Z8gaussianPt, @function
_Z8gaussianPt:
.LFB4944:
	.cfi_startproc
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movq	%rdi, %rbx
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
	.p2align 4,,10
	.p2align 3
.L78:
	movq	%rbx, %rdi
	call	erand48
	movq	%rbx, %rdi
	vxorps	%xmm2, %xmm2, %xmm2
	vmovsd	.LC36(%rip), %xmm3
	vfmadd132sd	.LC35(%rip), %xmm3, %xmm0
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, (%rsp)
	call	erand48
	vmovss	(%rsp), %xmm2
	vxorps	%xmm5, %xmm5, %xmm5
	vmovsd	.LC36(%rip), %xmm4
	vfmadd132sd	.LC35(%rip), %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vfmadd231ss	%xmm2, %xmm2, %xmm0
	vucomiss	%xmm5, %xmm0
	jbe	.L78
	vmovss	.LC11(%rip), %xmm6
	vucomiss	%xmm0, %xmm6
	jbe	.L78
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm0, %xmm1, %xmm1
	vmovapd	%xmm1, %xmm0
	vmovss	%xmm2, 12(%rsp)
	vmovsd	%xmm1, (%rsp)
	call	log
	vmovsd	(%rsp), %xmm1
	vmulsd	.LC38(%rip), %xmm0, %xmm0
	vmovss	12(%rsp), %xmm2
	vdivsd	%xmm1, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L80
.L74:
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm0, %xmm2, %xmm0
	addq	$16, %rsp
	.cfi_remember_state
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_def_cfa_offset 8
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	ret
.L80:
	.cfi_restore_state
	vmovapd	%xmm1, %xmm0
	vmovss	%xmm2, (%rsp)
	call	sqrt
	vmovss	(%rsp), %xmm2
	jmp	.L74
	.cfi_endproc
.LFE4944:
	.size	_Z8gaussianPt, .-_Z8gaussianPt
	.section	.text.unlikely
.LCOLDE39:
	.text
.LHOTE39:
	.section	.text.unlikely
.LCOLDB40:
	.text
.LHOTB40:
	.p2align 4,,15
	.globl	_Z5initvlP8particleP9particlev
	.type	_Z5initvlP8particleP9particlev, @function
_Z5initvlP8particleP9particlev:
.LFB4945:
	.cfi_startproc
	testq	%rdi, %rdi
	jle	.L89
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
.L85:
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
	jg	.L85
	vzeroupper
	popq	%r10
	.cfi_restore 10
	.cfi_def_cfa 10, 0
	popq	%rbp
	.cfi_restore 6
	leaq	-8(%r10), %rsp
	.cfi_def_cfa 7, 8
.L89:
	ret
	.cfi_endproc
.LFE4945:
	.size	_Z5initvlP8particleP9particlev, .-_Z5initvlP8particleP9particlev
	.section	.text.unlikely
.LCOLDE40:
	.text
.LHOTE40:
	.section	.text.unlikely
.LCOLDB45:
	.text
.LHOTB45:
	.p2align 4,,15
	.globl	_Z4initlP8particleP9particlevP9options_t
	.type	_Z4initlP8particleP9particlevP9options_t, @function
_Z4initlP8particleP9particlevP9options_t:
.LFB4946:
	.cfi_startproc
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	movq	%rsi, %r14
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	movq	%rdi, %r13
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$56, %rsp
	.cfi_def_cfa_offset 112
	movq	64(%rcx), %rax
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%rax, %rdx
	movw	%ax, 36(%rsp)
	sarq	$32, %rdx
	movw	%dx, 32(%rsp)
	movq	%rax, %rdx
	sarq	$16, %rdx
	movw	%dx, 34(%rsp)
	testq	%rdi, %rdi
	jle	.L91
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	%rdi, %xmm1, %xmm1
	vxorps	%xmm6, %xmm6, %xmm6
	vmovsd	.LC41(%rip), %xmm0
	leaq	8(%rsi), %rbx
	xorl	%r12d, %r12d
	movl	$0x00000000, 8(%rsp)
	vdivsd	%xmm1, %xmm0, %xmm0
	vcvtsd2ss	%xmm0, %xmm6, %xmm6
	vmovss	%xmm6, 12(%rsp)
	.p2align 4,,10
	.p2align 3
.L96:
	vmovss	12(%rsp), %xmm5
	movl	%r12d, -8(%rbx)
	movl	$1000, %ebp
	vaddss	8(%rsp), %xmm5, %xmm6
	vmovss	%xmm5, -4(%rbx)
	vmovss	%xmm6, 8(%rsp)
	.p2align 4,,10
	.p2align 3
.L94:
	xorl	%r15d, %r15d
	vxorps	%xmm1, %xmm1, %xmm1
.L92:
	leaq	32(%rsp), %rdi
	vmovss	%xmm1, (%rsp)
	call	erand48
	vmovss	(%rsp), %xmm1
	vmovsd	.LC36(%rip), %xmm3
	vfmadd132sd	.LC35(%rip), %xmm3, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmovss	%xmm0, (%rbx,%r15,4)
	addq	$1, %r15
	vfmadd231ss	%xmm0, %xmm0, %xmm1
	cmpq	$3, %r15
	jne	.L92
	vmovss	.LC11(%rip), %xmm7
	vucomiss	%xmm1, %xmm7
	ja	.L93
	subl	$1, %ebp
	jne	.L94
	.p2align 4,,10
	.p2align 3
.L93:
	addq	$1, %r12
	addq	$44, %rbx
	cmpq	%r12, %r13
	jne	.L96
	movq	16(%rsp), %r15
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%r15, %rdx
	call	_Z5initvlP8particleP9particlev
	movq	24(%rsp), %rbx
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	movq	%rbx, %rcx
	call	_Z12interact_alllP8particleP9particlevP9options_t
	vmovss	24(%rbx), %xmm1
	vmovss	.LC42(%rip), %xmm2
	vandps	%xmm2, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vmovss	8(%rsp), %xmm6
	vmulss	.LC44(%rip), %xmm6, %xmm2
	vaddss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm2, %xmm1, %xmm1
	vdivsd	%xmm1, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L125
.L110:
	vxorps	%xmm6, %xmm6, %xmm6
	leaq	32(%r14), %rbp
	vcvtsd2ss	%xmm0, %xmm6, %xmm6
	xorl	%r12d, %r12d
	vmovss	%xmm6, 12(%rsp)
	.p2align 4,,10
	.p2align 3
.L105:
	leaq	-12(%rbp), %rbx
	.p2align 4,,10
	.p2align 3
.L119:
	leaq	32(%rsp), %rdi
	call	erand48
	leaq	32(%rsp), %rdi
	vxorps	%xmm2, %xmm2, %xmm2
	vmovsd	.LC36(%rip), %xmm4
	vfmadd132sd	.LC35(%rip), %xmm4, %xmm0
	vcvtsd2ss	%xmm0, %xmm2, %xmm2
	vmovss	%xmm2, (%rsp)
	call	erand48
	vmovss	(%rsp), %xmm2
	vxorps	%xmm6, %xmm6, %xmm6
	vmovsd	.LC36(%rip), %xmm5
	vfmadd132sd	.LC35(%rip), %xmm5, %xmm0
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	%xmm0, %xmm0, %xmm0
	vfmadd231ss	%xmm2, %xmm2, %xmm0
	vucomiss	%xmm6, %xmm0
	jbe	.L119
	vmovss	.LC11(%rip), %xmm7
	vucomiss	%xmm0, %xmm7
	jbe	.L119
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm0, %xmm1, %xmm1
	vmovapd	%xmm1, %xmm0
	vmovss	%xmm2, 8(%rsp)
	vmovsd	%xmm1, (%rsp)
	call	log
	vmovsd	(%rsp), %xmm1
	vmulsd	.LC38(%rip), %xmm0, %xmm0
	vmovss	8(%rsp), %xmm2
	vdivsd	%xmm1, %xmm0, %xmm1
	vsqrtsd	%xmm1, %xmm0, %xmm0
	vucomisd	%xmm0, %xmm0
	jp	.L126
.L101:
	vcvtss2sd	%xmm2, %xmm2, %xmm2
	vmulsd	%xmm0, %xmm2, %xmm0
	movl	$0x00000000, 12(%rbx)
	addq	$4, %rbx
	vcvtsd2ss	%xmm0, %xmm0, %xmm0
	vmulss	12(%rsp), %xmm0, %xmm0
	vmovss	%xmm0, -4(%rbx)
	cmpq	%rbp, %rbx
	jne	.L119
	addq	$1, %r12
	addq	$44, %rbp
	cmpq	%r12, %r13
	jne	.L105
.L104:
	testb	$7, %r13b
	je	.L106
	leaq	0(%r13,%r13,4), %rax
	movq	%r13, %rdx
	leaq	0(%r13,%rax,2), %rax
	leaq	(%r14,%rax,4), %rax
	.p2align 4,,10
	.p2align 3
.L107:
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
	jne	.L107
.L106:
	movq	16(%rsp), %rdx
	movq	%r14, %rsi
	movq	%r13, %rdi
	call	_Z5initvlP8particleP9particlev
	addq	$56, %rsp
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
.L126:
	.cfi_restore_state
	vmovapd	%xmm1, %xmm0
	vmovss	%xmm2, (%rsp)
	call	sqrt
	vmovss	(%rsp), %xmm2
	jmp	.L101
.L91:
	movq	16(%rsp), %r15
	movq	%r15, %rdx
	call	_Z5initvlP8particleP9particlev
	movq	24(%rsp), %rbx
	movq	%r15, %rdx
	movq	%r14, %rsi
	movq	%rbx, %rcx
	call	_Z12interact_alllP8particleP9particlevP9options_t
	vmovss	24(%rbx), %xmm1
	vmovss	.LC42(%rip), %xmm2
	vandps	%xmm2, %xmm0, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vaddss	%xmm1, %xmm1, %xmm1
	vcvtss2sd	%xmm1, %xmm1, %xmm1
	vmulsd	%xmm0, %xmm1, %xmm0
	vdivsd	.LC43(%rip), %xmm0, %xmm0
	vsqrtsd	%xmm0, %xmm1, %xmm1
	vucomisd	%xmm1, %xmm1
	jnp	.L104
	call	sqrt
	jmp	.L104
.L125:
	vmovapd	%xmm1, %xmm0
	call	sqrt
	jmp	.L110
	.cfi_endproc
.LFE4946:
	.size	_Z4initlP8particleP9particlevP9options_t, .-_Z4initlP8particleP9particlevP9options_t
	.section	.text.unlikely
.LCOLDE45:
	.text
.LHOTE45:
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC46:
	.string	"step: %ld t: %.9f T: %.9f n: %ld U: %f K: %f U+K: %f\n"
	.align 8
.LC47:
	.string	"%ld m: %f pos: %f %f %f vel: %f %f %f acc: %f %f %f\n"
	.section	.text.unlikely
.LCOLDB48:
	.text
.LHOTB48:
	.p2align 4,,15
	.globl	_Z15dump_config_txtlfflP8particleffP8_IO_FILE
	.type	_Z15dump_config_txtlfflP8particleffP8_IO_FILE, @function
_Z15dump_config_txtlfflP8particleffP8_IO_FILE:
.LFB4947:
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
	movl	$.LC46, %esi
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
	jle	.L129
	.p2align 4,,10
	.p2align 3
.L131:
	subq	$16, %rsp
	.cfi_def_cfa_offset 64
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	movq	%rbp, %rdx
	vcvtss2sd	36(%rbx), %xmm1, %xmm1
	vcvtss2sd	(%rbx), %xmm0, %xmm0
	movl	$.LC47, %esi
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
	jne	.L131
.L129:
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
.LFE4947:
	.size	_Z15dump_config_txtlfflP8particleffP8_IO_FILE, .-_Z15dump_config_txtlfflP8particleffP8_IO_FILE
	.section	.text.unlikely
.LCOLDE48:
	.text
.LHOTE48:
	.section	.rodata.str1.1
.LC49:
	.string	"fwrite"
	.section	.text.unlikely
.LCOLDB50:
	.text
.LHOTB50:
	.p2align 4,,15
	.globl	_Z11dump_configlfflP8particleffP8_IO_FILE
	.type	_Z11dump_configlfflP8particleffP8_IO_FILE, @function
_Z11dump_configlfflP8particleffP8_IO_FILE:
.LFB4948:
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
	jle	.L139
	movq	%rcx, %r13
	movq	%rsi, %r12
	xorl	%ebp, %ebp
	leaq	4(%rdx), %rbx
	.p2align 4,,10
	.p2align 3
.L138:
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
	jne	.L141
	addq	$1, %rbp
	addq	$44, %rbx
	cmpq	%rbp, %r12
	jne	.L138
.L139:
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
.L141:
	.cfi_restore_state
	movl	$.LC49, %edi
	call	_Z3diePKc
	.cfi_endproc
.LFE4948:
	.size	_Z11dump_configlfflP8particleffP8_IO_FILE, .-_Z11dump_configlfflP8particleffP8_IO_FILE
	.section	.text.unlikely
.LCOLDE50:
	.text
.LHOTE50:
	.section	.rodata.str1.8
	.align 8
.LC51:
	.ascii	"usage:\n  %s [options]:\noptions:\n -n N : simulate N partic"
	.ascii	"les (%ld)\n -t dt : time step (%f)\n -T T : simulation end t"
	.ascii	"ime (%f)\n -s N : simulate N steps (%ld)\n -r rv : virial ra"
	.ascii	"tio (%f)\n"
	.string	" -e eps : softening parameter (%f)\n -o FILE : dump output to FILE (%s)\n -d A:B:C : dump between step A up to step B-1, with interval C (i.e., dump at step A, A+C, A+2C, ...) (%ld:%ld:%ld)\n -x X : set random seed to X, to change initial configuration (%ld)\n"
	.section	.text.unlikely
.LCOLDB52:
	.text
.LHOTB52:
	.p2align 4,,15
	.globl	_Z4helpP9options_tPc
	.type	_Z4helpP9options_tPc, @function
_Z4helpP9options_tPc:
.LFB4952:
	.cfi_startproc
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
	movq	48(%rdi), %rax
	movq	%rsi, %rdx
	movq	56(%rdi), %rcx
	movq	64(%rdi), %rsi
	cmpq	$-1, %rax
	je	.L143
	movq	8(%rdi), %r8
.L144:
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	16(%rdi), %xmm0, %xmm0
	pushq	%rsi
	.cfi_def_cfa_offset 24
	vxorpd	%xmm3, %xmm3, %xmm3
	pushq	%rcx
	.cfi_def_cfa_offset 32
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	$.LC51, %esi
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
.L143:
	.cfi_def_cfa_offset 16
	movq	8(%rdi), %rax
	movq	%rax, %r8
	jmp	.L144
	.cfi_endproc
.LFE4952:
	.size	_Z4helpP9options_tPc, .-_Z4helpP9options_tPc
	.section	.text.unlikely
.LCOLDE52:
	.text
.LHOTE52:
	.section	.rodata.str1.8
	.align 8
.LC53:
	.string	"error: malformed dump interval %s (valid form: a, a:b, a:b:c)\n"
	.section	.text.unlikely
.LCOLDB54:
	.text
.LHOTB54:
	.p2align 4,,15
	.globl	_Z10parse_dumpPcP9options_t
	.type	_Z10parse_dumpPcP9options_t, @function
_Z10parse_dumpPcP9options_t:
.LFB4953:
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
	je	.L147
	movq	%rax, %r13
	movq	%rax, %rbx
	addq	$1, %r13
	je	.L147
	movl	$58, %esi
	movq	%r13, %rdi
	call	strchr
	movq	%rax, %r12
	testq	%rax, %rax
	je	.L148
	leaq	1(%rax), %r15
	movq	%rbx, %rax
	subq	%rbp, %rax
	testq	%rax, %rax
	jle	.L150
.L149:
	movsbl	0(%rbp), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	.L156
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	strtol
	movq	%rax, 40(%r14)
.L150:
	testq	%r15, %r15
	je	.L153
	subq	%r13, %r12
	testq	%r12, %r12
	jle	.L154
.L153:
	movsbl	1(%rbx), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	.L156
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%r13, %rdi
	call	strtol
	movq	%rax, 48(%r14)
	testq	%r15, %r15
	je	.L176
.L154:
	movsbl	(%r15), %eax
	testb	%al, %al
	je	.L176
	subl	$48, %eax
	cmpl	$9, %eax
	jbe	.L177
.L156:
	movq	stderr(%rip), %rdi
	movq	%rbp, %rdx
	movl	$.LC53, %esi
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
.L147:
	.cfi_restore_state
	movsbl	0(%rbp), %eax
	subl	$48, %eax
	cmpl	$9, %eax
	ja	.L156
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%rbp, %rdi
	call	strtol
	movq	%rax, 40(%r14)
.L176:
	movl	$1, %eax
.L178:
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
.L177:
	.cfi_restore_state
	movl	$10, %edx
	xorl	%esi, %esi
	movq	%r15, %rdi
	call	strtol
	movq	%rax, 56(%r14)
	movl	$1, %eax
	jmp	.L178
.L148:
	movq	%rbx, %rax
	xorl	%r15d, %r15d
	subq	%rbp, %rax
	testq	%rax, %rax
	jg	.L149
	jmp	.L153
	.cfi_endproc
.LFE4953:
	.size	_Z10parse_dumpPcP9options_t, .-_Z10parse_dumpPcP9options_t
	.section	.text.unlikely
.LCOLDE54:
	.text
.LHOTE54:
	.section	.text.unlikely
.LCOLDB55:
	.text
.LHOTB55:
	.p2align 4,,15
	.globl	_Z12set_defaultsP9options_t
	.type	_Z12set_defaultsP9options_t, @function
_Z12set_defaultsP9options_t:
.LFB4954:
	.cfi_startproc
	movq	8(%rdi), %rax
	testq	%rax, %rax
	jne	.L180
	vmovss	20(%rdi), %xmm0
	vdivss	16(%rdi), %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	movq	%rax, 8(%rdi)
.L180:
	cmpq	$-1, 48(%rdi)
	je	.L183
	ret
	.p2align 4,,10
	.p2align 3
.L183:
	movq	%rax, 48(%rdi)
	ret
	.cfi_endproc
.LFE4954:
	.size	_Z12set_defaultsP9options_t, .-_Z12set_defaultsP9options_t
	.section	.text.unlikely
.LCOLDE55:
	.text
.LHOTE55:
	.section	.rodata.str1.1
.LC59:
	.string	"n:s:t:T:r:e:o:d:x:vp"
	.section	.text.unlikely
.LCOLDB60:
	.text
.LHOTB60:
	.p2align 4,,15
	.globl	_Z10parse_argsiPPcP9options_t
	.type	_Z10parse_argsiPPcP9options_t, @function
_Z10parse_argsiPPcP9options_t:
.LFB4955:
	.cfi_startproc
	vmovdqa	.LC58(%rip), %ymm0
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
.L185:
	movl	$.LC59, %edx
	movq	%r12, %rsi
	movl	%r13d, %edi
	call	getopt
	cmpl	$110, %eax
	je	.L187
	jle	.L211
	cmpl	$115, %eax
	je	.L194
	jg	.L195
	cmpl	$111, %eax
	je	.L196
	cmpl	$114, %eax
	jne	.L186
	movq	optarg(%rip), %rdi
	xorl	%esi, %esi
	call	strtod
	vxorps	%xmm6, %xmm6, %xmm6
	vcvtsd2ss	%xmm0, %xmm6, %xmm6
	vmovss	%xmm6, 24(%rbx)
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L211:
	cmpl	$84, %eax
	je	.L189
	jle	.L212
	cmpl	$100, %eax
	je	.L192
	cmpl	$101, %eax
	jne	.L186
	movq	optarg(%rip), %rdi
	xorl	%esi, %esi
	call	strtod
	vxorps	%xmm7, %xmm7, %xmm7
	vcvtsd2ss	%xmm0, %xmm7, %xmm7
	vmovss	%xmm7, 28(%rbx)
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L195:
	cmpl	$116, %eax
	je	.L198
	cmpl	$120, %eax
	jne	.L186
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 64(%rbx)
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L212:
	cmpl	$-1, %eax
	jne	.L186
	movq	8(%rbx), %rdx
	testq	%rdx, %rdx
	jne	.L200
	vmovss	20(%rbx), %xmm0
	vdivss	16(%rbx), %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rdx
	movq	%rdx, 8(%rbx)
.L200:
	cmpq	$-1, 48(%rbx)
	movl	$1, %eax
	je	.L213
.L209:
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
.L186:
	.cfi_restore_state
	movq	48(%rbx), %rax
	movq	(%r12), %rdx
	movq	64(%rbx), %rsi
	movq	56(%rbx), %rcx
	cmpq	$-1, %rax
	je	.L203
	movq	8(%rbx), %r8
.L204:
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
	movl	$.LC51, %esi
	vcvtss2sd	24(%rbx), %xmm2, %xmm2
	vcvtss2sd	20(%rbx), %xmm1, %xmm1
	movl	$4, %eax
	call	fprintf
	addq	$32, %rsp
	movl	$1, %edi
	call	exit
	.p2align 4,,10
	.p2align 3
.L194:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 8(%rbx)
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L187:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, (%rbx)
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L196:
	movq	optarg(%rip), %rdi
	call	strdup
	movq	%rax, 32(%rbx)
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L189:
	movq	optarg(%rip), %rdi
	xorl	%esi, %esi
	call	strtod
	vxorps	%xmm5, %xmm5, %xmm5
	vcvtsd2ss	%xmm0, %xmm5, %xmm5
	vmovss	%xmm5, 20(%rbx)
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L192:
	movq	optarg(%rip), %rdi
	movq	%rbx, %rsi
	call	_Z10parse_dumpPcP9options_t
	testl	%eax, %eax
	jne	.L185
	jmp	.L209
	.p2align 4,,10
	.p2align 3
.L198:
	movq	optarg(%rip), %rdi
	xorl	%esi, %esi
	call	strtod
	vxorps	%xmm4, %xmm4, %xmm4
	vcvtsd2ss	%xmm0, %xmm4, %xmm4
	vmovss	%xmm4, 16(%rbx)
	jmp	.L185
	.p2align 4,,10
	.p2align 3
.L203:
	movq	8(%rbx), %rax
	movq	%rax, %r8
	jmp	.L204
	.p2align 4,,10
	.p2align 3
.L213:
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
.LFE4955:
	.size	_Z10parse_argsiPPcP9options_t, .-_Z10parse_argsiPPcP9options_t
	.section	.text.unlikely
.LCOLDE60:
	.text
.LHOTE60:
	.section	.rodata.str1.1
.LC61:
	.string	"None"
	.section	.rodata.str1.8
	.align 8
.LC62:
	.string	"n_particles: %ld, n_steps: %ld, dt: %f, T: %f, rv: %f, eps: %f, output: %s, dump: %ld:%ld:%ld, seed: %ld\n"
	.section	.rodata.str1.1
.LC63:
	.string	"-"
.LC64:
	.string	"w"
.LC65:
	.string	"fopen"
	.section	.rodata.str1.8
	.align 8
.LC67:
	.string	"iteration: %ld\nsync: %lld clocks = %f sec\ninteract_all: %lld clocks = %f sec\nkinetic: %lld clocks = %f sec\nupdate: %lld clocks = %f sec\n"
	.section	.rodata.str1.1
.LC68:
	.string	"interact_all: %f ppi/clocks\n"
.LC69:
	.string	"iteration: %f ppi/clocks\n"
.LC70:
	.string	"clock frequency: %f GHz\n"
.LC71:
	.string	"U= %f, K=%f\n\n"
	.section	.rodata.str1.8
	.align 8
.LC72:
	.string	"all iterations: %f ppi/clocks\n"
	.section	.text.unlikely
.LCOLDB73:
	.text
.LHOTB73:
	.p2align 4,,15
	.globl	_Z8mpi_mainiPPc
	.type	_Z8mpi_mainiPPc, @function
_Z8mpi_mainiPPc:
.LFB4956:
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
	subq	$296, %rsp
	.cfi_def_cfa_offset 352
	leaq	208(%rsp), %rdx
	call	_Z10parse_argsiPPcP9options_t
	testl	%eax, %eax
	jne	.L263
.L261:
	movl	$1, %eax
.L258:
	addq	$296, %rsp
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
.L263:
	.cfi_restore_state
	movq	208(%rsp), %r12
	movl	$32, %esi
	movq	216(%rsp), %rax
	leaq	184(%rsp), %rdi
	vmovss	224(%rsp), %xmm9
	vmovss	228(%rsp), %xmm6
	movq	%r12, %rdx
	vmovss	%xmm9, 24(%rsp)
	vmovss	232(%rsp), %xmm7
	addq	$7, %rdx
	movq	%rax, 40(%rsp)
	movq	%rax, %r14
	vmovss	236(%rsp), %xmm5
	leaq	14(%r12), %rax
	vmovss	%xmm6, 16(%rsp)
	cmovns	%rdx, %rax
	vmovss	%xmm7, 8(%rsp)
	xorl	%r15d, %r15d
	vmovss	%xmm5, 20(%rsp)
	sarq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	leaq	(%rax,%rdx,2), %rbx
	salq	$5, %rbx
	movq	%rbx, %rdx
	call	posix_memalign
	leaq	176(%rsp), %rdi
	movq	%rbx, %rdx
	movl	$32, %esi
	testl	%eax, %eax
	cmove	184(%rsp), %r15
	call	posix_memalign
	xorl	%ecx, %ecx
	vmovss	24(%rsp), %xmm9
	movq	%r12, %rsi
	testl	%eax, %eax
	movq	%rcx, %rax
	vxorpd	%xmm5, %xmm5, %xmm5
	vcvtss2sd	16(%rsp), %xmm5, %xmm5
	movl	$.LC61, %ecx
	vmovapd	%xmm5, %xmm1
	vmovss	%xmm9, 16(%rsp)
	movq	%r14, %rdx
	movl	$.LC62, %edi
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtss2sd	%xmm9, %xmm0, %xmm0
	cmove	176(%rsp), %rax
	vxorpd	%xmm2, %xmm2, %xmm2
	vmovsd	%xmm5, 144(%rsp)
	movq	%rax, 48(%rsp)
	movq	240(%rsp), %rax
	pushq	272(%rsp)
	.cfi_def_cfa_offset 360
	pushq	272(%rsp)
	.cfi_def_cfa_offset 368
	movq	272(%rsp), %r9
	vcvtss2sd	36(%rsp), %xmm3, %xmm3
	vcvtss2sd	24(%rsp), %xmm2, %xmm2
	movq	264(%rsp), %r8
	testq	%rax, %rax
	cmovne	%rax, %rcx
	movl	$4, %eax
	call	printf
	movq	256(%rsp), %rax
	popq	%rcx
	.cfi_def_cfa_offset 360
	popq	%rsi
	.cfi_def_cfa_offset 352
	vmovss	16(%rsp), %xmm9
	testq	%rax, %rax
	je	.L245
	cmpq	248(%rsp), %r14
	jg	.L264
.L245:
	movq	$0, 32(%rsp)
.L220:
	movq	48(%rsp), %rdx
	movq	%r15, %rsi
	movq	%r12, %rdi
	vmovss	%xmm9, 16(%rsp)
	leaq	208(%rsp), %rcx
	call	_Z4initlP8particleP9particlevP9options_t
	leaq	192(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime
	rdtsc
	vmovss	16(%rsp), %xmm9
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, 136(%rsp)
	leaq	-1(%r12), %rax
	imulq	%r12, %rax
	cmpq	$0, 40(%rsp)
	movq	%rax, 128(%rsp)
	jle	.L224
	leaq	(%r12,%r12,4), %rax
	vxorps	%xmm7, %xmm7, %xmm7
	xorl	%r14d, %r14d
	vmovsd	.LC25(%rip), %xmm10
	leaq	(%r12,%rax,2), %rax
	vmovss	%xmm7, 16(%rsp)
	leaq	4(%r15,%rax,4), %rbp
	vmovss	%xmm9, 20(%rsp)
	movq	%rbp, %rbx
	.p2align 4,,10
	.p2align 3
.L235:
	leaq	192(%rsp), %rsi
	xorl	%edi, %edi
	vmovsd	%xmm10, 8(%rsp)
	call	clock_gettime
	rdtsc
	xorl	%edi, %edi
	leaq	192(%rsp), %rsi
	movq	%rax, %r13
	salq	$32, %rdx
	movq	192(%rsp), %rax
	orq	%rdx, %r13
	movq	%rax, 56(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 64(%rsp)
	call	clock_gettime
	rdtsc
	salq	$32, %rdx
	movq	%r15, %rsi
	movq	%r12, %rdi
	leaq	208(%rsp), %rcx
	orq	%rdx, %rax
	movq	48(%rsp), %rdx
	movq	%rax, 104(%rsp)
	movq	192(%rsp), %rax
	movq	%rax, 72(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 80(%rsp)
	call	_Z12interact_alllP8particleP9particlevP9options_t
	leaq	192(%rsp), %rsi
	xorl	%edi, %edi
	vmovss	%xmm0, 152(%rsp)
	call	clock_gettime
	rdtsc
	vmovsd	8(%rsp), %xmm10
	movq	%rax, %rbp
	movq	192(%rsp), %rax
	salq	$32, %rdx
	orq	%rdx, %rbp
	testq	%r12, %r12
	movq	%rax, 88(%rsp)
	movq	200(%rsp), %rax
	movq	%rax, 96(%rsp)
	jle	.L225
	leaq	4(%r15), %rax
	vxorps	%xmm8, %xmm8, %xmm8
	.p2align 4,,10
	.p2align 3
.L227:
	vmovss	20(%rax), %xmm2
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtss2sd	(%rax), %xmm4, %xmm4
	vmulsd	%xmm10, %xmm4, %xmm4
	vmovss	16(%rax), %xmm1
	addq	$44, %rax
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtss2sd	%xmm8, %xmm3, %xmm3
	vmulss	%xmm2, %xmm2, %xmm2
	vmovss	-20(%rax), %xmm0
	vfmadd132ss	%xmm1, %xmm2, %xmm1
	vfmadd132ss	%xmm0, %xmm1, %xmm0
	vcvtss2sd	%xmm0, %xmm0, %xmm0
	vfmadd132sd	%xmm0, %xmm3, %xmm4
	vcvtsd2ss	%xmm4, %xmm8, %xmm8
	cmpq	%rbx, %rax
	jne	.L227
	leaq	192(%rsp), %rsi
	xorl	%edi, %edi
	vmovsd	%xmm10, 24(%rsp)
	vmovss	%xmm8, 8(%rsp)
	call	clock_gettime
	rdtsc
	vmovss	8(%rsp), %xmm8
	vmovsd	24(%rsp), %xmm10
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, 112(%rsp)
	imulq	$1000000000, 192(%rsp), %rax
	addq	200(%rsp), %rax
	cmpq	$0, 32(%rsp)
	movq	%rax, 120(%rsp)
	je	.L238
	movq	248(%rsp), %rax
	cmpq	%rax, %r14
	jl	.L238
.L240:
	cmpq	256(%rsp), %r14
	jge	.L228
	movq	%r14, %rcx
	subq	%rax, %rcx
	movq	%rcx, %rax
	cqto
	idivq	264(%rsp)
	testq	%rdx, %rdx
	je	.L265
.L228:
	testq	%r12, %r12
	jle	.L232
.L238:
	vmovss	20(%rsp), %xmm9
	leaq	20(%r15), %rax
	xorl	%edx, %edx
	.p2align 4,,10
	.p2align 3
.L233:
	addq	$1, %rdx
	vmovss	20(%rax), %xmm0
	addq	$44, %rax
	vfmadd213ss	-36(%rax), %xmm9, %xmm0
	vmovss	-28(%rax), %xmm1
	vmovss	%xmm0, -36(%rax)
	vfmadd213ss	-40(%rax), %xmm9, %xmm1
	vfmadd213ss	-48(%rax), %xmm9, %xmm0
	vmovss	-32(%rax), %xmm2
	vmovss	%xmm1, -40(%rax)
	vfmadd213ss	-44(%rax), %xmm9, %xmm2
	vfmadd213ss	-52(%rax), %xmm9, %xmm1
	vmovss	%xmm2, -44(%rax)
	vfmadd213ss	-56(%rax), %xmm9, %xmm2
	vmovss	%xmm1, -52(%rax)
	vmovss	%xmm2, -56(%rax)
	vmovss	%xmm0, -48(%rax)
	cmpq	%rdx, %r12
	jg	.L233
.L232:
	vmovss	16(%rsp), %xmm6
	leaq	192(%rsp), %rsi
	xorl	%edi, %edi
	vmovsd	%xmm10, 8(%rsp)
	vaddss	20(%rsp), %xmm6, %xmm5
	vmovss	%xmm8, 24(%rsp)
	vmovss	%xmm5, 16(%rsp)
	call	clock_gettime
	rdtsc
	movq	192(%rsp), %rsi
	movq	200(%rsp), %rcx
	vmovsd	8(%rsp), %xmm10
	movq	%rax, %r11
	movq	248(%rsp), %rax
	salq	$32, %rdx
	orq	%rdx, %r11
	cmpq	%rax, %r14
	jl	.L234
	cmpq	256(%rsp), %r14
	jge	.L234
	movq	%r14, %rdi
	vmovss	24(%rsp), %xmm8
	subq	%rax, %rdi
	movq	%rdi, %rax
	cqto
	idivq	264(%rsp)
	testq	%rdx, %rdx
	je	.L266
	.p2align 4,,10
	.p2align 3
.L234:
	addq	$1, %r14
	cmpq	%r14, 40(%rsp)
	jne	.L235
.L224:
	leaq	192(%rsp), %rsi
	xorl	%edi, %edi
	call	clock_gettime
	rdtsc
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	movl	$.LC72, %edi
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	40(%rsp), %rdx
	imulq	128(%rsp), %rdx
	subq	136(%rsp), %rax
	vcvtsi2sdq	%rdx, %xmm0, %xmm0
	vcvtsi2sdq	%rax, %xmm1, %xmm1
	movl	$1, %eax
	vdivsd	%xmm1, %xmm0, %xmm0
	call	printf
	movq	32(%rsp), %rax
	testq	%rax, %rax
	je	.L236
	cmpq	stdout(%rip), %rax
	je	.L236
	movq	%rax, %rdi
	call	fclose
.L236:
	movq	48(%rsp), %rdi
	call	free
	movq	%r15, %rdi
	call	free
	xorl	%eax, %eax
	jmp	.L258
.L225:
	leaq	192(%rsp), %rsi
	xorl	%edi, %edi
	vmovsd	%xmm10, 8(%rsp)
	call	clock_gettime
	rdtsc
	vmovsd	8(%rsp), %xmm10
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, 112(%rsp)
	imulq	$1000000000, 192(%rsp), %rax
	addq	200(%rsp), %rax
	cmpq	$0, 32(%rsp)
	movq	%rax, 120(%rsp)
	jne	.L267
.L260:
	vxorps	%xmm8, %xmm8, %xmm8
	jmp	.L232
.L266:
	vxorpd	%xmm4, %xmm4, %xmm4
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	imulq	$1000000000, %rsi, %rsi
	movq	%rbp, %r10
	movq	%r11, %r9
	vmovsd	%xmm10, 160(%rsp)
	imulq	$1000000000, 88(%rsp), %rdx
	vmovss	%xmm8, 156(%rsp)
	addq	96(%rsp), %rdx
	imulq	$1000000000, 72(%rsp), %rax
	addq	%rsi, %rcx
	movq	120(%rsp), %rsi
	movq	%rdx, %rdi
	addq	80(%rsp), %rax
	subq	%rsi, %rcx
	subq	%rdx, %rsi
	imulq	$1000000000, 56(%rsp), %rdx
	subq	%rax, %rdi
	vcvtsi2sdq	%rdi, %xmm4, %xmm4
	addq	64(%rsp), %rdx
	movq	%r11, 64(%rsp)
	movq	104(%rsp), %rdi
	vmulsd	.LC66(%rip), %xmm4, %xmm1
	vcvtsi2sdq	%rcx, %xmm3, %xmm3
	vcvtsi2sdq	%rsi, %xmm2, %xmm2
	subq	%rdx, %rax
	vmovsd	%xmm4, 56(%rsp)
	vmulsd	.LC66(%rip), %xmm2, %xmm2
	subq	%rdi, %r10
	movq	%rdi, %rdx
	movq	%r10, %rcx
	subq	%r13, %rdx
	movq	%r14, %rsi
	movq	%r10, 8(%rsp)
	vcvtsi2sdq	%rax, %xmm0, %xmm0
	movq	112(%rsp), %rax
	movl	$.LC67, %edi
	vmulsd	.LC66(%rip), %xmm0, %xmm0
	vmulsd	.LC66(%rip), %xmm3, %xmm3
	movq	%rax, %r8
	subq	%rax, %r9
	movl	$4, %eax
	subq	%rbp, %r8
	call	printf
	movq	8(%rsp), %r10
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtsi2sdq	128(%rsp), %xmm1, %xmm1
	movl	$.LC68, %edi
	movl	$1, %eax
	vcvtsi2sdq	%r10, %xmm3, %xmm3
	vmovsd	%xmm1, 8(%rsp)
	vdivsd	%xmm3, %xmm1, %xmm0
	vmovsd	%xmm3, 24(%rsp)
	call	printf
	movq	64(%rsp), %r11
	vxorpd	%xmm2, %xmm2, %xmm2
	movl	$.LC69, %edi
	vmovsd	8(%rsp), %xmm1
	movl	$1, %eax
	subq	%r13, %r11
	vcvtsi2sdq	%r11, %xmm2, %xmm2
	vdivsd	%xmm2, %xmm1, %xmm0
	call	printf
	vmovsd	24(%rsp), %xmm3
	movl	$.LC70, %edi
	movl	$1, %eax
	vmovsd	56(%rsp), %xmm4
	vdivsd	%xmm4, %xmm3, %xmm0
	call	printf
	movl	$.LC71, %edi
	movl	$2, %eax
	vmovss	156(%rsp), %xmm8
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	152(%rsp), %xmm0, %xmm0
	vcvtss2sd	%xmm8, %xmm1, %xmm1
	call	printf
	vmovsd	160(%rsp), %xmm10
	jmp	.L234
.L265:
	movq	32(%rsp), %rdi
	movq	%r12, %rcx
	movq	%r14, %rdx
	movl	$.LC46, %esi
	movl	$5, %eax
	vmovsd	%xmm10, 24(%rsp)
	vxorpd	%xmm0, %xmm0, %xmm0
	vmovss	152(%rsp), %xmm7
	vmovss	%xmm8, 8(%rsp)
	vcvtss2sd	16(%rsp), %xmm0, %xmm0
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	vaddss	%xmm7, %xmm8, %xmm4
	vcvtss2sd	%xmm8, %xmm3, %xmm3
	vcvtss2sd	%xmm7, %xmm2, %xmm2
	vmovsd	144(%rsp), %xmm1
	vcvtss2sd	%xmm4, %xmm4, %xmm4
	call	fprintf
	leaq	4(%r15), %rcx
	xorl	%r8d, %r8d
	testq	%r12, %r12
	vmovss	8(%rsp), %xmm8
	vmovsd	24(%rsp), %xmm10
	jle	.L230
	movq	%r14, 24(%rsp)
	movq	32(%rsp), %r14
	movq	%rbx, 160(%rsp)
	movq	%r8, %rbx
	movq	%rbp, 168(%rsp)
	movq	%rcx, %rbp
	vmovss	%xmm8, 156(%rsp)
	.p2align 4,,10
	.p2align 3
.L253:
	vmovsd	%xmm10, 8(%rsp)
	movq	%rbx, %rdx
	subq	$16, %rsp
	.cfi_def_cfa_offset 368
	movq	%r14, %rdi
	addq	$1, %rbx
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	0(%rbp), %xmm0, %xmm0
	vcvtss2sd	36(%rbp), %xmm1, %xmm1
	vxorpd	%xmm7, %xmm7, %xmm7
	vxorpd	%xmm6, %xmm6, %xmm6
	vcvtss2sd	28(%rbp), %xmm7, %xmm7
	vcvtss2sd	24(%rbp), %xmm6, %xmm6
	vxorpd	%xmm5, %xmm5, %xmm5
	vxorpd	%xmm4, %xmm4, %xmm4
	vcvtss2sd	20(%rbp), %xmm5, %xmm5
	vcvtss2sd	16(%rbp), %xmm4, %xmm4
	vxorpd	%xmm3, %xmm3, %xmm3
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtss2sd	12(%rbp), %xmm3, %xmm3
	movl	$.LC47, %esi
	movl	$8, %eax
	vcvtss2sd	8(%rbp), %xmm2, %xmm2
	addq	$44, %rbp
	vmovsd	%xmm1, 8(%rsp)
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	-12(%rbp), %xmm1, %xmm1
	vmovsd	%xmm1, (%rsp)
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtss2sd	-40(%rbp), %xmm1, %xmm1
	call	fprintf
	cmpq	%rbx, %r12
	popq	%rax
	.cfi_def_cfa_offset 360
	popq	%rdx
	.cfi_def_cfa_offset 352
	vmovsd	8(%rsp), %xmm10
	jne	.L253
	movq	24(%rsp), %r14
	movq	160(%rsp), %rbx
	movq	168(%rsp), %rbp
	vmovss	156(%rsp), %xmm8
.L230:
	movq	32(%rsp), %rdi
	vmovsd	%xmm10, 24(%rsp)
	vmovss	%xmm8, 8(%rsp)
	call	fflush
	vmovss	8(%rsp), %xmm8
	vmovsd	24(%rsp), %xmm10
	jmp	.L228
.L264:
	movl	$.LC63, %edi
	movl	$2, %ecx
	movq	%rax, %rsi
	repz cmpsb
	jne	.L221
	movq	stdout(%rip), %rax
	movq	%rax, 32(%rsp)
	testq	%rax, %rax
	jne	.L220
	jmp	.L261
.L221:
	movl	$.LC64, %esi
	movq	%rax, %rdi
	vmovss	%xmm9, 16(%rsp)
	call	fopen
	vmovss	16(%rsp), %xmm9
	testq	%rax, %rax
	movq	%rax, 32(%rsp)
	jne	.L220
	movl	$.LC65, %edi
	call	perror
	jmp	.L261
.L267:
	movq	248(%rsp), %rax
	cmpq	%rax, %r14
	jl	.L260
	vxorps	%xmm8, %xmm8, %xmm8
	jmp	.L240
	.cfi_endproc
.LFE4956:
	.size	_Z8mpi_mainiPPc, .-_Z8mpi_mainiPPc
	.section	.text.unlikely
.LCOLDE73:
	.text
.LHOTE73:
	.section	.text.unlikely
.LCOLDB74:
	.section	.text.startup,"ax",@progbits
.LHOTB74:
	.p2align 4,,15
	.globl	main
	.type	main, @function
main:
.LFB4957:
	.cfi_startproc
	jmp	_Z8mpi_mainiPPc
	.cfi_endproc
.LFE4957:
	.size	main, .-main
	.section	.text.unlikely
.LCOLDE74:
	.section	.text.startup
.LHOTE74:
	.section	.rodata.cst4,"aM",@progbits,4
	.align 4
.LC11:
	.long	1065353216
	.section	.rodata.cst16,"aM",@progbits,16
	.align 16
.LC19:
	.long	2147483648
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC23:
	.long	1056964608
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC25:
	.long	0
	.long	1071644672
	.align 8
.LC35:
	.long	0
	.long	1073741824
	.align 8
.LC36:
	.long	0
	.long	-1074790400
	.align 8
.LC38:
	.long	0
	.long	-1073741824
	.align 8
.LC41:
	.long	0
	.long	1072693248
	.section	.rodata.cst16
	.align 16
.LC42:
	.long	2147483647
	.long	0
	.long	0
	.long	0
	.section	.rodata.cst8
	.align 8
.LC43:
	.long	0
	.long	0
	.section	.rodata.cst4
	.align 4
.LC44:
	.long	1077936128
	.section	.rodata.cst32,"aM",@progbits,32
	.align 32
.LC58:
	.quad	0
	.quad	-1
	.quad	1
	.quad	9876543210987654
	.section	.rodata.cst8
	.align 8
.LC66:
	.long	3894859413
	.long	1041313291
	.ident	"GCC: (GNU) 5.4.0"
	.section	.note.GNU-stack,"",@progbits
