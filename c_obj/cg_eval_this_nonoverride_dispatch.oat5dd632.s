	.align 4
	.data
_a464:
	.long 0
__const_str463:
	.ascii "C\0"
__const_str462:
	.ascii "B\0"
__const_str461:
	.ascii "A\0"
__const_str460:
	.ascii "Object\0"
__C_vtable459:
	.long __B_vtable458
	.long __Object_get_name
	.long __B_over
	.long __A_foo
	.long __C_call
	.long __C_notover

__B_vtable458:
	.long __A_vtable457
	.long __Object_get_name
	.long __B_over
	.long __A_foo
	.long __B_call

__A_vtable457:
	.long __Object_vtable456
	.long __Object_get_name
	.long __A_over
	.long __A_foo
	.long __A_call

__Object_vtable456:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh578:
	call _a464.init465
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $44, %esp
__fresh577:
	leal -44(%ebp), %eax
	movl %eax, -36(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	leal -40(%ebp), %eax
	movl %eax, -32(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl $_a464, %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	addl $16, %eax
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
.globl _a464.init465
_a464.init465:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh576:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	call __C_ctor
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, _a464
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C_call
__C_call:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh575:
	movl 8(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	addl $12, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $3, %eax
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	movl -12(%ebp), %eax
	call *%eax
	movl %eax, -4(%ebp)
	addl $8, %esp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C_notover
__C_notover:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh574:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C_ctor
__C_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh573:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str463, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__C_vtable459, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_call
__B_call:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh572:
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_over
__B_over:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh571:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_ctor
__B_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh570:
	movl $8, %eax
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
	movl $__const_str462, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__B_vtable458, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_call
__A_call:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh569:
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_foo
__A_foo:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh568:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $8, %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_over
__A_over:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh567:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_ctor
__A_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh566:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str461, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__A_vtable457, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh565:
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
__fresh564:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str460, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable456, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
