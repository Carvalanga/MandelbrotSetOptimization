	.file	"mandelbrotSet.cpp"
	.text
	.section	.text._ZnwmPv,"axG",@progbits,_ZnwmPv,comdat
	.weak	_ZnwmPv
	.type	_ZnwmPv, @function
_ZnwmPv:
.LFB4912:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4912:
	.size	_ZnwmPv, .-_ZnwmPv
	.section	.text._ZN2sf8DrawableD2Ev,"axG",@progbits,_ZN2sf8DrawableD5Ev,comdat
	.align 2
	.weak	_ZN2sf8DrawableD2Ev
	.type	_ZN2sf8DrawableD2Ev, @function
_ZN2sf8DrawableD2Ev:
.LFB7725:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVN2sf8DrawableE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7725:
	.size	_ZN2sf8DrawableD2Ev, .-_ZN2sf8DrawableD2Ev
	.weak	_ZN2sf8DrawableD1Ev
	.set	_ZN2sf8DrawableD1Ev,_ZN2sf8DrawableD2Ev
	.section	.text._ZN2sf8DrawableD0Ev,"axG",@progbits,_ZN2sf8DrawableD5Ev,comdat
	.align 2
	.weak	_ZN2sf8DrawableD0Ev
	.type	_ZN2sf8DrawableD0Ev, @function
