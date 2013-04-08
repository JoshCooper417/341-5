	.align 4
	.data
__const_str335:
	.ascii "G\0"
__const_str334:
	.ascii "F\0"
__const_str333:
	.ascii "E\0"
__const_str332:
	.ascii "D\0"
__const_str331:
	.ascii "C\0"
__const_str330:
	.ascii "B\0"
__const_str329:
	.ascii "A\0"
__const_str328:
	.ascii "Object\0"
__G_vtable327:
	.long __D_vtable324
	.long __Object_get_name

__F_vtable326:
	.long __B_vtable322
	.long __Object_get_name

__E_vtable325:
	.long __Object_vtable320
	.long __Object_get_name

__D_vtable324:
	.long __C_vtable323
	.long __Object_get_name

__C_vtable323:
	.long __B_vtable322
	.long __Object_get_name

__B_vtable322:
	.long __Object_vtable320
	.long __Object_get_name

__A_vtable321:
	.long __Object_vtable320
	.long __Object_get_name

__Object_vtable320:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh366:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $348, %esp
__fresh365:
	leal -348(%ebp), %eax
	movl %eax, -308(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -308(%ebp), %eax
	movl %ecx, (%eax)
	leal -344(%ebp), %eax
	movl %eax, -304(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -304(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -300(%ebp)
	addl $4, %esp
	movl -300(%ebp), %eax
	movl %eax, -296(%ebp)
	movl -296(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -292(%ebp)
	addl $4, %esp
	leal -340(%ebp), %eax
	movl %eax, -288(%ebp)
	movl -292(%ebp), %eax
	movl %eax, %ecx
	movl -288(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -284(%ebp)
	addl $4, %esp
	movl -284(%ebp), %eax
	movl %eax, -280(%ebp)
	movl -280(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -276(%ebp)
	addl $4, %esp
	leal -336(%ebp), %eax
	movl %eax, -272(%ebp)
	movl -276(%ebp), %eax
	movl %eax, %ecx
	movl -272(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -268(%ebp)
	addl $4, %esp
	movl -268(%ebp), %eax
	movl %eax, -264(%ebp)
	movl -264(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -260(%ebp)
	addl $4, %esp
	leal -332(%ebp), %eax
	movl %eax, -256(%ebp)
	movl -260(%ebp), %eax
	movl %eax, %ecx
	movl -256(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -252(%ebp)
	addl $4, %esp
	movl -252(%ebp), %eax
	movl %eax, -248(%ebp)
	movl -248(%ebp), %eax
	pushl %eax
	call __C_ctor
	movl %eax, -244(%ebp)
	addl $4, %esp
	movl -244(%ebp), %eax
	movl %eax, -240(%ebp)
	leal -328(%ebp), %eax
	movl %eax, -236(%ebp)
	movl -240(%ebp), %eax
	movl %eax, %ecx
	movl -236(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -232(%ebp)
	addl $4, %esp
	movl -232(%ebp), %eax
	movl %eax, -228(%ebp)
	movl -228(%ebp), %eax
	pushl %eax
	call __D_ctor
	movl %eax, -224(%ebp)
	addl $4, %esp
	movl -224(%ebp), %eax
	movl %eax, -220(%ebp)
	leal -324(%ebp), %eax
	movl %eax, -216(%ebp)
	movl -220(%ebp), %eax
	movl %eax, %ecx
	movl -216(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -212(%ebp)
	addl $4, %esp
	movl -212(%ebp), %eax
	movl %eax, -208(%ebp)
	movl -208(%ebp), %eax
	pushl %eax
	call __E_ctor
	movl %eax, -204(%ebp)
	addl $4, %esp
	leal -320(%ebp), %eax
	movl %eax, -200(%ebp)
	movl -204(%ebp), %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -196(%ebp)
	addl $4, %esp
	movl -196(%ebp), %eax
	movl %eax, -192(%ebp)
	movl -192(%ebp), %eax
	pushl %eax
	call __F_ctor
	movl %eax, -188(%ebp)
	addl $4, %esp
	movl -188(%ebp), %eax
	movl %eax, -184(%ebp)
	leal -316(%ebp), %eax
	movl %eax, -180(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl -180(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -176(%ebp)
	addl $4, %esp
	movl -176(%ebp), %eax
	movl %eax, -172(%ebp)
	movl -172(%ebp), %eax
	pushl %eax
	call __G_ctor
	movl %eax, -168(%ebp)
	addl $4, %esp
	leal -312(%ebp), %eax
	movl %eax, -164(%ebp)
	movl -168(%ebp), %eax
	movl %eax, %ecx
	movl -164(%ebp), %eax
	movl %ecx, (%eax)
	movl -288(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl $__Object_vtable320, %eax
	addl $4, %eax
	movl %eax, -156(%ebp)
	movl -156(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -160(%ebp), %eax
	movl %eax, -148(%ebp)
	movl -148(%ebp), %eax
	pushl %eax
	movl -152(%ebp), %eax
	call *%eax
	movl %eax, -144(%ebp)
	addl $4, %esp
	movl -144(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -272(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl $__A_vtable321, %eax
	addl $4, %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -128(%ebp)
	movl -128(%ebp), %eax
	pushl %eax
	movl -132(%ebp), %eax
	call *%eax
	movl %eax, -124(%ebp)
	addl $4, %esp
	movl -124(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -256(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl $__B_vtable322, %eax
	addl $4, %eax
	movl %eax, -116(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -120(%ebp), %eax
	movl %eax, -108(%ebp)
	movl -108(%ebp), %eax
	pushl %eax
	movl -112(%ebp), %eax
	call *%eax
	movl %eax, -104(%ebp)
	addl $4, %esp
	movl -104(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -236(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl $__B_vtable322, %eax
	addl $4, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -100(%ebp), %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	pushl %eax
	movl -92(%ebp), %eax
	call *%eax
	movl %eax, -84(%ebp)
	addl $4, %esp
	movl -84(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -216(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl $__B_vtable322, %eax
	addl $4, %eax
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
	movl %eax, -64(%ebp)
	addl $4, %esp
	movl -64(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl $__E_vtable325, %eax
	addl $4, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -60(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	pushl %eax
	movl -52(%ebp), %eax
	call *%eax
	movl %eax, -44(%ebp)
	addl $4, %esp
	movl -44(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -180(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl $__B_vtable322, %eax
	addl $4, %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -40(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	movl -32(%ebp), %eax
	call *%eax
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl $__G_vtable327, %eax
	addl $4, %eax
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
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __G_ctor
__G_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh364:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	call __D_ctor
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str335, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__G_vtable327, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __F_ctor
__F_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh363:
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
	movl $__const_str334, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__F_vtable326, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __E_ctor
__E_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh362:
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
	movl $__const_str333, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__E_vtable325, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __D_ctor
__D_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh361:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	call __C_ctor
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str332, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__D_vtable324, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C_ctor
__C_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh360:
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
	movl $__const_str331, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__C_vtable323, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_ctor
__B_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh359:
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
	movl $__const_str330, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__B_vtable322, %eax
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
	subl $24, %esp
__fresh358:
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
	movl $__const_str329, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__A_vtable321, %eax
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
__fresh357:
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
__fresh356:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str328, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable320, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
