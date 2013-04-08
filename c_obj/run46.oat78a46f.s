	.align 4
	.data
__const_str315:
	.ascii "B\0"
__const_str314:
	.ascii "A\0"
__const_str313:
	.ascii "S\0"
_arr311:
	.long 0
__const_str310:
	.ascii "Object\0"
__B_vtable309:
	.long __Object_vtable306
	.long __Object_get_name
	.long __B_f

__A_vtable308:
	.long __Object_vtable306
	.long __Object_get_name
	.long __A_g

__S_vtable307:
	.long __Object_vtable306
	.long __Object_get_name
	.long __S_g
	.long __S_f

__Object_vtable306:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh600:
	call _arr311.init312
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $688, %esp
__fresh599:
	leal -688(%ebp), %eax
	movl %eax, -676(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -676(%ebp), %eax
	movl %ecx, (%eax)
	leal -684(%ebp), %eax
	movl %eax, -672(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -672(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -668(%ebp)
	addl $4, %esp
	movl -668(%ebp), %eax
	movl %eax, -664(%ebp)
	movl -664(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -660(%ebp)
	addl $4, %esp
	leal -680(%ebp), %eax
	movl %eax, -656(%ebp)
	movl -660(%ebp), %eax
	movl %eax, %ecx
	movl -656(%ebp), %eax
	movl %ecx, (%eax)
	movl -656(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -652(%ebp)
	movl -652(%ebp), %eax
	movl %eax, -648(%ebp)
	movl -648(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -644(%ebp)
	movl -644(%ebp), %eax
	addl $8, %eax
	movl %eax, -640(%ebp)
	movl -640(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -636(%ebp)
	movl -652(%ebp), %eax
	movl %eax, -632(%ebp)
	movl -632(%ebp), %eax
	pushl %eax
	movl -636(%ebp), %eax
	call *%eax
	movl %eax, -628(%ebp)
	addl $4, %esp
	movl -628(%ebp), %eax
	addl $12, %eax
	movl %eax, -624(%ebp)
	movl -624(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -620(%ebp)
	movl -620(%ebp), %eax
	movl %eax, -616(%ebp)
	movl -616(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -612(%ebp)
	movl -612(%ebp), %eax
	addl $8, %eax
	movl %eax, -608(%ebp)
	movl -608(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -604(%ebp)
	movl -620(%ebp), %eax
	movl %eax, -600(%ebp)
	movl -600(%ebp), %eax
	pushl %eax
	movl -604(%ebp), %eax
	call *%eax
	movl %eax, -596(%ebp)
	addl $4, %esp
	movl -596(%ebp), %eax
	addl $0, %eax
	movl %eax, -592(%ebp)
	movl -592(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -588(%ebp)
	movl $1, %eax
	pushl %eax
	movl -588(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -596(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -584(%ebp)
	movl $100, %eax
	movl %eax, %ecx
	movl -584(%ebp), %eax
	movl %ecx, (%eax)
	movl -656(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -580(%ebp)
	movl -580(%ebp), %eax
	movl %eax, -576(%ebp)
	movl -576(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -572(%ebp)
	movl -572(%ebp), %eax
	addl $8, %eax
	movl %eax, -568(%ebp)
	movl -568(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -564(%ebp)
	movl -580(%ebp), %eax
	movl %eax, -560(%ebp)
	movl -560(%ebp), %eax
	pushl %eax
	movl -564(%ebp), %eax
	call *%eax
	movl %eax, -556(%ebp)
	addl $4, %esp
	movl -556(%ebp), %eax
	addl $8, %eax
	movl %eax, -552(%ebp)
	movl -552(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -548(%ebp)
	movl -656(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -544(%ebp)
	movl -544(%ebp), %eax
	movl %eax, -540(%ebp)
	movl -540(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -536(%ebp)
	movl -536(%ebp), %eax
	addl $8, %eax
	movl %eax, -532(%ebp)
	movl -532(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -528(%ebp)
	movl -544(%ebp), %eax
	movl %eax, -524(%ebp)
	movl -524(%ebp), %eax
	pushl %eax
	movl -528(%ebp), %eax
	call *%eax
	movl %eax, -520(%ebp)
	addl $4, %esp
	movl -520(%ebp), %eax
	movl %eax, -516(%ebp)
	movl -516(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -512(%ebp)
	movl -512(%ebp), %eax
	addl $8, %eax
	movl %eax, -508(%ebp)
	movl -508(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -504(%ebp)
	movl -520(%ebp), %eax
	movl %eax, -500(%ebp)
	movl -500(%ebp), %eax
	pushl %eax
	movl -504(%ebp), %eax
	call *%eax
	movl %eax, -496(%ebp)
	addl $4, %esp
	movl -496(%ebp), %eax
	movl %eax, -492(%ebp)
	movl -492(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -488(%ebp)
	movl -488(%ebp), %eax
	addl $8, %eax
	movl %eax, -484(%ebp)
	movl -484(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -480(%ebp)
	movl -496(%ebp), %eax
	movl %eax, -476(%ebp)
	movl -476(%ebp), %eax
	pushl %eax
	movl -480(%ebp), %eax
	call *%eax
	movl %eax, -472(%ebp)
	addl $4, %esp
	movl -472(%ebp), %eax
	movl %eax, -468(%ebp)
	movl -468(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -464(%ebp)
	movl -464(%ebp), %eax
	addl $8, %eax
	movl %eax, -460(%ebp)
	movl -460(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -456(%ebp)
	movl -472(%ebp), %eax
	movl %eax, -452(%ebp)
	movl -452(%ebp), %eax
	pushl %eax
	movl -456(%ebp), %eax
	call *%eax
	movl %eax, -448(%ebp)
	addl $4, %esp
	movl -448(%ebp), %eax
	addl $8, %eax
	movl %eax, -444(%ebp)
	movl -444(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -440(%ebp)
	movl -548(%ebp), %eax
	movl %eax, -436(%ebp)
	movl -440(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -436(%ebp)
	movl -656(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -432(%ebp)
	movl -432(%ebp), %eax
	movl %eax, -428(%ebp)
	movl -428(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -424(%ebp)
	movl -424(%ebp), %eax
	addl $8, %eax
	movl %eax, -420(%ebp)
	movl -420(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -416(%ebp)
	movl -432(%ebp), %eax
	movl %eax, -412(%ebp)
	movl -412(%ebp), %eax
	pushl %eax
	movl -416(%ebp), %eax
	call *%eax
	movl %eax, -408(%ebp)
	addl $4, %esp
	movl -408(%ebp), %eax
	movl %eax, -404(%ebp)
	movl -404(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -400(%ebp)
	movl -400(%ebp), %eax
	addl $8, %eax
	movl %eax, -396(%ebp)
	movl -396(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -392(%ebp)
	movl -408(%ebp), %eax
	movl %eax, -388(%ebp)
	movl -388(%ebp), %eax
	pushl %eax
	movl -392(%ebp), %eax
	call *%eax
	movl %eax, -384(%ebp)
	addl $4, %esp
	movl -384(%ebp), %eax
	movl %eax, -380(%ebp)
	movl -380(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -376(%ebp)
	movl -376(%ebp), %eax
	addl $8, %eax
	movl %eax, -372(%ebp)
	movl -372(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -368(%ebp)
	movl -384(%ebp), %eax
	movl %eax, -364(%ebp)
	movl -364(%ebp), %eax
	pushl %eax
	movl -368(%ebp), %eax
	call *%eax
	movl %eax, -360(%ebp)
	addl $4, %esp
	movl -360(%ebp), %eax
	movl %eax, -356(%ebp)
	movl -356(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -352(%ebp)
	movl -352(%ebp), %eax
	addl $8, %eax
	movl %eax, -348(%ebp)
	movl -348(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -344(%ebp)
	movl -360(%ebp), %eax
	movl %eax, -340(%ebp)
	movl -340(%ebp), %eax
	pushl %eax
	movl -344(%ebp), %eax
	call *%eax
	movl %eax, -336(%ebp)
	addl $4, %esp
	movl -336(%ebp), %eax
	movl %eax, -332(%ebp)
	movl -332(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -328(%ebp)
	movl -328(%ebp), %eax
	addl $8, %eax
	movl %eax, -324(%ebp)
	movl -324(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -320(%ebp)
	movl -336(%ebp), %eax
	movl %eax, -316(%ebp)
	movl -316(%ebp), %eax
	pushl %eax
	movl -320(%ebp), %eax
	call *%eax
	movl %eax, -312(%ebp)
	addl $4, %esp
	movl -312(%ebp), %eax
	movl %eax, -308(%ebp)
	movl -308(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -304(%ebp)
	movl -304(%ebp), %eax
	addl $8, %eax
	movl %eax, -300(%ebp)
	movl -300(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -312(%ebp), %eax
	movl %eax, -292(%ebp)
	movl -292(%ebp), %eax
	pushl %eax
	movl -296(%ebp), %eax
	call *%eax
	movl %eax, -288(%ebp)
	addl $4, %esp
	movl -288(%ebp), %eax
	movl %eax, -284(%ebp)
	movl -284(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -280(%ebp), %eax
	addl $8, %eax
	movl %eax, -276(%ebp)
	movl -276(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -272(%ebp)
	movl -288(%ebp), %eax
	movl %eax, -268(%ebp)
	movl -268(%ebp), %eax
	pushl %eax
	movl -272(%ebp), %eax
	call *%eax
	movl %eax, -264(%ebp)
	addl $4, %esp
	movl -264(%ebp), %eax
	movl %eax, -260(%ebp)
	movl -260(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -256(%ebp)
	movl -256(%ebp), %eax
	addl $8, %eax
	movl %eax, -252(%ebp)
	movl -252(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -248(%ebp)
	movl -264(%ebp), %eax
	movl %eax, -244(%ebp)
	movl -244(%ebp), %eax
	pushl %eax
	movl -248(%ebp), %eax
	call *%eax
	movl %eax, -240(%ebp)
	addl $4, %esp
	movl -240(%ebp), %eax
	movl %eax, -236(%ebp)
	movl -236(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -232(%ebp), %eax
	addl $8, %eax
	movl %eax, -228(%ebp)
	movl -228(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	movl -240(%ebp), %eax
	movl %eax, -220(%ebp)
	movl -220(%ebp), %eax
	pushl %eax
	movl -224(%ebp), %eax
	call *%eax
	movl %eax, -216(%ebp)
	addl $4, %esp
	movl -216(%ebp), %eax
	movl %eax, -212(%ebp)
	movl -212(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -208(%ebp), %eax
	addl $8, %eax
	movl %eax, -204(%ebp)
	movl -204(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl -216(%ebp), %eax
	movl %eax, -196(%ebp)
	movl -196(%ebp), %eax
	pushl %eax
	movl -200(%ebp), %eax
	call *%eax
	movl %eax, -192(%ebp)
	addl $4, %esp
	movl -192(%ebp), %eax
	addl $8, %eax
	movl %eax, -188(%ebp)
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -436(%ebp), %eax
	movl %eax, -180(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -180(%ebp)
	movl -656(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -172(%ebp)
	movl -172(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	addl $8, %eax
	movl %eax, -164(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -156(%ebp)
	movl -156(%ebp), %eax
	pushl %eax
	movl -160(%ebp), %eax
	call *%eax
	movl %eax, -152(%ebp)
	addl $4, %esp
	movl -152(%ebp), %eax
	addl $12, %eax
	movl %eax, -148(%ebp)
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -144(%ebp), %eax
	movl %eax, -140(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	addl $12, %eax
	movl %eax, -132(%ebp)
	movl -132(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -144(%ebp), %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	pushl %eax
	movl -128(%ebp), %eax
	call *%eax
	movl %eax, -120(%ebp)
	addl $4, %esp
	movl -120(%ebp), %eax
	addl $8, %eax
	movl %eax, -116(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -180(%ebp), %eax
	movl %eax, -108(%ebp)
	movl -112(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -108(%ebp)
	movl $_arr311, %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	addl $0, %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl $1, %eax
	pushl %eax
	movl -96(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -104(%ebp), %eax
	addl $4, %eax
	addl $4, %eax
	movl %eax, -92(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -108(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -84(%ebp)
	movl -656(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	addl $8, %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -80(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	pushl %eax
	movl -64(%ebp), %eax
	call *%eax
	movl %eax, -56(%ebp)
	addl $4, %esp
	movl -56(%ebp), %eax
	addl $12, %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	addl $8, %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -48(%ebp), %eax
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
	movl -84(%ebp), %eax
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
__fresh598:
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
__fresh597:
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
	movl $__const_str315, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__B_vtable309, %eax
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
__fresh596:
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
__fresh595:
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
	movl $__const_str314, %eax
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
	movl $__A_vtable308, %eax
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
__fresh594:
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
__fresh593:
	movl $_arr311, %eax
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
__fresh592:
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
	movl $__const_str313, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl $__S_vtable307, %eax
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
.globl _arr311.init312
_arr311.init312:
	pushl %ebp
	movl %esp, %ebp
	subl $20, %esp
__fresh591:
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
	movl %eax, _arr311
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh590:
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
__fresh589:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str310, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable306, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
