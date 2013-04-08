	.align 4
	.data
_x502:
	.long 0
_a500:
	.long 0
__const_str499:
	.ascii "C: w=\0"
__const_str498:
	.ascii "C: z=\0"
__const_str497:
	.ascii "C: y=\0"
__const_str496:
	.ascii "C: x=\0"
__const_str495:
	.ascii "C.foo: b=\0"
__const_str494:
	.ascii "C.foo: a=\0"
__const_str493:
	.ascii "C\0"
__const_str492:
	.ascii "B: z=\0"
__const_str491:
	.ascii "B: y=\0"
__const_str490:
	.ascii "B: x=\0"
__const_str489:
	.ascii "B\0"
__const_str488:
	.ascii "A: x=\0"
__const_str487:
	.ascii "A\0"
__const_str486:
	.ascii "Object\0"
__C_vtable485:
	.long __B_vtable484
	.long __Object_get_name
	.long __C_print
	.long __C_foo

__B_vtable484:
	.long __A_vtable483
	.long __Object_get_name
	.long __B_print

__A_vtable483:
	.long __Object_vtable482
	.long __Object_get_name
	.long __A_print

__Object_vtable482:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh535:
	call _a500.init501
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $160, %esp
__fresh534:
	leal -160(%ebp), %eax
	movl %eax, -144(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	movl %ecx, (%eax)
	leal -156(%ebp), %eax
	movl %eax, -140(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -140(%ebp), %eax
	movl %ecx, (%eax)
	movl $_x502, %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, -132(%ebp)
	movl $3, %eax
	movl %eax, %ecx
	addl %ecx, -132(%ebp)
	movl $_x502, %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	movl %eax, -124(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	addl %ecx, -124(%ebp)
	movl $_x502, %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	movl %eax, -116(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -116(%ebp)
	movl $20, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -112(%ebp)
	addl $4, %esp
	movl -112(%ebp), %eax
	movl %eax, -108(%ebp)
	movl -132(%ebp), %eax
	pushl %eax
	movl -124(%ebp), %eax
	pushl %eax
	movl -116(%ebp), %eax
	pushl %eax
	movl -108(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -104(%ebp)
	addl $16, %esp
	leal -152(%ebp), %eax
	movl %eax, -100(%ebp)
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	movl $24, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -96(%ebp)
	addl $4, %esp
	movl -96(%ebp), %eax
	movl %eax, -92(%ebp)
	movl $4, %eax
	pushl %eax
	movl $3, %eax
	pushl %eax
	movl $2, %eax
	pushl %eax
	movl $1, %eax
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	call __C_ctor
	movl %eax, -88(%ebp)
	addl $20, %esp
	leal -148(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl $_a500, %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl $__A_vtable483, %eax
	addl $8, %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -80(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	pushl %eax
	movl -72(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl $__B_vtable484, %eax
	addl $8, %eax
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
	addl $4, %esp
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl $__C_vtable485, %eax
	addl $8, %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -48(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	pushl %eax
	movl -40(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $_x502, %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	addl %ecx, -28(%ebp)
	movl $_x502, %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -20(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl $__C_vtable485, %eax
	addl $12, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	movl -20(%ebp), %eax
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
.globl _a500.init501
_a500.init501:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh533:
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
	movl %eax, _a500
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C_print
__C_print:
	pushl %ebp
	movl %esp, %ebp
	subl $64, %esp
__fresh532:
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
	movl $__const_str496, %eax
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
	movl $__const_str497, %eax
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
	movl $__const_str498, %eax
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
	movl $__const_str499, %eax
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
__fresh531:
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
	movl $__const_str494, %eax
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
	movl $__const_str495, %eax
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
	subl $80, %esp
__fresh530:
	leal -80(%ebp), %eax
	movl %eax, -64(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	leal -76(%ebp), %eax
	movl %eax, -60(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	leal -72(%ebp), %eax
	movl %eax, -56(%ebp)
	movl 20(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	leal -68(%ebp), %eax
	movl %eax, -52(%ebp)
	movl 24(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $24, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -48(%ebp), %eax
	pushl %eax
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
	addl $20, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $__const_str493, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $__C_vtable485, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $20, %eax
	movl %eax, -8(%ebp)
	movl -52(%ebp), %eax
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
__fresh529:
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
	movl $__const_str490, %eax
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
	movl $__const_str491, %eax
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
	movl $__const_str492, %eax
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
	subl $72, %esp
__fresh528:
	leal -72(%ebp), %eax
	movl %eax, -60(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	leal -68(%ebp), %eax
	movl %eax, -56(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	leal -64(%ebp), %eax
	movl %eax, -52(%ebp)
	movl 20(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -44(%ebp)
	movl $20, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -40(%ebp)
	addl $4, %esp
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -48(%ebp), %eax
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -32(%ebp)
	addl $12, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	addl $4, %eax
	movl %eax, -24(%ebp)
	movl $__const_str489, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl $__B_vtable484, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $12, %eax
	movl %eax, -16(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $16, %eax
	movl %eax, -8(%ebp)
	movl -52(%ebp), %eax
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
__fresh527:
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
	movl $__const_str488, %eax
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
	subl $44, %esp
__fresh526:
	leal -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -40(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -36(%ebp), %eax
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -24(%ebp)
	addl $8, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $__const_str487, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $__A_vtable483, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -40(%ebp), %eax
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
__fresh525:
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
__fresh524:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str486, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable482, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
