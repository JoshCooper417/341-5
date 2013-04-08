	.align 4
	.data
_a3173:
	.long 0
_a2171:
	.long 0
_a1169:
	.long 0
__const_str168:
	.ascii "A\0"
__A_vtable167:
	.long __Object_vtable166
	.long __Object_get_name
	.long __A_print

__Object_vtable166:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh355:
	call _a1169.init170
	addl $0, %esp
	call _a2171.init172
	addl $0, %esp
	call _a3173.init174
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $100, %esp
__fresh354:
	leal -100(%ebp), %eax
	movl %eax, -88(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	leal -96(%ebp), %eax
	movl %eax, -84(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -80(%ebp)
	addl $4, %esp
	movl -80(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -72(%ebp)
	addl $4, %esp
	leal -92(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl $__A_vtable167, %eax
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
	movl $_a1169, %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl $__A_vtable167, %eax
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
	movl $_a2171, %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl $__A_vtable167, %eax
	addl $8, %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	movl -24(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $_a3173, %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl $__A_vtable167, %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	pushl %eax
	movl -8(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a3173.init174
_a3173.init174:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh353:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %eax, _a3173
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a2171.init172
_a2171.init172:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh352:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %eax, _a2171
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a1169.init170
_a1169.init170:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh351:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %eax, _a1169
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_print
__A_print:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh350:
	movl $__const_str168, %eax
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
	subl $36, %esp
__fresh349:
	movl 8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -36(%ebp), %eax
	movl %eax, -32(%ebp)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -28(%ebp)
	addl $4, %esp
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -32(%ebp), %eax
	pushl %eax
	movl -24(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -20(%ebp)
	addl $8, %esp
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
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh348:
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
__fresh347:
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
