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
	.string	"mm_seq.h"
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
	pushq	%r13
	pushq	%r12
	pushq	%r10
	.cfi_escape 0xf,0x3,0x76,0x58,0x6
	.cfi_escape 0x10,0xf,0x2,0x76,0x78
	.cfi_escape 0x10,0xe,0x2,0x76,0x70
	.cfi_escape 0x10,0xd,0x2,0x76,0x68
	.cfi_escape 0x10,0xc,0x2,0x76,0x60
	pushq	%rbx
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	movq	(%rdi), %r14
	movq	8(%rdi), %r11
	movq	8(%rsi), %rbx
	cmpq	(%rsi), %r11
	jne	.L51
	movq	%rdx, %r13
	cmpq	(%rdx), %r14
	jne	.L52
	cmpq	8(%rdx), %rbx
	jne	.L37
	xorl	%edx, %edx
	testq	%r14, %r14
	jle	.L49
.L48:
	testq	%rbx, %rbx
	jle	.L44
	movq	%rdx, %rcx
	movq	24(%r13), %rax
	xorl	%r10d, %r10d
	imulq	16(%r13), %rcx
	leaq	(%rax,%rcx,4), %r12
	.p2align 4,,10
	.p2align 3
.L45:
#APP
# 14 "mm_seq.h" 1
	# ==================
# 0 "" 2
#NO_APP
	testq	%r11, %r11
	jle	.L46
	movq	16(%rsi), %rcx
	movq	%rdx, %r9
	vxorps	%xmm0, %xmm0, %xmm0
	imulq	16(%rdi), %r9
	movq	24(%rdi), %r15
	leaq	0(,%rcx,4), %r8
	movq	24(%rsi), %rcx
	leaq	(%r15,%r9,4), %rax
	addq	%r11, %r9
	leaq	(%r15,%r9,4), %r9
	leaq	(%rcx,%r10,4), %rcx
	.p2align 4,,10
	.p2align 3
.L43:
	vbroadcastss	(%rax), %ymm1
	addq	$4, %rax
	vfmadd231ps	(%rcx), %ymm1, %ymm0
	addq	%r8, %rcx
	cmpq	%r9, %rax
	jne	.L43
.L42:
#APP
# 19 "mm_seq.h" 1
	# ------------------
# 0 "" 2
#NO_APP
	vmovups	%ymm0, (%r12,%r10,4)
	addq	$8, %r10
	cmpq	%r10, %rbx
	jg	.L45
.L44:
	addq	$1, %rdx
	cmpq	%rdx, %r14
	jne	.L48
	vzeroupper
.L49:
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
	vxorps	%xmm0, %xmm0, %xmm0
	jmp	.L42
.L51:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$8, %edx
	movl	$.LC5, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L52:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$9, %edx
	movl	$.LC5, %esi
	movl	$.LC7, %edi
	call	__assert_fail
.L37:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$10, %edx
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
.L56:
	movl	$.LC12, %edx
	movq	%rbp, %rsi
	movl	%r12d, %edi
	call	getopt
	cmpl	$77, %eax
	je	.L58
	jle	.L70
	cmpl	$114, %eax
	je	.L62
	cmpl	$120, %eax
	je	.L63
	cmpl	$78, %eax
	je	.L71
.L57:
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
.L71:
	.cfi_restore_state
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 8(%rbx)
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L70:
	cmpl	$-1, %eax
	je	.L67
	cmpl	$75, %eax
	jne	.L57
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 16(%rbx)
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L67:
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
.L58:
	.cfi_restore_state
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, (%rbx)
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L63:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 32(%rbx)
	jmp	.L56
	.p2align 4,,10
	.p2align 3
.L62:
	movq	optarg(%rip), %rdi
	movl	$10, %edx
	xorl	%esi, %esi
	call	strtol
	movq	%rax, 24(%rbx)
	jmp	.L56
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
.L78:
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
	jle	.L73
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
.L74:
	vmovss	(%rdi), %xmm5
	addq	$4, %rdi
	vfmadd231ss	(%r8), %xmm5, %xmm1
	addq	%r9, %r8
	cmpq	%r10, %rdi
	jne	.L74
.L73:
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
	ja	.L86
	vmaxss	%xmm0, %xmm2, %xmm0
	subq	$1, %rbx
	jne	.L78
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
.L86:
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
	leaq	8(%rsp), %r10
	.cfi_def_cfa 10, 0
	andq	$-32, %rsp
	pushq	-8(%r10)
	pushq	%rbp
	.cfi_escape 0x10,0x6,0x2,0x76,0
	movq	%rsp, %rbp
	pushq	%r15
	leaq	-96(%rbp), %rdx
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
	subq	$256, %rsp
	.cfi_escape 0x10,0x3,0x2,0x76,0x50
	call	_Z10parse_argsiPPcP9options_t
	movl	$1, %edx
	testl	%eax, %eax
	jne	.L117
