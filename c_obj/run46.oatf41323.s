	.align 4
	.data
__const_str308:
	.ascii "B\0"
__const_str307:
	.ascii "A\0"
__const_str306:
	.ascii "S\0"
_arr304:
	.long 0
__const_str303:
	.ascii "Object\0"
__B_vtable302:
	.long __Object_vtable299
	.long __Object_get_name
	.long __B_f

__A_vtable301:
	.long __Object_vtable299
	.long __Object_get_name
	.long __A_g

__S_vtable300:
	.long __Object_vtable299
	.long __Object_get_name
	.long __S_g
	.long __S_f

__Object_vtable299:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh346:
	call _arr304.init305
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $520, %esp
__fresh345:
	leal -520(%ebp), %eax
	movl %eax, -508(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -508(%ebp), %eax
	movl %ecx, (%eax)
	leal -516(%ebp), %eax
	movl %eax, -504(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -504(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -500(%ebp)
	addl $4, %esp
	movl -500(%ebp), %eax
	movl %eax, -496(%ebp)
	movl -496(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -492(%ebp)
	addl $4, %esp
	leal -512(%ebp), %eax
	movl %eax, -488(%ebp)
	movl -492(%ebp), %eax
	movl %eax, %ecx
	movl -488(%ebp), %eax
	movl %ecx, (%eax)
	movl -488(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -484(%ebp)
	movl $__B_vtable302, %eax
	addl $8, %eax
	movl %eax, -480(%ebp)
	movl -480(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -476(%ebp)
	movl -484(%ebp), %eax
	movl %eax, -472(%ebp)
	movl -472(%ebp), %eax
	pushl %eax
	movl -476(%ebp), %eax
	call *%eax
	movl %eax, -468(%ebp)
	addl $4, %esp
	movl -468(%ebp), %eax
	addl $12, %eax
	movl %eax, -464(%ebp)
	movl -464(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -460(%ebp)
	movl $__S_vtable300, %eax
	addl $8, %eax
	movl %eax, -456(%ebp)
	movl -456(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -452(%ebp)
	movl -460(%ebp), %eax
	movl %eax, -448(%ebp)
	movl -448(%ebp), %eax
	pushl %eax
	movl -452(%ebp), %eax
	call *%eax
	movl %eax, -444(%ebp)
	addl $4, %esp
	movl -444(%ebp), %eax
	addl $0, %eax
	movl %eax, -440(%ebp)
	movl -440(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -436(%ebp)
	movl $1, %eax
	pushl %eax
	movl -436(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -444(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -432(%ebp)
	movl $100, %eax
	movl %eax, %ecx
	movl -432(%ebp), %eax
	movl %ecx, (%eax)
	movl -488(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -428(%ebp)
	movl $__B_vtable302, %eax
	addl $8, %eax
	movl %eax, -424(%ebp)
	movl -424(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -420(%ebp)
	movl -428(%ebp), %eax
	movl %eax, -416(%ebp)
	movl -416(%ebp), %eax
	pushl %eax
	movl -420(%ebp), %eax
	call *%eax
	movl %eax, -412(%ebp)
	addl $4, %esp
	movl -412(%ebp), %eax
	addl $8, %eax
	movl %eax, -408(%ebp)
	movl -408(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -404(%ebp)
	movl -488(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -400(%ebp)
	movl $__B_vtable302, %eax
	addl $8, %eax
	movl %eax, -396(%ebp)
	movl -396(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -392(%ebp)
	movl -400(%ebp), %eax
	movl %eax, -388(%ebp)
	movl -388(%ebp), %eax
	pushl %eax
	movl -392(%ebp), %eax
	call *%eax
	movl %eax, -384(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -380(%ebp)
	movl -380(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -376(%ebp)
	movl -384(%ebp), %eax
	movl %eax, -372(%ebp)
	movl -372(%ebp), %eax
	pushl %eax
	movl -376(%ebp), %eax
	call *%eax
	movl %eax, -368(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -364(%ebp)
	movl -364(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -360(%ebp)
	movl -368(%ebp), %eax
	movl %eax, -356(%ebp)
	movl -356(%ebp), %eax
	pushl %eax
	movl -360(%ebp), %eax
	call *%eax
	movl %eax, -352(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -348(%ebp)
	movl -348(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -344(%ebp)
	movl -352(%ebp), %eax
	movl %eax, -340(%ebp)
	movl -340(%ebp), %eax
	pushl %eax
	movl -344(%ebp), %eax
	call *%eax
	movl %eax, -336(%ebp)
	addl $4, %esp
	movl -336(%ebp), %eax
	addl $8, %eax
	movl %eax, -332(%ebp)
	movl -332(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -328(%ebp)
	movl -404(%ebp), %eax
	movl %eax, -324(%ebp)
	movl -328(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -324(%ebp)
	movl -488(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -320(%ebp)
	movl $__B_vtable302, %eax
	addl $8, %eax
	movl %eax, -316(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -312(%ebp)
	movl -320(%ebp), %eax
	movl %eax, -308(%ebp)
	movl -308(%ebp), %eax
	pushl %eax
	movl -312(%ebp), %eax
	call *%eax
	movl %eax, -304(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -300(%ebp)
	movl -300(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -304(%ebp), %eax
	movl %eax, -292(%ebp)
	movl -292(%ebp), %eax
	pushl %eax
	movl -296(%ebp), %eax
	call *%eax
	movl %eax, -288(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -284(%ebp)
	movl -284(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -288(%ebp), %eax
	movl %eax, -276(%ebp)
	movl -276(%ebp), %eax
	pushl %eax
	movl -280(%ebp), %eax
	call *%eax
	movl %eax, -272(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -268(%ebp)
	movl -268(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	movl -272(%ebp), %eax
	movl %eax, -260(%ebp)
	movl -260(%ebp), %eax
	pushl %eax
	movl -264(%ebp), %eax
	call *%eax
	movl %eax, -256(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -252(%ebp)
	movl -252(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -248(%ebp)
	movl -256(%ebp), %eax
	movl %eax, -244(%ebp)
	movl -244(%ebp), %eax
	pushl %eax
	movl -248(%ebp), %eax
	call *%eax
	movl %eax, -240(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -236(%ebp)
	movl -236(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -240(%ebp), %eax
	movl %eax, -228(%ebp)
	movl -228(%ebp), %eax
	pushl %eax
	movl -232(%ebp), %eax
	call *%eax
	movl %eax, -224(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -220(%ebp)
	movl -220(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -224(%ebp), %eax
	movl %eax, -212(%ebp)
	movl -212(%ebp), %eax
	pushl %eax
	movl -216(%ebp), %eax
	call *%eax
	movl %eax, -208(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -204(%ebp)
	movl -204(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl -208(%ebp), %eax
	movl %eax, -196(%ebp)
	movl -196(%ebp), %eax
	pushl %eax
	movl -200(%ebp), %eax
	call *%eax
	movl %eax, -192(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -188(%ebp)
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -192(%ebp), %eax
	movl %eax, -180(%ebp)
	movl -180(%ebp), %eax
	pushl %eax
	movl -184(%ebp), %eax
	call *%eax
	movl %eax, -176(%ebp)
	addl $4, %esp
	movl $__A_vtable301, %eax
	addl $8, %eax
	movl %eax, -172(%ebp)
	movl -172(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -164(%ebp)
	movl -164(%ebp), %eax
	pushl %eax
	movl -168(%ebp), %eax
	call *%eax
	movl %eax, -160(%ebp)
	addl $4, %esp
	movl -160(%ebp), %eax
	addl $8, %eax
	movl %eax, -156(%ebp)
	movl -156(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -324(%ebp), %eax
	movl %eax, -148(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -148(%ebp)
	movl -488(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl $__B_vtable302, %eax
	addl $8, %eax
	movl %eax, -140(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -144(%ebp), %eax
	movl %eax, -132(%ebp)
	movl -132(%ebp), %eax
	pushl %eax
	movl -136(%ebp), %eax
	call *%eax
	movl %eax, -128(%ebp)
	addl $4, %esp
	movl -128(%ebp), %eax
	addl $12, %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl $__S_vtable300, %eax
	addl $12, %eax
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
	addl $8, %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -148(%ebp), %eax
	movl %eax, -92(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -92(%ebp)
	movl $_arr304, %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	addl $0, %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl $1, %eax
	pushl %eax
	movl -80(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -88(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -92(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -68(%ebp)
	movl -488(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl $__B_vtable302, %eax
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
	movl %eax, -48(%ebp)
	addl $4, %esp
	movl -48(%ebp), %eax
	addl $12, %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl $__S_vtable300, %eax
	addl $8, %eax
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
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl $1, %eax
	pushl %eax
	movl -16(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -24(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -68(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_f
__B_f:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh344:
	movl $16, %eax
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
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_ctor
__B_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh343:
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
	movl $__const_str308, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__B_vtable302, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_g
__A_g:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh342:
	movl $16, %eax
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
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_ctor
__A_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $44, %esp
__fresh341:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -44(%ebp)
	addl $4, %esp
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -36(%ebp)
	addl $4, %esp
	movl -36(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	addl $4, %eax
	movl %eax, -28(%ebp)
	movl $__const_str307, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $12, %eax
	movl %eax, -24(%ebp)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	pushl %eax
	call __S_ctor
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl $__A_vtable301, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __S_f
__S_f:
	pushl %ebp
	movl %esp, %ebp
	subl $12, %esp
__fresh340:
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -12(%ebp)
	addl $4, %esp
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	pushl %eax
	call __S_ctor
	movl %eax, -4(%ebp)
	addl $4, %esp
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __S_g
__S_g:
	pushl %ebp
	movl %esp, %ebp
	subl $4, %esp
__fresh339:
	movl $_arr304, %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __S_ctor
__S_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh338:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -28(%ebp)
	addl $4, %esp
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	addl $4, %eax
	movl %eax, -12(%ebp)
	movl $__const_str306, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl $__S_vtable300, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _arr304.init305
_arr304.init305:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh337:
	movl $3, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $0, %eax
	movl %eax, -12(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $4, %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl %eax, _arr304
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh336:
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
__fresh335:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str303, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable299, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
