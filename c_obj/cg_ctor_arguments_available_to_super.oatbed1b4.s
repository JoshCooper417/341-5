	.align 4
	.data
__const_str12:
	.ascii "\n\0"
__const_str11:
	.ascii "\n\0"
__const_str10:
	.ascii "printing b \n\0"
__const_str9:
	.ascii "\n\0"
__const_str8:
	.ascii "printing a \n\0"
__const_str13:
	.ascii "B\0"
__const_str6:
	.ascii "\n\0"
__const_str5:
	.ascii "printing x \n\0"
__const_str7:
	.ascii "A\0"
__const_str4:
	.ascii "Object\0"
__B_vtable3:
	.long __A_vtable2
	.long __Object_get_name

__A_vtable2:
	.long __Object_vtable1
	.long __Object_get_name

__Object_vtable1:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh5:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh4:
	leal -48(%ebp), %eax
	movl %eax, -36(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	leal -44(%ebp), %eax
	movl %eax, -32(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -28(%ebp)
	addl $4, %esp
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl $2, %eax
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -24(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -20(%ebp)
	addl $12, %esp
	leal -40(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_ctor
__B_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $68, %esp
__fresh3:
	leal -68(%ebp), %eax
	movl %eax, -60(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	leal -64(%ebp), %eax
	movl %eax, -56(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -48(%ebp)
	movl $10, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	imull %ecx, %eax
	movl %eax, -48(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -24(%ebp)
	addl $12, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $__const_str13, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $__B_vtable3, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl $__const_str8, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call _print_int
	addl $4, %esp
	movl $__const_str9, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $__const_str10, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	pushl %eax
	call _print_int
	addl $4, %esp
	movl $__const_str11, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $__const_str12, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_ctor
__A_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh2:
	leal -48(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -36(%ebp)
	addl $4, %esp
	movl -36(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	movl -32(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -28(%ebp)
	addl $8, %esp
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	addl $4, %eax
	movl %eax, -20(%ebp)
	movl $__const_str7, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	addl $0, %eax
	movl %eax, -16(%ebp)
	movl $__A_vtable2, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl $__const_str5, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	call _print_int
	addl $4, %esp
	movl $__const_str6, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -24(%ebp), %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh1:
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
__fresh0:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str4, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
