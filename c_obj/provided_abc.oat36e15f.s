	.align 4
	.data
__C2_vtable300:
	.long __B_vtable298
	.long __Object_get_name

__C1_vtable299:
	.long __B_vtable298
	.long __Object_get_name

__B_vtable298:
	.long __A_vtable297
	.long __Object_get_name

__A_vtable297:
	.long __Object_vtable296
	.long __Object_get_name

__Object_vtable296:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh435:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $96, %esp
__fresh434:
	leal -96(%ebp), %eax
	movl %eax, -72(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	leal -92(%ebp), %eax
	movl %eax, -68(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -64(%ebp)
	addl $4, %esp
	movl -64(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -56(%ebp)
	addl $4, %esp
	leal -88(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -48(%ebp)
	addl $4, %esp
	movl -48(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -40(%ebp)
	addl $4, %esp
	leal -84(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
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
	call __C1_ctor
	movl %eax, -24(%ebp)
	addl $4, %esp
	leal -80(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	call __C2_ctor
	movl %eax, -8(%ebp)
	addl $4, %esp
	leal -76(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C2_ctor
__C2_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh433:
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C1_ctor
__C1_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh432:
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_ctor
__B_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh431:
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_ctor
__A_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh430:
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh429:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_ctor
__Object_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh428:
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
