	.align 4
	.data
_a576:
	.long 0
__const_str575:
	.ascii "Array\0"
__const_str574:
	.ascii "Object\0"
__Array_vtable573:
	.long __Object_vtable572
	.long __Object_get_name
	.long __Array_set_length
	.long __Array_add_dimension
	.long __Array_fill_random_bits
	.long __Array_total

__Object_vtable572:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh822:
	call _a576.init577
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $164, %esp
__fresh821:
	leal -164(%ebp), %eax
	movl %eax, -156(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -156(%ebp), %eax
	movl %ecx, (%eax)
	leal -160(%ebp), %eax
	movl %eax, -152(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -152(%ebp), %eax
	movl %ecx, (%eax)
	movl $_a576, %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	movl %eax, -144(%ebp)
	movl -144(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	addl $8, %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -148(%ebp), %eax
	movl %eax, -128(%ebp)
	movl $5, %eax
	pushl %eax
	movl -128(%ebp), %eax
	pushl %eax
	movl -132(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_a576, %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	movl %eax, -120(%ebp)
	movl -120(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -116(%ebp), %eax
	addl $12, %eax
	movl %eax, -112(%ebp)
	movl -112(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -124(%ebp), %eax
	movl %eax, -104(%ebp)
	movl -104(%ebp), %eax
	pushl %eax
	movl -108(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $_a576, %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	addl $12, %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -100(%ebp), %eax
	movl %eax, -80(%ebp)
	movl -80(%ebp), %eax
	pushl %eax
	movl -84(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $_a576, %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	addl $12, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $_a576, %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	addl $16, %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $_a576, %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	addl $20, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -28(%ebp), %eax
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
.globl _a576.init577
_a576.init577:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh820:
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
	movl %eax, _a576
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_total
__Array_total:
	pushl %ebp
	movl %esp, %ebp
	subl $112, %esp
__fresh817:
	movl 8(%ebp), %eax
	addl $16, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -112(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -108(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond816
__cond816:
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
	jNE __body815
	jmp __post814
__fresh818:
	jmp __body815
__body815:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -92(%ebp), %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -88(%ebp), %eax
	pushl %eax
	movl -80(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -92(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	addl $20, %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -72(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	pushl %eax
	movl -56(%ebp), %eax
	call *%eax
	movl %eax, -48(%ebp)
	addl $4, %esp
	movl -100(%ebp), %eax
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
	jmp __cond816
__fresh819:
	jmp __post814
__post814:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_fill_random_bits
__Array_fill_random_bits:
	pushl %ebp
	movl %esp, %ebp
	subl $84, %esp
__fresh811:
	leal -84(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond810
__cond810:
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
	jNE __body809
	jmp __post808
__fresh812:
	jmp __body809
__body809:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -72(%ebp), %eax
	addl $0, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -68(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -72(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	addl $16, %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -52(%ebp), %eax
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
	jmp __cond810
__fresh813:
	jmp __post808
__post808:
	movl 8(%ebp), %eax
	addl $16, %eax
	movl %eax, -80(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_add_dimension
__Array_add_dimension:
	pushl %ebp
	movl %esp, %ebp
	subl $184, %esp
__fresh803:
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
	leal -180(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -176(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -172(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond799
__cond799:
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
	jNE __body798
	jmp __post797
__fresh804:
	jmp __body798
__body798:
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
	jmp __cond799
__fresh805:
	jmp __post797
__post797:
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	leal -184(%ebp), %eax
	movl %eax, -88(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond802
__cond802:
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
	jNE __body801
	jmp __post800
__fresh806:
	jmp __body801
__body801:
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -168(%ebp)
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -160(%ebp)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -156(%ebp), %eax
	addl $0, %eax
	movl %eax, -148(%ebp)
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -152(%ebp), %eax
	pushl %eax
	movl -144(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -156(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -152(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -140(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, -132(%ebp)
	movl -132(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	addl $8, %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -136(%ebp), %eax
	movl %eax, -116(%ebp)
	movl -164(%ebp), %eax
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
	jmp __cond802
__fresh807:
	jmp __post800
__post800:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_set_length
__Array_set_length:
	pushl %ebp
	movl %esp, %ebp
	subl $112, %esp
__fresh794:
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
	jmp __cond793
__cond793:
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
	jNE __body792
	jmp __post791
__fresh795:
	jmp __body792
__body792:
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
	jmp __cond793
__fresh796:
	jmp __post791
__post791:
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
	subl $120, %esp
__fresh788:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -44(%ebp)
	addl $4, %esp
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -36(%ebp)
	addl $4, %esp
	movl -36(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	addl $4, %eax
	movl %eax, -28(%ebp)
	movl $__const_str575, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl $0, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	leal -120(%ebp), %eax
	movl %eax, -12(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -116(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -112(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond787
__cond787:
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
	jNE __body786
	jmp __post785
__fresh789:
	jmp __body786
__body786:
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
	jmp __cond787
__fresh790:
	jmp __post785
__post785:
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $0, %eax
	movl %eax, -108(%ebp)
	movl $__Array_vtable573, %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $16, %eax
	movl %eax, -104(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $12, %eax
	movl %eax, -100(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh784:
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
__fresh783:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str574, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable572, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
