	.align 4
	.data
_x500:
	.long 0
_a498:
	.long 0
__const_str497:
	.ascii "C: w=\0"
__const_str496:
	.ascii "C: z=\0"
__const_str495:
	.ascii "C: y=\0"
__const_str494:
	.ascii "C: x=\0"
__const_str493:
	.ascii "C.foo: b=\0"
__const_str492:
	.ascii "C.foo: a=\0"
__const_str491:
	.ascii "C\0"
__const_str490:
	.ascii "B: z=\0"
__const_str489:
	.ascii "B: y=\0"
__const_str488:
	.ascii "B: x=\0"
__const_str487:
	.ascii "B\0"
__const_str486:
	.ascii "A: x=\0"
__const_str485:
	.ascii "A\0"
__const_str484:
	.ascii "Object\0"
__C_vtable483:
	.long __B_vtable482
	.long __Object_get_name
	.long __C_print
	.long __C_foo

__B_vtable482:
	.long __A_vtable481
	.long __Object_get_name
	.long __B_print

__A_vtable481:
	.long __Object_vtable480
	.long __Object_get_name
	.long __A_print

__Object_vtable480:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh610:
	call _a498.init499
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $192, %esp
__fresh609:
	leal -192(%ebp), %eax
	movl %eax, -176(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -176(%ebp), %eax
	movl %ecx, (%eax)
	leal -188(%ebp), %eax
	movl %eax, -172(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -172(%ebp), %eax
	movl %ecx, (%eax)
	movl $_x500, %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	movl %eax, -164(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	addl %ecx, -164(%ebp)
	movl $_x500, %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -160(%ebp), %eax
	movl %eax, -156(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	addl %ecx, -156(%ebp)
	movl $_x500, %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -152(%ebp), %eax
	movl %eax, -148(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -148(%ebp)
	movl $20, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -144(%ebp)
	addl $4, %esp
	movl -144(%ebp), %eax
	movl %eax, -140(%ebp)
	movl -164(%ebp), %eax
	pushl %eax
	movl -156(%ebp), %eax
	pushl %eax
	movl -148(%ebp), %eax
	pushl %eax
	movl -140(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -136(%ebp)
	addl $16, %esp
	leal -184(%ebp), %eax
	movl %eax, -132(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	movl %ecx, (%eax)
	movl $24, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -128(%ebp)
	addl $4, %esp
	movl -128(%ebp), %eax
	movl %eax, -124(%ebp)
	movl $4, %eax
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -124(%ebp), %eax
	pushl %eax
	call __C_ctor
	movl %eax, -120(%ebp)
	addl $20, %esp
	leal -180(%ebp), %eax
	movl %eax, -116(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	movl %ecx, (%eax)
	movl $_a498, %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %eax, -108(%ebp)
	movl -108(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	addl $8, %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -112(%ebp), %eax
	movl %eax, -92(%ebp)
	movl -92(%ebp), %eax
	pushl %eax
	movl -96(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl -132(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	addl $8, %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -88(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	pushl %eax
	movl -72(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	addl $8, %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -64(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	pushl %eax
	movl -48(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $_x500, %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	addl %ecx, -36(%ebp)
	movl $_x500, %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -28(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -16(%ebp), %eax
	addl $12, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -24(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -36(%ebp), %eax
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	movl -4(%ebp), %eax
	pushl %eax
	movl -8(%ebp), %eax
	call *%eax
	addl $12, %esp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a498.init499
_a498.init499:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh608:
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl $3, %eax
	pushl %eax
	movl -8(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -4(%ebp)
	addl $8, %esp
	movl -4(%ebp), %eax
	movl %eax, _a498
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C_print
__C_print:
	pushl %ebp
	movl %esp, %ebp
	subl $64, %esp
__fresh607:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	pushl %eax
	call _string_of_int
	movl %eax, -56(%ebp)
	addl $4, %esp
	movl -56(%ebp), %eax
	pushl %eax
	movl $__const_str494, %eax
	pushl %eax
	call _string_cat
	movl %eax, -52(%ebp)
	addl $8, %esp
	movl -52(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	pushl %eax
	call _string_of_int
	movl %eax, -40(%ebp)
	addl $4, %esp
	movl -40(%ebp), %eax
	pushl %eax
	movl $__const_str495, %eax
	pushl %eax
	call _string_cat
	movl %eax, -36(%ebp)
	addl $8, %esp
	movl -36(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl 8(%ebp), %eax
	addl $16, %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	call _string_of_int
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	pushl %eax
	movl $__const_str496, %eax
	pushl %eax
	call _string_cat
	movl %eax, -20(%ebp)
	addl $8, %esp
	movl -20(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl 8(%ebp), %eax
	addl $20, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	call _string_of_int
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -8(%ebp), %eax
	pushl %eax
	movl $__const_str497, %eax
	pushl %eax
	call _string_cat
	movl %eax, -4(%ebp)
	addl $8, %esp
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C_foo
__C_foo:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
__fresh606:
	leal -40(%ebp), %eax
	movl %eax, -32(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	leal -36(%ebp), %eax
	movl %eax, -28(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	pushl %eax
	call _string_of_int
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	pushl %eax
	movl $__const_str492, %eax
	pushl %eax
	call _string_cat
	movl %eax, -16(%ebp)
	addl $8, %esp
	movl -16(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	call _string_of_int
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -8(%ebp), %eax
	pushl %eax
	movl $__const_str493, %eax
	pushl %eax
	call _string_cat
	movl %eax, -4(%ebp)
	addl $8, %esp
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C_ctor
__C_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $76, %esp
__fresh605:
	leal -76(%ebp), %eax
	movl %eax, -60(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	leal -72(%ebp), %eax
	movl %eax, -56(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	leal -68(%ebp), %eax
	movl %eax, -52(%ebp)
	movl 20(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	leal -64(%ebp), %eax
	movl %eax, -48(%ebp)
	movl 24(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl $20, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -44(%ebp), %eax
	pushl %eax
	movl -40(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -24(%ebp)
	addl $16, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $__const_str491, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $__C_vtable483, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $20, %eax
	movl %eax, -8(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_print
__B_print:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh604:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	pushl %eax
	call _string_of_int
	movl %eax, -40(%ebp)
	addl $4, %esp
	movl -40(%ebp), %eax
	pushl %eax
	movl $__const_str488, %eax
	pushl %eax
	call _string_cat
	movl %eax, -36(%ebp)
	addl $8, %esp
	movl -36(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	call _string_of_int
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	pushl %eax
	movl $__const_str489, %eax
	pushl %eax
	call _string_cat
	movl %eax, -20(%ebp)
	addl $8, %esp
	movl -20(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl 8(%ebp), %eax
	addl $16, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	call _string_of_int
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -8(%ebp), %eax
	pushl %eax
	movl $__const_str490, %eax
	pushl %eax
	call _string_cat
	movl %eax, -4(%ebp)
	addl $8, %esp
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_ctor
__B_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $68, %esp
__fresh603:
	leal -68(%ebp), %eax
	movl %eax, -56(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	leal -64(%ebp), %eax
	movl %eax, -52(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	leal -60(%ebp), %eax
	movl %eax, -48(%ebp)
	movl 20(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -40(%ebp)
	addl $4, %esp
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -44(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -32(%ebp)
	addl $8, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	addl $4, %eax
	movl %eax, -24(%ebp)
	movl $__const_str487, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl $__B_vtable482, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $12, %eax
	movl %eax, -16(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $16, %eax
	movl %eax, -8(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_print
__A_print:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh602:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	call _string_of_int
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -8(%ebp), %eax
	pushl %eax
	movl $__const_str486, %eax
	pushl %eax
	call _string_cat
	movl %eax, -4(%ebp)
	addl $8, %esp
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_ctor
__A_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
__fresh601:
	leal -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $__const_str485, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $__A_vtable481, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh600:
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
__fresh599:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str484, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable480, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