_ZN2sf8DrawableD0Ev:
.LFB7727:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf8DrawableD1Ev
	movq	-8(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE7727:
	.size	_ZN2sf8DrawableD0Ev, .-_ZN2sf8DrawableD0Ev
	.section	.rodata
	.align 4
	.type	_ZL13DEFAULT_SCALE, @object
	.size	_ZL13DEFAULT_SCALE, 4
_ZL13DEFAULT_SCALE:
	.long	1000593162
	.align 4
	.type	_ZL24DEFAULT_CALCULATIONS_CNT, @object
	.size	_ZL24DEFAULT_CALCULATIONS_CNT, 4
_ZL24DEFAULT_CALCULATIONS_CNT:
	.long	256
	.local	_ZL19MAX_RADIUS_SQUARE_V
	.comm	_ZL19MAX_RADIUS_SQUARE_V,32,32
	.section	.text._ZN2sf11VertexArrayD2Ev,"axG",@progbits,_ZN2sf11VertexArrayD5Ev,comdat
	.align 2
	.weak	_ZN2sf11VertexArrayD2Ev
	.type	_ZN2sf11VertexArrayD2Ev, @function
_ZN2sf11VertexArrayD2Ev:
.LFB8147:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	leaq	16+_ZTVN2sf11VertexArrayE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf8DrawableD2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8147:
	.size	_ZN2sf11VertexArrayD2Ev, .-_ZN2sf11VertexArrayD2Ev
	.weak	_ZN2sf11VertexArrayD1Ev
	.set	_ZN2sf11VertexArrayD1Ev,_ZN2sf11VertexArrayD2Ev
	.section	.text._ZN2sf11VertexArrayD0Ev,"axG",@progbits,_ZN2sf11VertexArrayD5Ev,comdat
	.align 2
	.weak	_ZN2sf11VertexArrayD0Ev
	.type	_ZN2sf11VertexArrayD0Ev, @function
_ZN2sf11VertexArrayD0Ev:
.LFB8149:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf11VertexArrayD1Ev
	movq	-8(%rbp), %rax
	movl	$40, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8149:
	.size	_ZN2sf11VertexArrayD0Ev, .-_ZN2sf11VertexArrayD0Ev
	.section	.text._ZN2sf8DrawableC2ERKS0_,"axG",@progbits,_ZN2sf8DrawableC5ERKS0_,comdat
	.align 2
	.weak	_ZN2sf8DrawableC2ERKS0_
	.type	_ZN2sf8DrawableC2ERKS0_, @function
_ZN2sf8DrawableC2ERKS0_:
.LFB8152:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	16+_ZTVN2sf8DrawableE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8152:
	.size	_ZN2sf8DrawableC2ERKS0_, .-_ZN2sf8DrawableC2ERKS0_
	.weak	_ZN2sf8DrawableC1ERKS0_
	.set	_ZN2sf8DrawableC1ERKS0_,_ZN2sf8DrawableC2ERKS0_
	.section	.text._ZN2sf11VertexArrayC2ERKS0_,"axG",@progbits,_ZN2sf11VertexArrayC5ERKS0_,comdat
	.align 2
	.weak	_ZN2sf11VertexArrayC2ERKS0_
	.type	_ZN2sf11VertexArrayC2ERKS0_, @function
_ZN2sf11VertexArrayC2ERKS0_:
.LFB8154:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8154
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf8DrawableC2ERKS0_
	leaq	16+_ZTVN2sf11VertexArrayE(%rip), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-24(%rbp), %rax
	addq	$8, %rax
	movq	-32(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1ERKS3_
.LEHE0:
	movq	-32(%rbp), %rax
	movl	32(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, 32(%rax)
	jmp	.L11
.L10:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf8DrawableD2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB1:
	call	_Unwind_Resume@PLT
.LEHE1:
.L11:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8154:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table._ZN2sf11VertexArrayC2ERKS0_,"aG",@progbits,_ZN2sf11VertexArrayC5ERKS0_,comdat
.LLSDA8154:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8154-.LLSDACSB8154
.LLSDACSB8154:
	.uleb128 .LEHB0-.LFB8154
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L10-.LFB8154
	.uleb128 0
	.uleb128 .LEHB1-.LFB8154
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE8154:
	.section	.text._ZN2sf11VertexArrayC2ERKS0_,"axG",@progbits,_ZN2sf11VertexArrayC5ERKS0_,comdat
	.size	_ZN2sf11VertexArrayC2ERKS0_, .-_ZN2sf11VertexArrayC2ERKS0_
	.weak	_ZN2sf11VertexArrayC1ERKS0_
	.set	_ZN2sf11VertexArrayC1ERKS0_,_ZN2sf11VertexArrayC2ERKS0_
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev:
.LFB8164:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIN2sf6VertexEED2Ev
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8164:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EOS3_,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC5EOS3_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EOS3_
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EOS3_, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EOS3_:
.LFB8166:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1EOS4_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8166:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EOS3_, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EOS3_
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC1EOS3_
	.set	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC1EOS3_,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EOS3_
	.section	.text._ZNSt6vectorIN2sf6VertexESaIS1_EEC2EOS3_,"axG",@progbits,_ZNSt6vectorIN2sf6VertexESaIS1_EEC5EOS3_,comdat
	.align 2
	.weak	_ZNSt6vectorIN2sf6VertexESaIS1_EEC2EOS3_
	.type	_ZNSt6vectorIN2sf6VertexESaIS1_EEC2EOS3_, @function
_ZNSt6vectorIN2sf6VertexESaIS1_EEC2EOS3_:
.LFB8168:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EOS3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8168:
	.size	_ZNSt6vectorIN2sf6VertexESaIS1_EEC2EOS3_, .-_ZNSt6vectorIN2sf6VertexESaIS1_EEC2EOS3_
	.weak	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1EOS3_
	.set	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1EOS3_,_ZNSt6vectorIN2sf6VertexESaIS1_EEC2EOS3_
	.section	.text._ZN2sf11VertexArrayC2EOS0_,"axG",@progbits,_ZN2sf11VertexArrayC5EOS0_,comdat
	.align 2
	.weak	_ZN2sf11VertexArrayC2EOS0_
	.type	_ZN2sf11VertexArrayC2EOS0_, @function
_ZN2sf11VertexArrayC2EOS0_:
.LFB8170:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf8DrawableC2ERKS0_
	leaq	16+_ZTVN2sf11VertexArrayE(%rip), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	addq	$8, %rax
	movq	-16(%rbp), %rdx
	addq	$8, %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1EOS3_
	movq	-16(%rbp), %rax
	movl	32(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 32(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8170:
	.size	_ZN2sf11VertexArrayC2EOS0_, .-_ZN2sf11VertexArrayC2EOS0_
	.weak	_ZN2sf11VertexArrayC1EOS0_
	.set	_ZN2sf11VertexArrayC1EOS0_,_ZN2sf11VertexArrayC2EOS0_
	.section	.text._ZN14MANDELBROT_SETC2EOS_,"axG",@progbits,_ZN14MANDELBROT_SETC5EOS_,comdat
	.align 2
	.weak	_ZN14MANDELBROT_SETC2EOS_
	.type	_ZN14MANDELBROT_SETC2EOS_, @function
_ZN14MANDELBROT_SETC2EOS_:
.LFB8172:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN2sf11VertexArrayC1EOS0_
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	40(%rdx), %rdx
	movq	%rdx, 40(%rax)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	48(%rdx), %rdx
	movq	%rdx, 48(%rax)
	movq	-16(%rbp), %rax
	vmovss	56(%rax), %xmm0
	movq	-8(%rbp), %rax
	vmovss	%xmm0, 56(%rax)
	movq	-16(%rbp), %rax
	movl	60(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 60(%rax)
	movq	-16(%rbp), %rax
	movl	64(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 64(%rax)
	movq	-16(%rbp), %rax
	movl	68(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, 68(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8172:
	.size	_ZN14MANDELBROT_SETC2EOS_, .-_ZN14MANDELBROT_SETC2EOS_
	.weak	_ZN14MANDELBROT_SETC1EOS_
	.set	_ZN14MANDELBROT_SETC1EOS_,_ZN14MANDELBROT_SETC2EOS_
	.text
	.globl	_Z17mandelbrotSetCtorii
	.type	_Z17mandelbrotSetCtorii, @function
_Z17mandelbrotSetCtorii:
.LFB8145:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8145
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r10
	pushq	%rbx
	subq	$64, %rsp
	.cfi_offset 10, -24
	.cfi_offset 3, -32
	leaq	16(%rbp), %r10
	movq	%rdi, -72(%rbp)
	movl	%esi, -76(%rbp)
	movl	%edx, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	-64(%rbp), %rax
	movl	-80(%rbp), %edx
	movl	-76(%rbp), %ecx
	movl	%ecx, %esi
	movq	%rax, %rdi
.LEHB2:
	call	_Z15setVertexMatrixii
.LEHE2:
	movq	-72(%rbp), %rax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, (%rax)
	vmovdqu	%ymm0, 32(%rax)
	vmovq	%xmm0, 64(%rax)
	movq	-72(%rbp), %rax
	vmovss	.LC0(%rip), %xmm0
	vmovss	%xmm0, 56(%rax)
	movq	-72(%rbp), %rax
	movl	$256, 60(%rax)
	movq	-72(%rbp), %rax
	movl	$1, 68(%rax)
	movq	-72(%rbp), %rax
	leaq	-64(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_ZN2sf11VertexArrayC1ERKS0_
.LEHE3:
	movq	-72(%rbp), %rax
	leaq	40(%rax), %rdx
	vcvtsi2ssl	-76(%rbp), %xmm2, %xmm2
	vmovd	%xmm2, %eax
	vcvtsi2ssl	-80(%rbp), %xmm0, %xmm0
	vmovaps	%xmm0, %xmm1
	vmovd	%eax, %xmm0
	movq	%rdx, %rdi
	call	_ZN2sf7Vector2IfEC1Eff
	movq	-72(%rbp), %rax
	leaq	48(%rax), %rdx
	vxorps	%xmm1, %xmm1, %xmm1
	movl	.LC1(%rip), %eax
	vmovd	%eax, %xmm0
	movq	%rdx, %rdi
	call	_ZN2sf7Vector2IfEC1Eff
	nop
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf11VertexArrayD1Ev
	nop
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L21
	jmp	.L23
.L22:
	endbr64
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf11VertexArrayD1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L23:
	call	__stack_chk_fail@PLT
.L21:
	movq	-72(%rbp), %rax
	addq	$64, %rsp
	popq	%rbx
	popq	%r10
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8145:
	.section	.gcc_except_table,"a",@progbits
.LLSDA8145:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8145-.LLSDACSB8145
.LLSDACSB8145:
	.uleb128 .LEHB2-.LFB8145
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB8145
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L22-.LFB8145
	.uleb128 0
	.uleb128 .LEHB4-.LFB8145
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE8145:
	.text
	.size	_Z17mandelbrotSetCtorii, .-_Z17mandelbrotSetCtorii
	.globl	_Z15setVertexMatrixii
	.type	_Z15setVertexMatrixii, @function
_Z15setVertexMatrixii:
.LFB8174:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8174
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movl	%esi, -60(%rbp)
	movl	%edx, -64(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movl	-60(%rbp), %eax
	imull	-64(%rbp), %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
.LEHB5:
	call	_ZN2sf11VertexArrayC1ENS_13PrimitiveTypeEm@PLT
.LEHE5:
	movl	$0, -40(%rbp)
	jmp	.L25
.L28:
	movl	$0, -36(%rbp)
	jmp	.L26
.L27:
	vcvtsi2ssl	-40(%rbp), %xmm0, %xmm0
	vcvtsi2ssl	-36(%rbp), %xmm2, %xmm2
	vmovd	%xmm2, %edx
	leaq	-32(%rbp), %rax
	vmovaps	%xmm0, %xmm1
	vmovd	%edx, %xmm0
	movq	%rax, %rdi
	call	_ZN2sf7Vector2IfEC1Eff
	movl	-40(%rbp), %eax
	imull	-64(%rbp), %eax
	movl	%eax, %edx
	movl	-36(%rbp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	movq	-56(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZN2sf11VertexArrayixEm@PLT
.LEHE6:
	movq	-32(%rbp), %rdx
	movq	%rdx, (%rax)
	addl	$1, -36(%rbp)
.L26:
	movl	-36(%rbp), %eax
	cmpl	-60(%rbp), %eax
	jl	.L27
	addl	$1, -40(%rbp)
.L25:
	movl	-40(%rbp), %eax
	cmpl	-64(%rbp), %eax
	jl	.L28
	jmp	.L34
.L33:
	endbr64
	movq	%rax, %rbx
	movq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN2sf11VertexArrayD1Ev
	movq	%rbx, %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L31
	call	__stack_chk_fail@PLT
.L31:
	movq	%rax, %rdi
.LEHB7:
	call	_Unwind_Resume@PLT
.LEHE7:
.L34:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L32
	call	__stack_chk_fail@PLT
.L32:
	movq	-56(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8174:
	.section	.gcc_except_table
.LLSDA8174:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8174-.LLSDACSB8174
.LLSDACSB8174:
	.uleb128 .LEHB5-.LFB8174
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB6-.LFB8174
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L33-.LFB8174
	.uleb128 0
	.uleb128 .LEHB7-.LFB8174
	.uleb128 .LEHE7-.LEHB7
	.uleb128 0
	.uleb128 0
.LLSDACSE8174:
	.text
	.size	_Z15setVertexMatrixii, .-_Z15setVertexMatrixii
	.section	.rodata
	.align 4
	.type	_ZL9PACK_SIZE, @object
	.size	_ZL9PACK_SIZE, 4
_ZL9PACK_SIZE:
	.long	2
	.text
	.globl	_Z12setSeqVectorP14MANDELBROT_SETPDv8_fi
	.type	_Z12setSeqVectorP14MANDELBROT_SETPDv8_fi, @function
_Z12setSeqVectorP14MANDELBROT_SETPDv8_fi:
.LFB8175:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$8, %rsp
	movq	%rdi, -80(%rsp)
	movq	%rsi, -88(%rsp)
	movl	%edx, -92(%rsp)
	movl	$0, -60(%rsp)
	jmp	.L36
.L38:
	movl	-60(%rsp), %eax
	leal	0(,%rax,8), %edx
	movl	-92(%rsp), %eax
	addl	%edx, %eax
	addl	$7, %eax
	vcvtsi2ssl	%eax, %xmm0, %xmm0
	movl	-60(%rsp), %eax
	leal	0(,%rax,8), %edx
	movl	-92(%rsp), %eax
	addl	%edx, %eax
	addl	$6, %eax
	vcvtsi2ssl	%eax, %xmm1, %xmm1
	movl	-60(%rsp), %eax
	leal	0(,%rax,8), %edx
	movl	-92(%rsp), %eax
	addl	%edx, %eax
	addl	$5, %eax
	vcvtsi2ssl	%eax, %xmm2, %xmm2
	movl	-60(%rsp), %eax
	leal	0(,%rax,8), %edx
	movl	-92(%rsp), %eax
	addl	%edx, %eax
	addl	$4, %eax
	vcvtsi2ssl	%eax, %xmm3, %xmm3
	movl	-60(%rsp), %eax
	leal	0(,%rax,8), %edx
	movl	-92(%rsp), %eax
	addl	%edx, %eax
	addl	$3, %eax
	vcvtsi2ssl	%eax, %xmm4, %xmm4
	movl	-60(%rsp), %eax
	leal	0(,%rax,8), %edx
	movl	-92(%rsp), %eax
	addl	%edx, %eax
	addl	$2, %eax
	vcvtsi2ssl	%eax, %xmm5, %xmm5
	movl	-60(%rsp), %eax
	leal	0(,%rax,8), %edx
	movl	-92(%rsp), %eax
	addl	%edx, %eax
	addl	$1, %eax
	vcvtsi2ssl	%eax, %xmm6, %xmm6
	movl	-60(%rsp), %eax
	leal	0(,%rax,8), %edx
	movl	-92(%rsp), %eax
	addl	%edx, %eax
	vcvtsi2ssl	%eax, %xmm7, %xmm7
	vmovss	%xmm7, -56(%rsp)
	vmovss	%xmm6, -52(%rsp)
	vmovss	%xmm5, -48(%rsp)
	vmovss	%xmm4, -44(%rsp)
	vmovss	%xmm3, -40(%rsp)
	vmovss	%xmm2, -36(%rsp)
	vmovss	%xmm1, -32(%rsp)
	vmovss	%xmm0, -28(%rsp)
	vmovss	-56(%rsp), %xmm1
	vmovss	-52(%rsp), %xmm0
	vunpcklps	%xmm1, %xmm0, %xmm1
	vmovss	-48(%rsp), %xmm2
	vmovss	-44(%rsp), %xmm0
	vunpcklps	%xmm2, %xmm0, %xmm0
	vmovlhps	%xmm1, %xmm0, %xmm1
	vmovss	-40(%rsp), %xmm2
	vmovss	-36(%rsp), %xmm0
	vunpcklps	%xmm2, %xmm0, %xmm2
	vmovss	-32(%rsp), %xmm3
	vmovss	-28(%rsp), %xmm0
	vunpcklps	%xmm3, %xmm0, %xmm0
	vmovlhps	%xmm2, %xmm0, %xmm0
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	vmovaps	%ymm0, -24(%rsp)
	movq	-80(%rsp), %rax
	vmovss	40(%rax), %xmm0
	vmovss	.LC2(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vshufps	$0, %xmm0, %xmm0, %xmm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, %ymm1
	vmovaps	-24(%rsp), %ymm0
	vsubps	%ymm1, %ymm0, %ymm0
	movq	-80(%rsp), %rax
	vmovss	56(%rax), %xmm1
	vshufps	$0, %xmm1, %xmm1, %xmm1
	vinsertf128	$1, %xmm1, %ymm1, %ymm1
	vmulps	%ymm1, %ymm0, %ymm0
	movq	-80(%rsp), %rax
	vmovss	48(%rax), %xmm2
	movq	-80(%rsp), %rax
	vmovss	56(%rax), %xmm3
	vmovss	.LC3(%rip), %xmm1
	vsubss	%xmm3, %xmm1, %xmm1
	vmulss	%xmm1, %xmm2, %xmm1
	vshufps	$0, %xmm1, %xmm1, %xmm1
	vinsertf128	$1, %xmm1, %ymm1, %ymm1
	vaddps	%ymm1, %ymm0, %ymm0
	vmovaps	%ymm0, -24(%rsp)
	movl	-60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-88(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	-24(%rsp), %ymm0
	vmovaps	%ymm0, (%rax)
	addl	$1, -60(%rsp)
.L36:
	cmpl	$1, -60(%rsp)
	jle	.L38
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8175:
	.size	_Z12setSeqVectorP14MANDELBROT_SETPDv8_fi, .-_Z12setSeqVectorP14MANDELBROT_SETPDv8_fi
	.globl	_Z12setDupVectorP14MANDELBROT_SETPDv8_fi
	.type	_Z12setDupVectorP14MANDELBROT_SETPDv8_fi, @function
_Z12setDupVectorP14MANDELBROT_SETPDv8_fi:
.LFB8176:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$8, %rsp
	movq	%rdi, -80(%rsp)
	movq	%rsi, -88(%rsp)
	movl	%edx, -92(%rsp)
	vcvtsi2ssl	-92(%rsp), %xmm0, %xmm0
	vcvtsi2ssl	-92(%rsp), %xmm1, %xmm1
	vcvtsi2ssl	-92(%rsp), %xmm2, %xmm2
	vcvtsi2ssl	-92(%rsp), %xmm3, %xmm3
	vcvtsi2ssl	-92(%rsp), %xmm4, %xmm4
	vcvtsi2ssl	-92(%rsp), %xmm5, %xmm5
	vcvtsi2ssl	-92(%rsp), %xmm6, %xmm6
	vcvtsi2ssl	-92(%rsp), %xmm7, %xmm7
	vmovss	%xmm7, -56(%rsp)
	vmovss	%xmm6, -52(%rsp)
	vmovss	%xmm5, -48(%rsp)
	vmovss	%xmm4, -44(%rsp)
	vmovss	%xmm3, -40(%rsp)
	vmovss	%xmm2, -36(%rsp)
	vmovss	%xmm1, -32(%rsp)
	vmovss	%xmm0, -28(%rsp)
	vmovss	-56(%rsp), %xmm1
	vmovss	-52(%rsp), %xmm0
	vunpcklps	%xmm1, %xmm0, %xmm1
	vmovss	-48(%rsp), %xmm2
	vmovss	-44(%rsp), %xmm0
	vunpcklps	%xmm2, %xmm0, %xmm0
	vmovlhps	%xmm1, %xmm0, %xmm1
	vmovss	-40(%rsp), %xmm2
	vmovss	-36(%rsp), %xmm0
	vunpcklps	%xmm2, %xmm0, %xmm2
	vmovss	-32(%rsp), %xmm3
	vmovss	-28(%rsp), %xmm0
	vunpcklps	%xmm3, %xmm0, %xmm0
	vmovlhps	%xmm2, %xmm0, %xmm0
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	vmovaps	%ymm0, -24(%rsp)
	movq	-80(%rsp), %rax
	vmovss	40(%rax), %xmm0
	vmovss	.LC2(%rip), %xmm1
	vdivss	%xmm1, %xmm0, %xmm0
	vshufps	$0, %xmm0, %xmm0, %xmm0
	vinsertf128	$1, %xmm0, %ymm0, %ymm0
	vmovaps	%ymm0, %ymm1
	vmovaps	-24(%rsp), %ymm0
	vsubps	%ymm1, %ymm0, %ymm0
	movq	-80(%rsp), %rax
	vmovss	56(%rax), %xmm1
	vshufps	$0, %xmm1, %xmm1, %xmm1
	vinsertf128	$1, %xmm1, %ymm1, %ymm1
	vmulps	%ymm1, %ymm0, %ymm0
	movq	-80(%rsp), %rax
	vmovss	48(%rax), %xmm2
	movq	-80(%rsp), %rax
	vmovss	56(%rax), %xmm3
	vmovss	.LC3(%rip), %xmm1
	vsubss	%xmm3, %xmm1, %xmm1
	vmulss	%xmm1, %xmm2, %xmm1
	vshufps	$0, %xmm1, %xmm1, %xmm1
	vinsertf128	$1, %xmm1, %ymm1, %ymm1
	vaddps	%ymm1, %ymm0, %ymm0
	vmovaps	%ymm0, -24(%rsp)
	movl	$0, -60(%rsp)
	jmp	.L41
.L42:
	movl	-60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-88(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	-24(%rsp), %ymm0
	vmovaps	%ymm0, (%rax)
	addl	$1, -60(%rsp)
.L41:
	cmpl	$1, -60(%rsp)
	jle	.L42
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8176:
	.size	_Z12setDupVectorP14MANDELBROT_SETPDv8_fi, .-_Z12setDupVectorP14MANDELBROT_SETPDv8_fi
	.globl	_Z7packAddPDv8_fS0_S0_
	.type	_Z7packAddPDv8_fS0_S0_, @function
_Z7packAddPDv8_fS0_S0_:
.LFB8177:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$8, %rsp
	movq	%rdi, -80(%rsp)
	movq	%rsi, -88(%rsp)
	movq	%rdx, -96(%rsp)
	movl	$0, -60(%rsp)
	jmp	.L44
.L46:
	movl	-60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-96(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	(%rax), %ymm0
	movl	-60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-88(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	(%rax), %ymm1
	movl	-60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-80(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	%ymm1, -56(%rsp)
	vmovaps	%ymm0, -24(%rsp)
	vmovaps	-56(%rsp), %ymm0
	vaddps	-24(%rsp), %ymm0, %ymm0
	vmovaps	%ymm0, (%rax)
	addl	$1, -60(%rsp)
.L44:
	cmpl	$1, -60(%rsp)
	jle	.L46
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8177:
	.size	_Z7packAddPDv8_fS0_S0_, .-_Z7packAddPDv8_fS0_S0_
	.globl	_Z7packSubPDv8_fS0_S0_
	.type	_Z7packSubPDv8_fS0_S0_, @function
_Z7packSubPDv8_fS0_S0_:
.LFB8178:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$8, %rsp
	movq	%rdi, -80(%rsp)
	movq	%rsi, -88(%rsp)
	movq	%rdx, -96(%rsp)
	movl	$0, -60(%rsp)
	jmp	.L48
.L50:
	movl	-60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-96(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	(%rax), %ymm0
	movl	-60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-88(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	(%rax), %ymm1
	movl	-60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-80(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	%ymm1, -56(%rsp)
	vmovaps	%ymm0, -24(%rsp)
	vmovaps	-56(%rsp), %ymm0
	vsubps	-24(%rsp), %ymm0, %ymm0
	vmovaps	%ymm0, (%rax)
	addl	$1, -60(%rsp)
.L48:
	cmpl	$1, -60(%rsp)
	jle	.L50
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8178:
	.size	_Z7packSubPDv8_fS0_S0_, .-_Z7packSubPDv8_fS0_S0_
	.globl	_Z7packMulPDv8_fS0_S0_
	.type	_Z7packMulPDv8_fS0_S0_, @function
_Z7packMulPDv8_fS0_S0_:
.LFB8179:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$8, %rsp
	movq	%rdi, -80(%rsp)
	movq	%rsi, -88(%rsp)
	movq	%rdx, -96(%rsp)
	movl	$0, -60(%rsp)
	jmp	.L52
.L54:
	movl	-60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-96(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	(%rax), %ymm0
	movl	-60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-88(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	(%rax), %ymm1
	movl	-60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	-80(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	%ymm1, -56(%rsp)
	vmovaps	%ymm0, -24(%rsp)
	vmovaps	-56(%rsp), %ymm0
	vmulps	-24(%rsp), %ymm0, %ymm0
	vmovaps	%ymm0, (%rax)
	addl	$1, -60(%rsp)
.L52:
	cmpl	$1, -60(%rsp)
	jle	.L54
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8179:
	.size	_Z7packMulPDv8_fS0_S0_, .-_Z7packMulPDv8_fS0_S0_
	.globl	_Z7calcCmpPDv8_fS0_Pi
	.type	_Z7calcCmpPDv8_fS0_Pi, @function
_Z7calcCmpPDv8_fS0_Pi:
.LFB8180:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	addq	$-128, %rsp
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	32(%rsp), %rdx
	movq	40(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z7packAddPDv8_fS0_S0_
	movl	$0, 60(%rsp)
	jmp	.L56
.L58:
	movl	60(%rsp), %eax
	cltq
	salq	$5, %rax
	movq	%rax, %rdx
	movq	40(%rsp), %rax
	addq	%rdx, %rax
	vmovaps	(%rax), %ymm1
	vmovaps	_ZL19MAX_RADIUS_SQUARE_V(%rip), %ymm0
	vcmpps	$14, %ymm1, %ymm0, %ymm0
	vmovaps	%ymm0, 64(%rsp)
	movl	60(%rsp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	24(%rsp), %rax
	addq	%rax, %rdx
	vmovaps	64(%rsp), %ymm0
	vmovaps	%ymm0, 96(%rsp)
	vmovaps	96(%rsp), %ymm0
	vmovmskps	%ymm0, %eax
	nop
	movl	%eax, (%rdx)
	addl	$1, 60(%rsp)
.L56:
	cmpl	$1, 60(%rsp)
	jle	.L58
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8180:
	.size	_Z7calcCmpPDv8_fS0_Pi, .-_Z7calcCmpPDv8_fS0_Pi
	.globl	_Z8sumMasksPi
	.type	_Z8sumMasksPi, @function
_Z8sumMasksPi:
.LFB8181:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)
	movl	$0, -8(%rbp)
	movl	$0, -4(%rbp)
	jmp	.L60
.L61:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-24(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	orl	%eax, -8(%rbp)
	addl	$1, -4(%rbp)
.L60:
	cmpl	$1, -4(%rbp)
	jle	.L61
	movl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8181:
	.size	_Z8sumMasksPi, .-_Z8sumMasksPi
	.globl	_Z17fillMandelbrotSet14MANDELBROT_SET
	.type	_Z17fillMandelbrotSet14MANDELBROT_SET, @function
_Z17fillMandelbrotSet14MANDELBROT_SET:
.LFB8182:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	subq	$544, %rsp
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%fs:40, %rax
	movq	%rax, 536(%rsp)
	xorl	%eax, %eax
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 64(%rsp)
	vmovdqa	%ymm0, 96(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 128(%rsp)
	vmovdqa	%ymm0, 160(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 192(%rsp)
	vmovdqa	%ymm0, 224(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 256(%rsp)
	vmovdqa	%ymm0, 288(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 320(%rsp)
	vmovdqa	%ymm0, 352(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqa	%ymm0, 384(%rsp)
	vmovdqa	%ymm0, 416(%rsp)
	movq	$0, 56(%rsp)
	vpxor	%xmm0, %xmm0, %xmm0
	vmovdqu	%ymm0, 464(%rsp)
	vmovdqu	%ymm0, 496(%rsp)
	movl	$0, 32(%rsp)
	jmp	.L64
.L77:
	movl	32(%rsp), %edx
	leaq	128(%rsp), %rcx
	movq	16(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12setDupVectorP14MANDELBROT_SETPDv8_fi
	vmovdqa	128(%rsp), %ymm0
	vmovdqa	%ymm0, 256(%rsp)
	vmovdqa	160(%rsp), %ymm0
	vmovdqa	%ymm0, 288(%rsp)
	movl	$0, 36(%rsp)
	jmp	.L65
.L76:
	movl	36(%rsp), %edx
	leaq	64(%rsp), %rcx
	movq	16(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z12setSeqVectorP14MANDELBROT_SETPDv8_fi
	vmovdqa	64(%rsp), %ymm0
	vmovdqa	%ymm0, 192(%rsp)
	vmovdqa	96(%rsp), %ymm0
	vmovdqa	%ymm0, 224(%rsp)
	movl	$0, 40(%rsp)
	jmp	.L66
.L67:
	leaq	192(%rsp), %rdx
	leaq	192(%rsp), %rcx
	leaq	320(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z7packMulPDv8_fS0_S0_
	leaq	256(%rsp), %rdx
	leaq	256(%rsp), %rcx
	leaq	384(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z7packMulPDv8_fS0_S0_
	leaq	192(%rsp), %rdx
	leaq	256(%rsp), %rcx
	leaq	256(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z7packMulPDv8_fS0_S0_
	leaq	256(%rsp), %rdx
	leaq	256(%rsp), %rcx
	leaq	256(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z7packAddPDv8_fS0_S0_
	leaq	128(%rsp), %rdx
	leaq	256(%rsp), %rcx
	leaq	256(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z7packAddPDv8_fS0_S0_
	leaq	384(%rsp), %rdx
	leaq	320(%rsp), %rcx
	leaq	192(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z7packSubPDv8_fS0_S0_
	leaq	64(%rsp), %rdx
	leaq	192(%rsp), %rcx
	leaq	192(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_Z7packAddPDv8_fS0_S0_
	addl	$1, 40(%rsp)
.L66:
	movq	16(%rsp), %rax
	movl	60(%rax), %eax
	cmpl	%eax, 40(%rsp)
	jl	.L67
	movl	$0, 44(%rsp)
	jmp	.L68
.L75:
	movl	$16, %eax
	subl	44(%rsp), %eax
	cltq
	movl	464(%rsp,%rax,4), %eax
	movl	%eax, 48(%rsp)
	movq	16(%rsp), %rax
	movl	60(%rax), %eax
	cmpl	%eax, 48(%rsp)
	jne	.L69
	movq	16(%rsp), %rdx
	vcvtsi2ssl	32(%rsp), %xmm1, %xmm1
	movq	16(%rsp), %rax
	vmovss	44(%rax), %xmm0
	vmulss	%xmm0, %xmm1, %xmm1
	vcvtsi2ssl	36(%rsp), %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm1
	vcvtsi2ssl	44(%rsp), %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm0
	vcomiss	.LC4(%rip), %xmm0
	jnb	.L70
	vcvttss2siq	%xmm0, %rax
	jmp	.L71
.L70:
	vmovss	.LC4(%rip), %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx
	xorq	%rcx, %rax
.L71:
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf11VertexArrayixEm@PLT
	movl	_ZN2sf5Color5BlackE(%rip), %edx
	movl	%edx, 8(%rax)
	jmp	.L72
.L69:
	movl	48(%rsp), %eax
	xorl	$3, %eax
	movzbl	%al, %ecx
	movl	48(%rsp), %eax
	movzbl	%al, %edx
	movl	48(%rsp), %eax
	addl	$64, %eax
	xorl	$2, %eax
	movzbl	%al, %esi
	leaq	52(%rsp), %rax
	movl	$255, %r8d
	movq	%rax, %rdi
	call	_ZN2sf5ColorC1Ehhhh@PLT
	movq	16(%rsp), %rdx
	vcvtsi2ssl	32(%rsp), %xmm1, %xmm1
	movq	16(%rsp), %rax
	vmovss	44(%rax), %xmm0
	vmulss	%xmm0, %xmm1, %xmm1
	vcvtsi2ssl	36(%rsp), %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm1
	vcvtsi2ssl	44(%rsp), %xmm0, %xmm0
	vaddss	%xmm0, %xmm1, %xmm0
	vcomiss	.LC4(%rip), %xmm0
	jnb	.L73
	vcvttss2siq	%xmm0, %rax
	jmp	.L74
.L73:
	vmovss	.LC4(%rip), %xmm1
	vsubss	%xmm1, %xmm0, %xmm0
	vcvttss2siq	%xmm0, %rax
	movabsq	$-9223372036854775808, %rcx
	xorq	%rcx, %rax
.L74:
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZN2sf11VertexArrayixEm@PLT
	movl	52(%rsp), %edx
	movl	%edx, 8(%rax)
.L72:
	addl	$1, 44(%rsp)
.L68:
	cmpl	$15, 44(%rsp)
	jle	.L75
	addl	$2, 36(%rsp)
.L65:
	vcvtsi2ssl	36(%rsp), %xmm1, %xmm1
	movq	16(%rsp), %rax
	vmovss	40(%rax), %xmm0
	vmovss	.LC2(%rip), %xmm2
	vsubss	%xmm2, %xmm0, %xmm2
	vmovss	.LC3(%rip), %xmm0
	vaddss	%xmm0, %xmm2, %xmm0
	vcomiss	%xmm1, %xmm0
	ja	.L76
	addl	$1, 32(%rsp)
.L64:
	vcvtsi2ssl	32(%rsp), %xmm1, %xmm1
	movq	16(%rsp), %rax
	vmovss	44(%rax), %xmm0
	vcomiss	%xmm1, %xmm0
	ja	.L77
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN14MANDELBROT_SETC1EOS_
	movq	536(%rsp), %rax
	subq	%fs:40, %rax
	je	.L79
	call	__stack_chk_fail@PLT
.L79:
	movq	24(%rsp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8182:
	.size	_Z17fillMandelbrotSet14MANDELBROT_SET, .-_Z17fillMandelbrotSet14MANDELBROT_SET
	.section	.text._ZN2sf7Vector2IfEC2Eff,"axG",@progbits,_ZN2sf7Vector2IfEC5Eff,comdat
	.align 2
	.weak	_ZN2sf7Vector2IfEC2Eff
	.type	_ZN2sf7Vector2IfEC2Eff, @function
_ZN2sf7Vector2IfEC2Eff:
.LFB8461:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	vmovss	%xmm0, -12(%rbp)
	vmovss	%xmm1, -16(%rbp)
	movq	-8(%rbp), %rax
	vmovss	-12(%rbp), %xmm0
	vmovss	%xmm0, (%rax)
	movq	-8(%rbp), %rax
	vmovss	-16(%rbp), %xmm0
	vmovss	%xmm0, 4(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8461:
	.size	_ZN2sf7Vector2IfEC2Eff, .-_ZN2sf7Vector2IfEC2Eff
	.weak	_ZN2sf7Vector2IfEC1Eff
	.set	_ZN2sf7Vector2IfEC1Eff,_ZN2sf7Vector2IfEC2Eff
	.section	.text._ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN2sf6VertexESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev
	.type	_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev, @function
_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev:
.LFB8464:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8464
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	-40(%rbp), %rdx
	movq	8(%rdx), %rdx
	movq	-40(%rbp), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, -24(%rbp)
	movq	%rdx, -16(%rbp)
	movq	%rax, -8(%rbp)
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8464:
	.section	.gcc_except_table
.LLSDA8464:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8464-.LLSDACSB8464
.LLSDACSB8464:
.LLSDACSE8464:
	.section	.text._ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev,"axG",@progbits,_ZNSt6vectorIN2sf6VertexESaIS1_EED5Ev,comdat
	.size	_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev, .-_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev
	.weak	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev
	.set	_ZNSt6vectorIN2sf6VertexESaIS1_EED1Ev,_ZNSt6vectorIN2sf6VertexESaIS1_EED2Ev
	.section	.text._ZNSt6vectorIN2sf6VertexESaIS1_EEC2ERKS3_,"axG",@progbits,_ZNSt6vectorIN2sf6VertexESaIS1_EEC5ERKS3_,comdat
	.align 2
	.weak	_ZNSt6vectorIN2sf6VertexESaIS1_EEC2ERKS3_
	.type	_ZNSt6vectorIN2sf6VertexESaIS1_EEC2ERKS3_, @function
_ZNSt6vectorIN2sf6VertexESaIS1_EEC2ERKS3_:
.LFB8467:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8467
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	movq	%rdi, -104(%rbp)
	movq	%rsi, -112(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -40(%rbp)
	xorl	%eax, %eax
	movq	-104(%rbp), %rbx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, -88(%rbp)
	leaq	-89(%rbp), %rax
	movq	-88(%rbp), %rdx
	movq	%rdx, -80(%rbp)
	movq	%rax, -72(%rbp)
	movq	-80(%rbp), %rax
	movq	%rax, -64(%rbp)
	movq	-72(%rbp), %rax
	movq	%rax, -56(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, -48(%rbp)
	nop
	nop
	nop
	nop
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
	movq	%rax, %rcx
	leaq	-89(%rbp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rsi
	movq	%rbx, %rdi
.LEHB8:
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EmRKS2_
.LEHE8:
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIN2sf6VertexEED2Ev
	nop
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	movq	%rax, %r13
	movq	-104(%rbp), %rax
	movq	(%rax), %rbx
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE3endEv
	movq	%rax, %r12
	movq	-112(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6vectorIN2sf6VertexESaIS1_EE5beginEv
	movq	%r13, %rcx
	movq	%rbx, %rdx
	movq	%r12, %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
.LEHE9:
	movq	-104(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-40(%rbp), %rax
	subq	%fs:40, %rax
	je	.L89
	jmp	.L92
.L90:
	endbr64
	movq	%rax, %rbx
	leaq	-89(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIN2sf6VertexEED2Ev
	nop
	movq	%rbx, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L86
	call	__stack_chk_fail@PLT
.L86:
	movq	%rax, %rdi
.LEHB10:
	call	_Unwind_Resume@PLT
.L91:
	endbr64
	movq	%rax, %rbx
	movq	-104(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	movq	%rbx, %rax
	movq	-40(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L88
	call	__stack_chk_fail@PLT
.L88:
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE10:
.L92:
	call	__stack_chk_fail@PLT
.L89:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8467:
	.section	.gcc_except_table
.LLSDA8467:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8467-.LLSDACSB8467
.LLSDACSB8467:
	.uleb128 .LEHB8-.LFB8467
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L90-.LFB8467
	.uleb128 0
	.uleb128 .LEHB9-.LFB8467
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L91-.LFB8467
	.uleb128 0
	.uleb128 .LEHB10-.LFB8467
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
.LLSDACSE8467:
	.section	.text._ZNSt6vectorIN2sf6VertexESaIS1_EEC2ERKS3_,"axG",@progbits,_ZNSt6vectorIN2sf6VertexESaIS1_EEC5ERKS3_,comdat
	.size	_ZNSt6vectorIN2sf6VertexESaIS1_EEC2ERKS3_, .-_ZNSt6vectorIN2sf6VertexESaIS1_EEC2ERKS3_
	.weak	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1ERKS3_
	.set	_ZNSt6vectorIN2sf6VertexESaIS1_EEC1ERKS3_,_ZNSt6vectorIN2sf6VertexESaIS1_EEC2ERKS3_
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2EOS4_,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC5EOS4_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2EOS4_
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2EOS4_, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2EOS4_:
.LFB8470:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -56(%rbp)
	movq	%rsi, -64(%rbp)
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt12_Vector_baseIN2sf6VertexESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_
	movq	-56(%rbp), %rdx
	movq	%rdx, -48(%rbp)
	movq	%rax, -40(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	nop
	nop
	movq	-56(%rbp), %rbx
	movq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRNSt12_Vector_baseIN2sf6VertexESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2EOS4_
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8470:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2EOS4_, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2EOS4_
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1EOS4_
	.set	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1EOS4_,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2EOS4_
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev:
.LFB8476:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8476
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$2, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8476:
	.section	.gcc_except_table
.LLSDA8476:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8476-.LLSDACSB8476
.LLSDACSB8476:
.LLSDACSE8476:
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED5Ev,comdat
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED1Ev
	.set	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED1Ev,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EED2Ev
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB8577:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8577:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv,"axG",@progbits,_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
	.type	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv, @function
_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv:
.LFB8579:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	subq	%rax, %rdx
	sarq	$2, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8579:
	.size	_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv, .-_ZNKSt6vectorIN2sf6VertexESaIS1_EE4sizeEv
	.section	.text._ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	.type	_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv, @function
_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv:
.LFB8580:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8580:
	.size	_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv, .-_ZNKSt12_Vector_baseIN2sf6VertexESaIS1_EE19_M_get_Tp_allocatorEv
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC5EmRKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EmRKS2_
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EmRKS2_, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EmRKS2_:
.LFB8583:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA8583
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	-40(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1ERKS2_
	movq	-32(%rbp), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB11:
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_M_create_storageEm
.LEHE11:
	jmp	.L104
.L103:
	endbr64
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implD1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB12:
	call	_Unwind_Resume@PLT
.LEHE12:
.L104:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8583:
	.section	.gcc_except_table
.LLSDA8583:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE8583-.LLSDACSB8583
.LLSDACSB8583:
	.uleb128 .LEHB11-.LFB8583
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L103-.LFB8583
	.uleb128 0
	.uleb128 .LEHB12-.LFB8583
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE8583:
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EmRKS2_,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC5EmRKS2_,comdat
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EmRKS2_, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EmRKS2_
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC1EmRKS2_
	.set	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC1EmRKS2_,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EEC2EmRKS2_
	.section	.text._ZNKSt6vectorIN2sf6VertexESaIS1_EE5beginEv,"axG",@progbits,_ZNKSt6vectorIN2sf6VertexESaIS1_EE5beginEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2sf6VertexESaIS1_EE5beginEv
	.type	_ZNKSt6vectorIN2sf6VertexESaIS1_EE5beginEv, @function
_ZNKSt6vectorIN2sf6VertexESaIS1_EE5beginEv:
.LFB8585:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L107
	call	__stack_chk_fail@PLT
.L107:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8585:
	.size	_ZNKSt6vectorIN2sf6VertexESaIS1_EE5beginEv, .-_ZNKSt6vectorIN2sf6VertexESaIS1_EE5beginEv
	.section	.text._ZNKSt6vectorIN2sf6VertexESaIS1_EE3endEv,"axG",@progbits,_ZNKSt6vectorIN2sf6VertexESaIS1_EE3endEv,comdat
	.align 2
	.weak	_ZNKSt6vectorIN2sf6VertexESaIS1_EE3endEv
	.type	_ZNKSt6vectorIN2sf6VertexESaIS1_EE3endEv, @function
_ZNKSt6vectorIN2sf6VertexESaIS1_EE3endEv:
.LFB8586:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-24(%rbp), %rax
	leaq	8(%rax), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC1ERKS4_
	movq	-16(%rbp), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L110
	call	__stack_chk_fail@PLT
.L110:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8586:
	.size	_ZNKSt6vectorIN2sf6VertexESaIS1_EE3endEv, .-_ZNKSt6vectorIN2sf6VertexESaIS1_EE3endEv
	.section	.text._ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E:
.LFB8587:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8587:
	.size	_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_S3_ET0_T_SC_SB_RSaIT1_E
	.section	.text._ZSt4moveIRNSt12_Vector_baseIN2sf6VertexESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRNSt12_Vector_baseIN2sf6VertexESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRNSt12_Vector_baseIN2sf6VertexESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_
	.type	_ZSt4moveIRNSt12_Vector_baseIN2sf6VertexESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_, @function
_ZSt4moveIRNSt12_Vector_baseIN2sf6VertexESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_:
.LFB8588:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8588:
	.size	_ZSt4moveIRNSt12_Vector_baseIN2sf6VertexESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_, .-_ZSt4moveIRNSt12_Vector_baseIN2sf6VertexESaIS2_EE12_Vector_implEEONSt16remove_referenceIT_E4typeEOS8_
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2EOS4_,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC5EOS4_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2EOS4_
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2EOS4_, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2EOS4_:
.LFB8593:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-16(%rbp), %rax
	movq	$0, 16(%rax)
	movq	-16(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-16(%rbp), %rax
	movq	8(%rax), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8593:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2EOS4_, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2EOS4_
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC1EOS4_
	.set	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC1EOS4_,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2EOS4_
	.section	.text._ZNSt15__new_allocatorIN2sf6VertexEED2Ev,"axG",@progbits,_ZNSt15__new_allocatorIN2sf6VertexEED5Ev,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIN2sf6VertexEED2Ev
	.type	_ZNSt15__new_allocatorIN2sf6VertexEED2Ev, @function
_ZNSt15__new_allocatorIN2sf6VertexEED2Ev:
.LFB8596:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8596:
	.size	_ZNSt15__new_allocatorIN2sf6VertexEED2Ev, .-_ZNSt15__new_allocatorIN2sf6VertexEED2Ev
	.weak	_ZNSt15__new_allocatorIN2sf6VertexEED1Ev
	.set	_ZNSt15__new_allocatorIN2sf6VertexEED1Ev,_ZNSt15__new_allocatorIN2sf6VertexEED2Ev
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m:
.LFB8598:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	cmpq	$0, -48(%rbp)
	je	.L119
	movq	-40(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIN2sf6VertexEE10deallocateEPS1_m
	nop
.L119:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8598:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE13_M_deallocateEPS1_m
	.section	.text._ZSt8_DestroyIPN2sf6VertexEEvT_S3_,"axG",@progbits,_ZSt8_DestroyIPN2sf6VertexEEvT_S3_,comdat
	.weak	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_
	.type	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_, @function
_ZSt8_DestroyIPN2sf6VertexEEvT_S3_:
.LFB8664:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8664:
	.size	_ZSt8_DestroyIPN2sf6VertexEEvT_S3_, .-_ZSt8_DestroyIPN2sf6VertexEEvT_S3_
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2ERKS2_,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC5ERKS2_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2ERKS2_
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2ERKS2_, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2ERKS2_:
.LFB8668:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, -32(%rbp)
	movq	-48(%rbp), %rax
	movq	%rax, -24(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	nop
	nop
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8668:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2ERKS2_, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2ERKS2_
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1ERKS2_
	.set	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC1ERKS2_,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE12_Vector_implC2ERKS2_
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_M_create_storageEm,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_M_create_storageEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_M_create_storageEm
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_M_create_storageEm, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_M_create_storageEm:
.LFB8670:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEm
	movq	-8(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-8(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 8(%rax)
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-16(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	leaq	(%rcx,%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, 16(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8670:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_M_create_storageEm, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_M_create_storageEm
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC2ERKS4_,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC5ERKS4_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC2ERKS4_
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC2ERKS4_, @function
_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC2ERKS4_:
.LFB8672:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8672:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC2ERKS4_, .-_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC2ERKS4_
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC1ERKS4_
	.set	_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC1ERKS4_,_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEC2ERKS4_
	.section	.text._ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,"axG",@progbits,_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,comdat
	.weak	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.type	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_, @function
_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_:
.LFB8674:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$0, -2(%rbp)
	movb	$0, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8674:
	.size	_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_, .-_ZSt18uninitialized_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_:
.LFB8732:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8732:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPN2sf6VertexEEEvT_S5_
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2Ev:
.LFB8734:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8734:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEm, @function
_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEm:
.LFB8736:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	cmpq	$0, -32(%rbp)
	je	.L129
	movq	-24(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-8(%rbp), %rcx
	movq	-16(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt15__new_allocatorIN2sf6VertexEE8allocateEmPKv
	nop
	jmp	.L131
.L129:
	movl	$0, %eax
.L131:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8736:
	.size	_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEm, .-_ZNSt12_Vector_baseIN2sf6VertexESaIS1_EE11_M_allocateEm
	.section	.text._ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_,"axG",@progbits,_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_,comdat
	.weak	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	.type	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_, @function
_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_:
.LFB8737:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8737:
	.size	_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_, .-_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS5_SaIS5_EEEEPS5_EET0_T_SE_SD_
	.section	.text._ZNSt15__new_allocatorIN2sf6VertexEE10deallocateEPS1_m,"axG",@progbits,_ZNSt15__new_allocatorIN2sf6VertexEE10deallocateEPS1_m,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIN2sf6VertexEE10deallocateEPS1_m
	.type	_ZNSt15__new_allocatorIN2sf6VertexEE10deallocateEPS1_m, @function
_ZNSt15__new_allocatorIN2sf6VertexEE10deallocateEPS1_m:
.LFB8738:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8738:
	.size	_ZNSt15__new_allocatorIN2sf6VertexEE10deallocateEPS1_m, .-_ZNSt15__new_allocatorIN2sf6VertexEE10deallocateEPS1_m
	.section	.text._ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,"axG",@progbits,_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_,comdat
	.weak	_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.type	_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_, @function
_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_:
.LFB8760:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rax
	movq	%rax, -24(%rbp)
	jmp	.L138
.L139:
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEdeEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt11__addressofIN2sf6VertexEEPT_RS2_
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEppEv
	addq	$20, -24(%rbp)
.L138:
	leaq	-48(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxxneIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	testb	%al, %al
	jne	.L139
	movq	-24(%rbp), %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8760:
	.size	_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_, .-_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS3_SaIS3_EEEEPS3_ET0_T_SC_SB_
	.section	.text._ZNSt15__new_allocatorIN2sf6VertexEE8allocateEmPKv,"axG",@progbits,_ZNSt15__new_allocatorIN2sf6VertexEE8allocateEmPKv,comdat
	.align 2
	.weak	_ZNSt15__new_allocatorIN2sf6VertexEE8allocateEmPKv
	.type	_ZNSt15__new_allocatorIN2sf6VertexEE8allocateEmPKv, @function
_ZNSt15__new_allocatorIN2sf6VertexEE8allocateEmPKv:
.LFB8769:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, -8(%rbp)
	movabsq	$461168601842738790, %rax
	cmpq	-32(%rbp), %rax
	setb	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L143
	movabsq	$922337203685477580, %rax
	cmpq	-32(%rbp), %rax
	jnb	.L144
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L144:
	call	_ZSt17__throw_bad_allocv@PLT
.L143:
	movq	-32(%rbp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8769:
	.size	_ZNSt15__new_allocatorIN2sf6VertexEE8allocateEmPKv, .-_ZNSt15__new_allocatorIN2sf6VertexEE8allocateEmPKv
	.section	.text._ZN9__gnu_cxxneIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_,"axG",@progbits,_ZN9__gnu_cxxneIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_,comdat
	.weak	_ZN9__gnu_cxxneIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.type	_ZN9__gnu_cxxneIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_, @function
_ZN9__gnu_cxxneIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_:
.LFB8770:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
	movq	(%rax), %rax
	cmpq	%rax, %rbx
	setne	%al
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8770:
	.size	_ZN9__gnu_cxxneIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_, .-_ZN9__gnu_cxxneIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEEbRKNS_17__normal_iteratorIT_T0_EESD_
	.section	.text._ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEppEv,"axG",@progbits,_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEppEv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEppEv
	.type	_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEppEv, @function
_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEppEv:
.LFB8771:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	leaq	20(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8771:
	.size	_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEppEv, .-_ZN9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEppEv
	.section	.text._ZSt11__addressofIN2sf6VertexEEPT_RS2_,"axG",@progbits,_ZSt11__addressofIN2sf6VertexEEPT_RS2_,comdat
	.weak	_ZSt11__addressofIN2sf6VertexEEPT_RS2_
	.type	_ZSt11__addressofIN2sf6VertexEEPT_RS2_, @function
_ZSt11__addressofIN2sf6VertexEEPT_RS2_:
.LFB8772:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8772:
	.size	_ZSt11__addressofIN2sf6VertexEEPT_RS2_, .-_ZSt11__addressofIN2sf6VertexEEPT_RS2_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEdeEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEdeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEdeEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEdeEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEdeEv:
.LFB8773:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8773:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEdeEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEEdeEv
	.section	.text._ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_,"axG",@progbits,_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_,comdat
	.weak	_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_
	.type	_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_, @function
_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_:
.LFB8774:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rsi
	movl	$20, %edi
	call	_ZnwmPv
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE
	movq	%rax, %rcx
	movq	(%rcx), %rax
	movq	8(%rcx), %rdx
	movq	%rax, (%rbx)
	movq	%rdx, 8(%rbx)
	movl	16(%rcx), %eax
	movl	%eax, 16(%rbx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8774:
	.size	_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_, .-_ZSt10_ConstructIN2sf6VertexEJRKS1_EEvPT_DpOT0_
	.section	.text._ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv,"axG",@progbits,_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
	.type	_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv, @function
_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv:
.LFB8781:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8781:
	.size	_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv, .-_ZNK9__gnu_cxx17__normal_iteratorIPKN2sf6VertexESt6vectorIS2_SaIS2_EEE4baseEv
	.section	.text._ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE,"axG",@progbits,_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE,comdat
	.weak	_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE
	.type	_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE, @function
_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE:
.LFB8782:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8782:
	.size	_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE, .-_ZSt7forwardIRKN2sf6VertexEEOT_RNSt16remove_referenceIS4_E4typeE
	.weak	_ZTVN2sf8DrawableE
	.section	.data.rel.ro._ZTVN2sf8DrawableE,"awG",@progbits,_ZTVN2sf8DrawableE,comdat
	.align 8
	.type	_ZTVN2sf8DrawableE, @object
	.size	_ZTVN2sf8DrawableE, 40
_ZTVN2sf8DrawableE:
	.quad	0
	.quad	_ZTIN2sf8DrawableE
	.quad	0
	.quad	0
	.quad	__cxa_pure_virtual
	.weak	_ZTIN2sf8DrawableE
	.section	.data.rel.ro._ZTIN2sf8DrawableE,"awG",@progbits,_ZTIN2sf8DrawableE,comdat
	.align 8
	.type	_ZTIN2sf8DrawableE, @object
	.size	_ZTIN2sf8DrawableE, 16
_ZTIN2sf8DrawableE:
	.quad	_ZTVN10__cxxabiv117__class_type_infoE+16
	.quad	_ZTSN2sf8DrawableE
	.weak	_ZTSN2sf8DrawableE
	.section	.rodata._ZTSN2sf8DrawableE,"aG",@progbits,_ZTSN2sf8DrawableE,comdat
	.align 8
	.type	_ZTSN2sf8DrawableE, @object
	.size	_ZTSN2sf8DrawableE, 15
_ZTSN2sf8DrawableE:
	.string	"N2sf8DrawableE"
	.text
	.type	_Z41__static_initialization_and_destruction_0v, @function
_Z41__static_initialization_and_destruction_0v:
.LFB8783:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	andq	$-32, %rsp
	vmovss	.LC5(%rip), %xmm0
	vmovss	%xmm0, -32(%rsp)
	vmovss	.LC5(%rip), %xmm0
	vmovss	%xmm0, -28(%rsp)
	vmovss	.LC5(%rip), %xmm0
	vmovss	%xmm0, -24(%rsp)
	vmovss	.LC5(%rip), %xmm0
	vmovss	%xmm0, -20(%rsp)
	vmovss	.LC5(%rip), %xmm0
	vmovss	%xmm0, -16(%rsp)
	vmovss	.LC5(%rip), %xmm0
	vmovss	%xmm0, -12(%rsp)
	vmovss	.LC5(%rip), %xmm0
	vmovss	%xmm0, -8(%rsp)
	vmovss	.LC5(%rip), %xmm0
	vmovss	%xmm0, -4(%rsp)
	vmovss	-32(%rsp), %xmm1
	vmovss	-28(%rsp), %xmm0
	vunpcklps	%xmm1, %xmm0, %xmm1
	vmovss	-24(%rsp), %xmm2
	vmovss	-20(%rsp), %xmm0
	vunpcklps	%xmm2, %xmm0, %xmm0
	vmovlhps	%xmm1, %xmm0, %xmm1
	vmovss	-16(%rsp), %xmm2
	vmovss	-12(%rsp), %xmm0
	vunpcklps	%xmm2, %xmm0, %xmm2
	vmovss	-8(%rsp), %xmm3
	vmovss	-4(%rsp), %xmm0
	vunpcklps	%xmm3, %xmm0, %xmm0
	vmovlhps	%xmm2, %xmm0, %xmm0
	vinsertf128	$0x1, %xmm1, %ymm0, %ymm0
	vmovaps	%ymm0, _ZL19MAX_RADIUS_SQUARE_V(%rip)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8783:
	.size	_Z41__static_initialization_and_destruction_0v, .-_Z41__static_initialization_and_destruction_0v
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.text
	.type	_GLOBAL__sub_I__Z17mandelbrotSetCtorii, @function
_GLOBAL__sub_I__Z17mandelbrotSetCtorii:
.LFB8784:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	call	_Z41__static_initialization_and_destruction_0v
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE8784:
	.size	_GLOBAL__sub_I__Z17mandelbrotSetCtorii, .-_GLOBAL__sub_I__Z17mandelbrotSetCtorii
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I__Z17mandelbrotSetCtorii
	.section	.rodata
	.align 4
.LC0:
	.long	1000593162
	.align 4
.LC1:
	.long	0
	.align 4
.LC2:
	.long	1073741824
	.align 4
.LC3:
	.long	1065353216
	.align 4
.LC4:
	.long	1593835520
	.align 4
.LC5:
	.long	1103626240
	.weak	__cxa_pure_virtual
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
