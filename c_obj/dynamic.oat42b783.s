	.align 4
	.data
_o483:
	.long 0
__const_str482:
	.ascii "hoot!\0"
__const_str481:
	.ascii "Owl\0"
__const_str480:
	.ascii "oot!\0"
__const_str479:
	.ascii "Wl\0"
__const_str478:
	.ascii "Object\0"
__Owl_vtable477:
	.long __Wl_vtable476
	.long __Object_get_name
	.long __Owl_noise
	.long __Wl_parentmethod
	.long __Owl_secondoverride
	.long __Owl_childmethod

__Wl_vtable476:
	.long __Object_vtable475
	.long __Object_get_name
	.long __Wl_noise
	.long __Wl_parentmethod
	.long __Wl_secondoverride

__Object_vtable475:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh771:
	call _o483.init484
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $120, %esp
__fresh770:
	leal -120(%ebp), %eax
	movl %eax, -112(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	movl %ecx, (%eax)
	leal -116(%ebp), %eax
	movl %eax, -108(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	movl %ecx, (%eax)
	movl $_o483, %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	pushl %eax
	call _getNoise
	movl %eax, -96(%ebp)
	addl $4, %esp
	movl -96(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $_o483, %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	addl $20, %eax
	movl %eax, -80(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -92(%ebp), %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	pushl %eax
	movl -76(%ebp), %eax
	call *%eax
	movl %eax, -68(%ebp)
	addl $4, %esp
	movl $_o483, %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	addl $12, %eax
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
	movl %eax, -40(%ebp)
	addl $4, %esp
	movl -68(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -36(%ebp)
	movl $_o483, %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	addl $16, %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	movl -16(%ebp), %eax
	call *%eax
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -36(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _o483.init484
_o483.init484:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh769:
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
	movl %eax, _o483
	movl %ebp, %esp
	popl %ebp
	ret
.globl _getNoise
_getNoise:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh768:
	leal -36(%ebp), %eax
	movl %eax, -32(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	addl $8, %eax
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
.globl __Owl_secondoverride
__Owl_secondoverride:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh767:
	movl 8(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
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
__fresh766:
	movl $3, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Owl_noise
__Owl_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh765:
	movl $__const_str482, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Owl_ctor
__Owl_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh764:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	call __Wl_ctor
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str481, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Owl_vtable477, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Wl_secondoverride
__Wl_secondoverride:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
__fresh763:
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
__fresh762:
	movl $40, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Wl_noise
__Wl_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh761:
	movl $__const_str480, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Wl_ctor
__Wl_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh760:
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
	movl $__const_str479, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Wl_vtable476, %eax
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
__fresh759:
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
__fresh758:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str478, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable475, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
