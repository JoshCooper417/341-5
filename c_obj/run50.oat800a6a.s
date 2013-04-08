	.align 4
	.data
__const_str324:
	.ascii "G\0"
__const_str323:
	.ascii "F\0"
__const_str322:
	.ascii "E\0"
__const_str321:
	.ascii "D\0"
__const_str320:
	.ascii "C\0"
__const_str319:
	.ascii "B\0"
__const_str318:
	.ascii "A\0"
__const_str317:
	.ascii "Object\0"
__G_vtable316:
	.long __D_vtable313
	.long __Object_get_name

__F_vtable315:
	.long __B_vtable311
	.long __Object_get_name

__E_vtable314:
	.long __Object_vtable309
	.long __Object_get_name

__D_vtable313:
	.long __C_vtable312
	.long __Object_get_name

__C_vtable312:
	.long __B_vtable311
	.long __Object_get_name

__B_vtable311:
	.long __Object_vtable309
	.long __Object_get_name

__A_vtable310:
	.long __Object_vtable309
	.long __Object_get_name

__Object_vtable309:
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
	subl $412, %esp
__fresh365:
	leal -412(%ebp), %eax
	movl %eax, -372(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -372(%ebp), %eax
	movl %ecx, (%eax)
	leal -408(%ebp), %eax
	movl %eax, -368(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -368(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -364(%ebp)
	addl $4, %esp
	movl -364(%ebp), %eax
	movl %eax, -360(%ebp)
	movl -360(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -356(%ebp)
	addl $4, %esp
	leal -404(%ebp), %eax
	movl %eax, -352(%ebp)
	movl -356(%ebp), %eax
	movl %eax, %ecx
	movl -352(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -348(%ebp)
	addl $4, %esp
	movl -348(%ebp), %eax
	movl %eax, -344(%ebp)
	movl -344(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -340(%ebp)
	addl $4, %esp
	leal -400(%ebp), %eax
	movl %eax, -336(%ebp)
	movl -340(%ebp), %eax
	movl %eax, %ecx
	movl -336(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -332(%ebp)
	addl $4, %esp
	movl -332(%ebp), %eax
	movl %eax, -328(%ebp)
	movl -328(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -324(%ebp)
	addl $4, %esp
	leal -396(%ebp), %eax
	movl %eax, -320(%ebp)
	movl -324(%ebp), %eax
	movl %eax, %ecx
	movl -320(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -316(%ebp)
	addl $4, %esp
	movl -316(%ebp), %eax
	movl %eax, -312(%ebp)
	movl -312(%ebp), %eax
	pushl %eax
	call __C_ctor
	movl %eax, -308(%ebp)
	addl $4, %esp
	movl -308(%ebp), %eax
	movl %eax, -304(%ebp)
	leal -392(%ebp), %eax
	movl %eax, -300(%ebp)
	movl -304(%ebp), %eax
	movl %eax, %ecx
	movl -300(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -296(%ebp)
	addl $4, %esp
	movl -296(%ebp), %eax
	movl %eax, -292(%ebp)
	movl -292(%ebp), %eax
	pushl %eax
	call __D_ctor
	movl %eax, -288(%ebp)
	addl $4, %esp
	movl -288(%ebp), %eax
	movl %eax, -284(%ebp)
	leal -388(%ebp), %eax
	movl %eax, -280(%ebp)
	movl -284(%ebp), %eax
	movl %eax, %ecx
	movl -280(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -276(%ebp)
	addl $4, %esp
	movl -276(%ebp), %eax
	movl %eax, -272(%ebp)
	movl -272(%ebp), %eax
	pushl %eax
	call __E_ctor
	movl %eax, -268(%ebp)
	addl $4, %esp
	leal -384(%ebp), %eax
	movl %eax, -264(%ebp)
	movl -268(%ebp), %eax
	movl %eax, %ecx
	movl -264(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -260(%ebp)
	addl $4, %esp
	movl -260(%ebp), %eax
	movl %eax, -256(%ebp)
	movl -256(%ebp), %eax
	pushl %eax
	call __F_ctor
	movl %eax, -252(%ebp)
	addl $4, %esp
	movl -252(%ebp), %eax
	movl %eax, -248(%ebp)
	leal -380(%ebp), %eax
	movl %eax, -244(%ebp)
	movl -248(%ebp), %eax
	movl %eax, %ecx
	movl -244(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -240(%ebp)
	addl $4, %esp
	movl -240(%ebp), %eax
	movl %eax, -236(%ebp)
	movl -236(%ebp), %eax
	pushl %eax
	call __G_ctor
	movl %eax, -232(%ebp)
	addl $4, %esp
	leal -376(%ebp), %eax
	movl %eax, -228(%ebp)
	movl -232(%ebp), %eax
	movl %eax, %ecx
	movl -228(%ebp), %eax
	movl %ecx, (%eax)
	movl -352(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	movl -224(%ebp), %eax
	movl %eax, -220(%ebp)
	movl -220(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -216(%ebp), %eax
	addl $4, %eax
	movl %eax, -212(%ebp)
	movl -212(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -224(%ebp), %eax
	movl %eax, -204(%ebp)
	movl -204(%ebp), %eax
	pushl %eax
	movl -208(%ebp), %eax
	call *%eax
	movl %eax, -200(%ebp)
	addl $4, %esp
	movl -200(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -336(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -196(%ebp), %eax
	movl %eax, -192(%ebp)
	movl -192(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -188(%ebp), %eax
	addl $4, %eax
	movl %eax, -184(%ebp)
	movl -184(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -196(%ebp), %eax
	movl %eax, -176(%ebp)
	movl -176(%ebp), %eax
	pushl %eax
	movl -180(%ebp), %eax
	call *%eax
	movl %eax, -172(%ebp)
	addl $4, %esp
	movl -172(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -320(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	movl %eax, -164(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -160(%ebp), %eax
	addl $4, %eax
	movl %eax, -156(%ebp)
	movl -156(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -168(%ebp), %eax
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
	movl -300(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	addl $4, %eax
	movl %eax, -128(%ebp)
	movl -128(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -120(%ebp)
	movl -120(%ebp), %eax
	pushl %eax
	movl -124(%ebp), %eax
	call *%eax
	movl %eax, -116(%ebp)
	addl $4, %esp
	movl -116(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -280(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %eax, -108(%ebp)
	movl -108(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	addl $4, %eax
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
	movl %eax, -88(%ebp)
	addl $4, %esp
	movl -88(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -264(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	movl %eax, -80(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	addl $4, %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -84(%ebp), %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	pushl %eax
	movl -68(%ebp), %eax
	call *%eax
	movl %eax, -60(%ebp)
	addl $4, %esp
	movl -60(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -244(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	addl $4, %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	pushl %eax
	movl -40(%ebp), %eax
	call *%eax
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -228(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
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
	movl $__const_str324, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__G_vtable316, %eax
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
	movl $__const_str323, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__F_vtable315, %eax
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
	movl $__const_str322, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__E_vtable314, %eax
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
	movl $__const_str321, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__D_vtable313, %eax
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
	movl $__const_str320, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__C_vtable312, %eax
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
	movl $__const_str319, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__B_vtable311, %eax
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
	movl $__const_str318, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__A_vtable310, %eax
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
	movl $__const_str317, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable309, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
