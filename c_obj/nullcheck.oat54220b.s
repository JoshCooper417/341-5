	.align 4
	.data
_s3500:
	.long 0
__const_str499:
	.ascii "goodbye\0"
_s2497:
	.long 0
_s1495:
	.long 0
__const_str494:
	.ascii "hello\0"
__const_str493:
	.ascii "Object\0"
__Object_vtable492:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh557:
	call _s1495.init496
	addl $0, %esp
	call _s2497.init498
	addl $0, %esp
	call _s3500.init501
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $132, %esp
__fresh550:
	leal -124(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -120(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	leal -116(%ebp), %eax
	movl %eax, -16(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl $_s1495, %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -112(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then543
	jmp __else542
__fresh551:
	jmp __then543
__then543:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	pushl %eax
	call _length_of_string
	movl %eax, -28(%ebp)
	addl $4, %esp
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge541
__fresh552:
	jmp __else542
__else542:
	movl $0, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge541
__merge541:
	movl $_s2497, %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	leal -128(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -36(%ebp)
	andl $1, -36(%ebp)
	movl -36(%ebp), %eax
	cmpl $0, %eax
	jNE __then546
	jmp __else545
__fresh553:
	jmp __then546
__then546:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	pushl %eax
	call _length_of_string
	movl %eax, -52(%ebp)
	addl $4, %esp
	movl -60(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge544
__fresh554:
	jmp __else545
__else545:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	movl %eax, -64(%ebp)
	movl $30, %eax
	movl %eax, %ecx
	addl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge544
__merge544:
	movl $_s3500, %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	leal -132(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -72(%ebp)
	andl $1, -72(%ebp)
	movl -72(%ebp), %eax
	cmpl $0, %eax
	jNE __then549
	jmp __else548
__fresh555:
	jmp __then549
__then549:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	pushl %eax
	call _length_of_string
	movl %eax, -88(%ebp)
	addl $4, %esp
	movl -96(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge547
__fresh556:
	jmp __else548
__else548:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	movl %eax, -100(%ebp)
	movl $41, %eax
	movl %eax, %ecx
	addl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge547
__merge547:
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _s3500.init501
_s3500.init501:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh540:
	movl $__const_str499, %eax
	movl %eax, _s3500
	movl %ebp, %esp
	popl %ebp
	ret
.globl _s2497.init498
_s2497.init498:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh539:
	movl $0, %eax
	movl %eax, _s2497
	movl %ebp, %esp
	popl %ebp
	ret
.globl _s1495.init496
_s1495.init496:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh538:
	movl $__const_str494, %eax
	movl %eax, _s1495
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh537:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_ctor
__Object_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh536:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str493, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable492, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