.L113:
	addq	$256, %rsp
	movl	%edx, %eax
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
.L117:
	.cfi_restore_state
	movq	-64(%rbp), %rax
	leaq	-224(%rbp), %rcx
	movq	-80(%rbp), %r13
	leaq	-192(%rbp), %rdi
	movq	-96(%rbp), %rbx
	movq	-88(%rbp), %r12
	movq	%rax, %rdx
	movw	%ax, -220(%rbp)
	sarq	$32, %rdx
	movw	%dx, -224(%rbp)
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rbx, %r15
	imulq	%r13, %r15
	sarq	$16, %rdx
	movq	%r12, %r14
	movw	%dx, -222(%rbp)
	imulq	%r13, %r14
	movq	%r13, %rdx
	call	_Z4initR6matrixllPt
	leaq	-224(%rbp), %rcx
	movq	%r12, %rdx
	movq	%r13, %rsi
	leaq	-160(%rbp), %rdi
	call	_Z4initR6matrixllPt
	leaq	-128(%rbp), %rdi
	movq	%r12, %rdx
	movq	%rbx, %rsi
	call	_Z4zeroR6matrixll
	movq	%rbx, %rax
	salq	$2, %r15
	xorl	%ecx, %ecx
	imulq	%r12, %rax
	xorl	%edx, %edx
	xorl	%esi, %esi
	movl	$main._omp_fn.0, %edi
	salq	$2, %r14
	salq	$2, %rax
	movq	%rax, -232(%rbp)
	leaq	(%rbx,%rbx), %rax
	imulq	%r12, %rax
	imulq	%r13, %rax
	imulq	-72(%rbp), %rax
	movq	%rax, -272(%rbp)
	call	GOMP_parallel
	movq	%r15, %rcx
	movq	%r13, %rdx
	movq	%rbx, %rsi
	movl	$.LC22, %edi
	xorl	%eax, %eax
	call	printf
	movq	%r14, %rcx
	movq	%r12, %rdx
	movq	%r13, %rsi
	movl	$.LC23, %edi
	xorl	%eax, %eax
	call	printf
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movl	$.LC24, %edi
	movq	-232(%rbp), %r13
	xorl	%eax, %eax
	movq	%r13, %rcx
	call	printf
	movq	-72(%rbp), %rsi
	movl	$.LC25, %edi
	xorl	%eax, %eax
	call	printf
	leaq	(%r15,%r14), %rdx
	movl	$.LC26, %edi
	xorl	%eax, %eax
	movq	-272(%rbp), %rsi
	addq	%r13, %rdx
	call	printf
	leaq	-208(%rbp), %rsi
	xorl	%edi, %edi
	call	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	vcvtsi2sdq	-208(%rbp), %xmm0, %xmm0
	vcvtsi2sdq	-200(%rbp), %xmm1, %xmm1
	vfmadd132sd	.LC20(%rip), %xmm0, %xmm1
	vmovsd	%xmm1, -280(%rbp)
	rdtsc
	salq	$32, %rdx
	orq	%rdx, %rax
	movq	%rax, -304(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -288(%rbp)
	testq	%rax, %rax
	jle	.L97
	movq	-192(%rbp), %rdx
	movq	-152(%rbp), %rax
	movq	-160(%rbp), %rbx
	cmpq	-184(%rbp), %rbx
	jne	.L92
	movq	-128(%rbp), %rdi
	movq	%rdi, -232(%rbp)
	cmpq	%rdx, %rdi
	jne	.L93
	movq	-120(%rbp), %r10
	cmpq	%rax, %r10
	jne	.L118
	movq	-112(%rbp), %rax
	leaq	0(,%rbx,4), %r14
	movq	$0, -264(%rbp)
	movq	-104(%rbp), %r15
	movq	%rax, -248(%rbp)
	movq	-168(%rbp), %rax
	movq	%rax, -296(%rbp)
	movq	-136(%rbp), %rax
	movq	%rax, -256(%rbp)
	movq	-176(%rbp), %rax
	salq	$2, %rax
	movq	%rax, -240(%rbp)
	movq	-144(%rbp), %rax
	leaq	0(,%rax,4), %rsi
.L98:
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	cmpq	$0, -232(%rbp)
	movq	-296(%rbp), %r9
	jle	.L100
.L109:
	testq	%r10, %r10
	jle	.L104
	movq	-256(%rbp), %r8
	leaq	(%r14,%r9), %rcx
	xorl	%edi, %edi
	leaq	(%r15,%r13,4), %r11
	.p2align 4,,10
	.p2align 3
.L105:
#APP
# 14 "mm_seq.h" 1
	# ==================
# 0 "" 2
#NO_APP
	testq	%rbx, %rbx
	jle	.L107
	movq	%r8, %rdx
	movq	%r9, %rax
	vxorps	%xmm0, %xmm0, %xmm0
	.p2align 4,,10
	.p2align 3
.L103:
	vbroadcastss	(%rax), %ymm1
	addq	$4, %rax
	vfmadd231ps	(%rdx), %ymm1, %ymm0
	addq	%rsi, %rdx
	cmpq	%rax, %rcx
	jne	.L103
.L102:
#APP
# 19 "mm_seq.h" 1
	# ------------------
# 0 "" 2
#NO_APP
	vmovups	%ymm0, (%r11,%rdi,4)
	addq	$8, %rdi
	addq	$32, %r8
	cmpq	%r10, %rdi
	jl	.L105
.L104:
	addq	$1, %r12
	addq	-248(%rbp), %r13
	addq	-240(%rbp), %r9
	cmpq	-232(%rbp), %r12
	jne	.L109
.L100:
	addq	$1, -264(%rbp)
	movq	-264(%rbp), %rax
	cmpq	-288(%rbp), %rax
	jne	.L98
	vzeroupper
.L97:
	rdtsc
	xorl	%edi, %edi
	leaq	-208(%rbp), %rsi
	salq	$32, %rdx
	movq	%rax, %rbx
	orq	%rdx, %rbx
	call	clock_gettime
	vxorpd	%xmm0, %xmm0, %xmm0
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	subq	-304(%rbp), %rbx
	movl	$.LC27, %edi
	vcvtsi2sdq	-208(%rbp), %xmm1, %xmm1
	vcvtsi2sdq	-200(%rbp), %xmm0, %xmm0
	vfmadd132sd	.LC20(%rip), %xmm1, %xmm0
	vsubsd	-280(%rbp), %xmm0, %xmm3
	movq	%rbx, %rsi
	vmovsd	%xmm3, -232(%rbp)
	call	printf
	movl	$.LC28, %edi
	movl	$1, %eax
	vmovsd	-232(%rbp), %xmm0
	call	printf
	vxorpd	%xmm2, %xmm2, %xmm2
	vxorpd	%xmm0, %xmm0, %xmm0
	movl	$.LC29, %edi
	vcvtsi2sdq	-272(%rbp), %xmm2, %xmm2
	movl	$1, %eax
	vcvtsi2sdq	%rbx, %xmm0, %xmm0
	addq	%rbx, %rbx
	vmovsd	%xmm2, -240(%rbp)
	vdivsd	%xmm0, %xmm2, %xmm0
	call	printf
	movl	$.LC30, %edi
	movl	$1, %eax
	vmovsd	.LC20(%rip), %xmm5
	vmulsd	-240(%rbp), %xmm5, %xmm0
	vdivsd	-232(%rbp), %xmm0, %xmm0
	call	printf
	movl	$.LC31, %edi
	movl	$1, %eax
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtsi2sdq	%rbx, %xmm0, %xmm0
	vdivsd	-240(%rbp), %xmm0, %xmm0
	call	printf
	movq	-72(%rbp), %rcx
	leaq	-128(%rbp), %rdx
	leaq	-160(%rbp), %rsi
	leaq	-192(%rbp), %rdi
	call	_Z5checkR6matrixS0_S0_l
	movq	-168(%rbp), %rdi
	call	free
	movq	-136(%rbp), %rdi
	call	free
	movq	-104(%rbp), %rdi
	call	free
	xorl	%edx, %edx
	jmp	.L113
	.p2align 4,,10
	.p2align 3
.L107:
	vxorps	%xmm0, %xmm0, %xmm0
	jmp	.L102
.L92:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$8, %edx
	movl	$.LC5, %esi
	movl	$.LC6, %edi
	call	__assert_fail
.L118:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$10, %edx
	movl	$.LC5, %esi
	movl	$.LC8, %edi
	call	__assert_fail
.L93:
	movl	$_ZZ2mmR6matrixS0_S0_E19__PRETTY_FUNCTION__, %ecx
	movl	$9, %edx
	movl	$.LC5, %esi
	movl	$.LC7, %edi
	call	__assert_fail
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
