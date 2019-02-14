	.file	"Assn3MinValArr.c"
	.text
	.section	.rodata
.LC0:
	.string	"Number to insert: "
.LC1:
	.string	"%d"
	.align 8
.LC2:
	.string	"The array currently contains %d\n"
	.text
	.globl	createArray
	.type	createArray, @function
createArray:
.LFB0:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, -4(%rbp)
	jmp	.L2
.L3:
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	toSort.2363(%rip), %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -4(%rbp)
.L2:
	cmpl	$4, -4(%rbp)
	jle	.L3
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -4(%rbp)
	jmp	.L4
.L5:
	movl	-4(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	leaq	toSort.2363(%rip), %rax
	movl	(%rdx,%rax), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -4(%rbp)
.L4:
	cmpl	$4, -4(%rbp)
	jle	.L5
	movl	$10, %edi
	call	putchar@PLT
	leaq	toSort.2363(%rip), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	createArray, .-createArray
	.section	.rodata
.LC3:
	.string	"(*p + %d): %d, \n"
.LC4:
	.string	"Smallest number: %x\n"
.LC5:
	.string	"Index: %x\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$0, %eax
	call	createArray
	movq	%rax, -8(%rbp)
	movl	$0, -12(%rbp)
	jmp	.L8
.L9:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -12(%rbp)
.L8:
	cmpl	$4, -12(%rbp)
	jle	.L9
	movl	$10, %edi
	call	putchar@PLT
	movq	-8(%rbp), %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
	movl	$1, -12(%rbp)
	jmp	.L10
.L12:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jle	.L11
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	movl	%eax, -16(%rbp)
.L11:
	addl	$1, -12(%rbp)
.L10:
	cmpl	$4, -12(%rbp)
	jle	.L12
	movl	-16(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, -12(%rbp)
	jmp	.L13
.L15:
	movl	-12(%rbp), %eax
	cltq
	leaq	0(,%rax,4), %rdx
	movq	-8(%rbp), %rax
	addq	%rdx, %rax
	movl	(%rax), %eax
	cmpl	%eax, -16(%rbp)
	jne	.L14
	movl	-12(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L14:
	addl	$1, -12(%rbp)
.L13:
	cmpl	$4, -12(%rbp)
	jle	.L15
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.local	toSort.2363
	.comm	toSort.2363,20,16
	.ident	"GCC: (GNU) 8.2.1 20181127"
	.section	.note.GNU-stack,"",@progbits
