	.align 4
	.data
_o259:
	.long 0
__const_str258:
	.ascii "hoot!\0"
__const_str257:
	.ascii "oot!\0"
__Owl_vtable256:
	.long __Wl_vtable255
	.long __Object_get_name
	.long __Owl_noise
	.long __Wl_parentmethod
	.long __Owl_secondoverride
	.long __Owl_childmethod

__Wl_vtable255:
	.long __Object_vtable254
	.long __Object_get_name
	.long __Wl_noise
	.long __Wl_parentmethod
	.long __Wl_secondoverride

__Object_vtable254:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh517:
	call _o259.init260
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $96, %esp
__fresh516:
	leal -96(%ebp), %eax
	movl %eax, -88(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	leal -92(%ebp), %eax
	movl %eax, -84(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl $_o259, %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	pushl %eax
	call _getNoise
	movl %eax, -72(%ebp)
	addl $4, %esp
	movl -72(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $_o259, %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl $__Owl_vtable256, %eax
	addl $20, %eax
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
	movl %eax, -52(%ebp)
	addl $4, %esp
	movl $_o259, %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl $__Owl_vtable256, %eax
	addl $12, %eax
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
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -52(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -28(%ebp)
	movl $_o259, %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl $__Owl_vtable256, %eax
	addl $16, %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -24(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	movl -16(%ebp), %eax
	call *%eax
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -28(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _o259.init260
_o259.init260:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh515:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call __Owl_ctor
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %eax, _o259
	movl %ebp, %esp
	popl %ebp
	ret
.globl _getNoise
_getNoise:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh514:
	leal -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl $__Wl_vtable255, %eax
	addl $8, %eax
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
.globl __Owl_secondoverride
__Owl_secondoverride:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh513:
	movl $__Owl_vtable256, %eax
	addl $16, %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl 8(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	movl -16(%ebp), %eax
	call *%eax
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Owl_childmethod
__Owl_childmethod:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh512:
	movl $3, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Owl_noise
__Owl_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh511:
	movl $__const_str258, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Owl_ctor
__Owl_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh510:
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
	call __Wl_ctor
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
.globl __Wl_secondoverride
__Wl_secondoverride:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
__fresh509:
	movl $0, %eax
	movl %eax, -4(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	subl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Wl_parentmethod
__Wl_parentmethod:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh508:
	movl $40, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Wl_noise
__Wl_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh507:
	movl $__const_str257, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Wl_ctor
__Wl_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh506:
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
__fresh505:
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
__fresh504:
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
