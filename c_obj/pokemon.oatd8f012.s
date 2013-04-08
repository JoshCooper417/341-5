	.align 4
	.data
__const_str597:
	.ascii "6\0"
_c595:
	.long 0
_p593:
	.long 0
__const_str592:
	.ascii "5\0"
__const_str591:
	.ascii "4\0"
__const_str590:
	.ascii "Charmander\0"
__const_str589:
	.ascii "3\0"
__const_str587:
	.ascii "2\0"
__const_str588:
	.ascii "Pikachu\0"
__const_str586:
	.ascii "9\0"
__const_str585:
	.ascii "Pokemon\0"
__const_str584:
	.ascii "Object\0"
__Charmander_vtable583:
	.long __Pokemon_vtable581
	.long __Object_get_name
	.long __Pokemon_gethit
	.long __Charmander_attack
	.long __Charmander_noise

__Pikachu_vtable582:
	.long __Pokemon_vtable581
	.long __Object_get_name
	.long __Pokemon_gethit
	.long __Pikachu_attack
	.long __Pikachu_noise

__Pokemon_vtable581:
	.long __Object_vtable580
	.long __Object_get_name
	.long __Pokemon_gethit

__Object_vtable580:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh678:
	call _p593.init594
	addl $0, %esp
	call _c595.init596
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $196, %esp
__fresh677:
	leal -196(%ebp), %eax
	movl %eax, -188(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -188(%ebp), %eax
	movl %ecx, (%eax)
	leal -192(%ebp), %eax
	movl %eax, -184(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -184(%ebp), %eax
	movl %ecx, (%eax)
	movl $_p593, %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl $_c595, %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl $__Charmander_vtable583, %eax
	addl $12, %eax
	movl %eax, -172(%ebp)
	movl -172(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -164(%ebp)
	movl -180(%ebp), %eax
	pushl %eax
	movl -164(%ebp), %eax
	pushl %eax
	movl -168(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_c595, %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl $_p593, %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl $__Pikachu_vtable582, %eax
	addl $12, %eax
	movl %eax, -152(%ebp)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -156(%ebp), %eax
	movl %eax, -144(%ebp)
	movl -160(%ebp), %eax
	pushl %eax
	movl -144(%ebp), %eax
	pushl %eax
	movl -148(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_p593, %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl $_c595, %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl $__Charmander_vtable583, %eax
	addl $12, %eax
	movl %eax, -132(%ebp)
	movl -132(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -136(%ebp), %eax
	movl %eax, -124(%ebp)
	movl -140(%ebp), %eax
	pushl %eax
	movl -124(%ebp), %eax
	pushl %eax
	movl -128(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_c595, %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl $_p593, %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl $__Pikachu_vtable582, %eax
	addl $12, %eax
	movl %eax, -112(%ebp)
	movl -112(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -116(%ebp), %eax
	movl %eax, -104(%ebp)
	movl -120(%ebp), %eax
	pushl %eax
	movl -104(%ebp), %eax
	pushl %eax
	movl -108(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_p593, %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl $_c595, %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl $__Charmander_vtable583, %eax
	addl $12, %eax
	movl %eax, -92(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -96(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -100(%ebp), %eax
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	movl -88(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_c595, %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl $_p593, %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl $__Pikachu_vtable582, %eax
	addl $12, %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -64(%ebp)
	movl -80(%ebp), %eax
	pushl %eax
	movl -64(%ebp), %eax
	pushl %eax
	movl -68(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_p593, %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl $_c595, %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl $__Charmander_vtable583, %eax
	addl $12, %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -60(%ebp), %eax
	pushl %eax
	movl -44(%ebp), %eax
	pushl %eax
	movl -48(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_c595, %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl $_p593, %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl $__Pikachu_vtable582, %eax
	addl $12, %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -36(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	movl -24(%ebp), %eax
	pushl %eax
	movl -28(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $_p593, %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl $_c595, %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl $__Charmander_vtable583, %eax
	addl $12, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	movl -4(%ebp), %eax
	pushl %eax
	movl -8(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl $__const_str597, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _c595.init596
_c595.init596:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh676:
	movl $20, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call __Charmander_ctor
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %eax, _c595
	movl %ebp, %esp
	popl %ebp
	ret
.globl _p593.init594
_p593.init594:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh675:
	movl $20, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call __Pikachu_ctor
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %eax, _p593
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Charmander_noise
__Charmander_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh674:
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Charmander_attack
__Charmander_attack:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
__fresh673:
	leal -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl $__const_str592, %eax
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
	call _print_string
	addl $4, %esp
	movl 8(%ebp), %eax
	addl $16, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl $__Pikachu_vtable582, %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	movl -4(%ebp), %eax
	pushl %eax
	movl -8(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Charmander_ctor
__Charmander_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh672:
	movl -20(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $20, %eax
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
	call __Pokemon_ctor
	movl %eax, -24(%ebp)
	addl $8, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $__const_str590, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $12, %eax
	movl %eax, -12(%ebp)
	movl $__const_str591, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl $__Charmander_vtable583, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $16, %eax
	movl %eax, -4(%ebp)
	movl $16, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Pikachu_noise
__Pikachu_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh671:
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Pikachu_attack
__Pikachu_attack:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
__fresh670:
	leal -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl $__const_str589, %eax
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
	call _print_string
	addl $4, %esp
	movl 8(%ebp), %eax
	addl $16, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl $__Charmander_vtable583, %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -16(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	movl -4(%ebp), %eax
	pushl %eax
	movl -8(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Pikachu_ctor
__Pikachu_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh669:
	movl -20(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $20, %eax
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
	call __Pokemon_ctor
	movl %eax, -24(%ebp)
	addl $8, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $__const_str588, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $__Pikachu_vtable582, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $16, %eax
	movl %eax, -8(%ebp)
	movl $25, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $12, %eax
	movl %eax, -4(%ebp)
	movl $__const_str587, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Pokemon_gethit
__Pokemon_gethit:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh668:
	leal -36(%ebp), %eax
	movl %eax, -32(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -28(%ebp)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -16(%ebp), %eax
	movl %eax, %ecx
	subl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Pokemon_ctor
__Pokemon_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh667:
	movl -20(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $16, %eax
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
	movl $__const_str585, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $12, %eax
	movl %eax, -12(%ebp)
	movl $__const_str586, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl $__Pokemon_vtable581, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl $100, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
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
__fresh666:
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
__fresh665:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str584, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable580, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
