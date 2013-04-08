	.align 4
	.data
_a328:
	.long 0
__Array_vtable327:
	.long __Object_vtable326
	.long __Object_get_name
	.long __Array_set_length
	.long __Array_add_dimension
	.long __Array_fill_random_bits
	.long __Array_total

__Object_vtable326:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh664:
	call _a328.init329
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $116, %esp
__fresh663:
	leal -116(%ebp), %eax
	movl %eax, -108(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	leal -112(%ebp), %eax
	movl %eax, -104(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	movl $_a328, %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl $__Array_vtable327, %eax
	addl $8, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -100(%ebp), %eax
	movl %eax, -88(%ebp)
	movl $5, %eax
	pushl %eax
	movl -88(%ebp), %eax
	pushl %eax
	movl -92(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_a328, %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl $__Array_vtable327, %eax
	addl $12, %eax
	movl %eax, -80(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -84(%ebp), %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	pushl %eax
	movl -76(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $_a328, %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl $__Array_vtable327, %eax
	addl $12, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -68(%ebp), %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $_a328, %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl $__Array_vtable327, %eax
	addl $12, %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	movl -44(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $_a328, %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl $__Array_vtable327, %eax
	addl $16, %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -36(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	pushl %eax
	movl -28(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $_a328, %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl $__Array_vtable327, %eax
	addl $20, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	movl -12(%ebp), %eax
	call *%eax
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a328.init329
_a328.init329:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh662:
	movl $20, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call __Array_ctor
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %eax, _a328
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_total
__Array_total:
	pushl %ebp
	movl %esp, %ebp
	subl $104, %esp
__fresh659:
	movl 8(%ebp), %eax
	addl $16, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -104(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -100(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond658
__cond658:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	cmpl %eax, %ecx
	setL -20(%ebp)
	andl $1, -20(%ebp)
	movl -20(%ebp), %eax
	cmpl $0, %eax
	jNE __body657
	jmp __post656
__fresh660:
	jmp __body657
__body657:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -80(%ebp), %eax
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -84(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl $__Array_vtable327, %eax
	addl $20, %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -64(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	pushl %eax
	movl -56(%ebp), %eax
	call *%eax
	movl %eax, -48(%ebp)
	addl $4, %esp
	movl -92(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond658
__fresh661:
	jmp __post656
__post656:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_fill_random_bits
__Array_fill_random_bits:
	pushl %ebp
	movl %esp, %ebp
	subl $76, %esp
__fresh653:
	leal -76(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond652
__cond652:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	cmpl %eax, %ecx
	setL -8(%ebp)
	andl $1, -8(%ebp)
	movl -8(%ebp), %eax
	cmpl $0, %eax
	jNE __body651
	jmp __post650
__fresh654:
	jmp __body651
__body651:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -64(%ebp), %eax
	addl $0, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -60(%ebp), %eax
	pushl %eax
	movl -52(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -64(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl $__Array_vtable327, %eax
	addl $16, %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond652
__fresh655:
	jmp __post650
__post650:
	movl 8(%ebp), %eax
	addl $16, %eax
	movl %eax, -72(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_add_dimension
__Array_add_dimension:
	pushl %ebp
	movl %esp, %ebp
	subl $176, %esp
__fresh645:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -32(%ebp)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	leal -172(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -168(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -164(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond641
__cond641:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	cmpl %eax, %ecx
	setL -36(%ebp)
	andl $1, -36(%ebp)
	movl -36(%ebp), %eax
	cmpl $0, %eax
	jNE __body640
	jmp __post639
__fresh646:
	jmp __body640
__body640:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -84(%ebp), %eax
	addl $0, %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -80(%ebp), %eax
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -84(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -68(%ebp)
	movl $20, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -64(%ebp)
	addl $4, %esp
	movl -64(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	pushl %eax
	call __Array_ctor
	movl %eax, -56(%ebp)
	addl $4, %esp
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -48(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond641
__fresh647:
	jmp __post639
__post639:
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	leal -176(%ebp), %eax
	movl %eax, -88(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond644
__cond644:
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	cmpl %eax, %ecx
	setL -92(%ebp)
	andl $1, -92(%ebp)
	movl -92(%ebp), %eax
	cmpl $0, %eax
	jNE __body643
	jmp __post642
__fresh648:
	jmp __body643
__body643:
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -160(%ebp)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -152(%ebp)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -148(%ebp), %eax
	addl $0, %eax
	movl %eax, -140(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -144(%ebp), %eax
	pushl %eax
	movl -136(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -148(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -132(%ebp)
	movl -132(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl $__Array_vtable327, %eax
	addl $8, %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -128(%ebp), %eax
	movl %eax, -116(%ebp)
	movl -156(%ebp), %eax
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	movl -120(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %eax, -108(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond644
__fresh649:
	jmp __post642
__post642:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_set_length
__Array_set_length:
	pushl %ebp
	movl %esp, %ebp
	subl $112, %esp
__fresh636:
	leal -112(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -40(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -32(%ebp)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	leal -108(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -104(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -100(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond635
__cond635:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	cmpl %eax, %ecx
	setL -48(%ebp)
	andl $1, -48(%ebp)
	movl -48(%ebp), %eax
	cmpl $0, %eax
	jNE __body634
	jmp __post633
__fresh637:
	jmp __body634
__body634:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -96(%ebp), %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -92(%ebp), %eax
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -96(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -80(%ebp)
	movl $20, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -76(%ebp)
	addl $4, %esp
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	pushl %eax
	call __Array_ctor
	movl %eax, -68(%ebp)
	addl $4, %esp
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, -60(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond635
__fresh638:
	jmp __post633
__post633:
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_ctor
__Array_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $124, %esp
__fresh630:
	movl 8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -48(%ebp)
	addl $4, %esp
	movl -48(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -52(%ebp), %eax
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -40(%ebp)
	addl $8, %esp
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -36(%ebp)
	movl 8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl $0, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	leal -124(%ebp), %eax
	movl %eax, -12(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -120(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -116(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond629
__cond629:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	cmpl %eax, %ecx
	setL -60(%ebp)
	andl $1, -60(%ebp)
	movl -60(%ebp), %eax
	cmpl $0, %eax
	jNE __body628
	jmp __post627
__fresh631:
	jmp __body628
__body628:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -108(%ebp), %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -104(%ebp), %eax
	pushl %eax
	movl -96(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -108(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -92(%ebp)
	movl $20, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -88(%ebp)
	addl $4, %esp
	movl -88(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	pushl %eax
	call __Array_ctor
	movl %eax, -80(%ebp)
	addl $4, %esp
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond629
__fresh632:
	jmp __post627
__post627:
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh626:
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
	subl $16, %esp
__fresh625:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
