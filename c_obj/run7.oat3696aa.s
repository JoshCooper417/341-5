	.align 4
	.data
__A_vtable24:
	.long __Object_vtable23
	.long __Object_get_name

__Object_vtable23:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh69:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $52, %esp
__fresh68:
	leal -52(%ebp), %eax
	movl %eax, -40(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	leal -48(%ebp), %eax
	movl %eax, -36(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -24(%ebp)
	addl $4, %esp
	leal -44(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -16(%ebp), %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call _string_of_array
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_ctor
__A_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $112, %esp
__fresh65:
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
	movl $10, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	leal -112(%ebp), %eax
	movl %eax, -12(%ebp)
	movl $10, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -108(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -104(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond64
__cond64:
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
	jNE __body63
	jmp __post62
__fresh66:
	jmp __body63
__body63:
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
	movl $110, %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
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
	jmp __cond64
__fresh67:
	jmp __post62
__post62:
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
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
__fresh61:
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
__fresh60:
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
