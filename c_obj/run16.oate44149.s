	.align 4
	.data
__const_str113:
	.ascii "B\0"
__const_str112:
	.ascii "A\0"
__const_str111:
	.ascii "Object\0"
__B_vtable110:
	.long __A_vtable109
	.long __Object_get_name

__A_vtable109:
	.long __Object_vtable108
	.long __Object_get_name

__Object_vtable108:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh159:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $52, %esp
__fresh158:
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
	call __B_ctor
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
.globl __B_ctor
__B_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh157:
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str113, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__B_vtable110, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_ctor
__A_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $100, %esp
__fresh154:
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
	movl $__const_str112, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl $10, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	leal -100(%ebp), %eax
	movl %eax, -12(%ebp)
	movl $10, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -96(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -92(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond153
__cond153:
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
	jNE __body152
	jmp __post151
__fresh155:
	jmp __body152
__body152:
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
	movl $110, %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
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
	jmp __cond153
__fresh156:
	jmp __post151
__post151:
	movl -16(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl $__A_vtable109, %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
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
__fresh150:
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
__fresh149:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str111, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable108, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
