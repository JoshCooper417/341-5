	.align 4
	.data
__const_str617:
	.ascii "get error: out of range\0"
__const_str616:
	.ascii "get error: out of range\0"
__const_str615:
	.ascii "Array\0"
__const_str614:
	.ascii "ArrayItem\0"
__const_str613:
	.ascii "Object\0"
__Array_vtable612:
	.long __Object_vtable610
	.long __Object_get_name
	.long __Array_getElement
	.long __Array_setElement
	.long __Array_addElement
	.long __Array_getLength

__ArrayItem_vtable611:
	.long __Object_vtable610
	.long __Object_get_name
	.long __ArrayItem_set

__Object_vtable610:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh935:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $568, %esp
__fresh922:
	leal -532(%ebp), %eax
	movl %eax, -88(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	leal -528(%ebp), %eax
	movl %eax, -84(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl $16, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -80(%ebp)
	addl $4, %esp
	movl -80(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	pushl %eax
	call __Array_ctor
	movl %eax, -72(%ebp)
	addl $4, %esp
	leal -524(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	leal -520(%ebp), %eax
	movl %eax, -64(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	leal -516(%ebp), %eax
	movl %eax, -60(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	addl $16, %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $79, %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	movl -40(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	addl $20, %eax
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
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	leal -512(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond906
__cond906:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -100(%ebp), %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	cmpl %eax, %ecx
	setL -92(%ebp)
	andl $1, -92(%ebp)
	movl -92(%ebp), %eax
	cmpl $0, %eax
	jNE __body905
	jmp __post904
__fresh923:
	jmp __body905
__body905:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	leal -540(%ebp), %eax
	movl %eax, -116(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %eax, -108(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -108(%ebp)
	leal -536(%ebp), %eax
	movl %eax, -104(%ebp)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond909
__cond909:
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -128(%ebp), %eax
	cmpl %eax, %ecx
	setLE -124(%ebp)
	andl $1, -124(%ebp)
	movl -124(%ebp), %eax
	cmpl $0, %eax
	jNE __body908
	jmp __post907
__fresh924:
	jmp __body908
__body908:
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	movl %eax, -208(%ebp)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -204(%ebp), %eax
	addl $8, %eax
	movl %eax, -200(%ebp)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -212(%ebp), %eax
	movl %eax, -192(%ebp)
	movl -216(%ebp), %eax
	pushl %eax
	movl -192(%ebp), %eax
	pushl %eax
	movl -196(%ebp), %eax
	call *%eax
	movl %eax, -188(%ebp)
	addl $8, %esp
	leal -548(%ebp), %eax
	movl %eax, -184(%ebp)
	movl -188(%ebp), %eax
	movl %eax, %ecx
	movl -184(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -68(%ebp), %eax
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
	movl -180(%ebp), %eax
	pushl %eax
	movl -156(%ebp), %eax
	pushl %eax
	movl -160(%ebp), %eax
	call *%eax
	movl %eax, -152(%ebp)
	addl $8, %esp
	leal -544(%ebp), %eax
	movl %eax, -148(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl -148(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -140(%ebp), %eax
	cmpl %eax, %ecx
	setL -136(%ebp)
	andl $1, -136(%ebp)
	movl -136(%ebp), %eax
	cmpl $0, %eax
	jNE __then912
	jmp __else911
__fresh925:
	jmp __then912
__then912:
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	movl -220(%ebp), %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge910
__fresh926:
	jmp __else911
__else911:
	jmp __merge910
__merge910:
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	movl %eax, -224(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -224(%ebp)
	movl -224(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond909
__fresh927:
	jmp __post907
__post907:
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -240(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -236(%ebp)
	movl -240(%ebp), %eax
	movl %eax, %ecx
	movl -236(%ebp), %eax
	cmpl %eax, %ecx
	setNE -232(%ebp)
	andl $1, -232(%ebp)
	movl -232(%ebp), %eax
	cmpl $0, %eax
	jNE __then915
	jmp __else914
__fresh928:
	jmp __then915
__then915:
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -376(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -372(%ebp)
	movl -372(%ebp), %eax
	movl %eax, -368(%ebp)
	movl -368(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -364(%ebp)
	movl -364(%ebp), %eax
	addl $8, %eax
	movl %eax, -360(%ebp)
	movl -360(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -356(%ebp)
	movl -372(%ebp), %eax
	movl %eax, -352(%ebp)
	movl -376(%ebp), %eax
	pushl %eax
	movl -352(%ebp), %eax
	pushl %eax
	movl -356(%ebp), %eax
	call *%eax
	movl %eax, -348(%ebp)
	addl $8, %esp
	leal -556(%ebp), %eax
	movl %eax, -344(%ebp)
	movl -348(%ebp), %eax
	movl %eax, %ecx
	movl -344(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -340(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -336(%ebp)
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
	movl -340(%ebp), %eax
	pushl %eax
	movl -316(%ebp), %eax
	pushl %eax
	movl -320(%ebp), %eax
	call *%eax
	movl %eax, -312(%ebp)
	addl $8, %esp
	leal -552(%ebp), %eax
	movl %eax, -308(%ebp)
	movl -312(%ebp), %eax
	movl %eax, %ecx
	movl -308(%ebp), %eax
	movl %ecx, (%eax)
	movl -344(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -304(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -300(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -296(%ebp), %eax
	movl %eax, -292(%ebp)
	movl -292(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -288(%ebp)
	movl -288(%ebp), %eax
	addl $12, %eax
	movl %eax, -284(%ebp)
	movl -284(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -296(%ebp), %eax
	movl %eax, -276(%ebp)
	movl -304(%ebp), %eax
	pushl %eax
	movl -300(%ebp), %eax
	pushl %eax
	movl -276(%ebp), %eax
	pushl %eax
	movl -280(%ebp), %eax
	call *%eax
	addl $12, %esp
	movl -308(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -272(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -268(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	movl -264(%ebp), %eax
	movl %eax, -260(%ebp)
	movl -260(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -256(%ebp)
	movl -256(%ebp), %eax
	addl $12, %eax
	movl %eax, -252(%ebp)
	movl -252(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -248(%ebp)
	movl -264(%ebp), %eax
	movl %eax, -244(%ebp)
	movl -272(%ebp), %eax
	pushl %eax
	movl -268(%ebp), %eax
	pushl %eax
	movl -244(%ebp), %eax
	pushl %eax
	movl -248(%ebp), %eax
	call *%eax
	addl $12, %esp
	jmp __merge913
__fresh929:
	jmp __else914
__else914:
	jmp __merge913
__merge913:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -384(%ebp)
	movl -384(%ebp), %eax
	movl %eax, -380(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -380(%ebp)
	movl -380(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond906
__fresh930:
	jmp __post904
__post904:
	leal -560(%ebp), %eax
	movl %eax, -388(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -388(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond918
__cond918:
	movl -388(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -400(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -396(%ebp)
	movl -400(%ebp), %eax
	movl %eax, %ecx
	movl -396(%ebp), %eax
	cmpl %eax, %ecx
	setL -392(%ebp)
	andl $1, -392(%ebp)
	movl -392(%ebp), %eax
	cmpl $0, %eax
	jNE __body917
	jmp __post916
__fresh931:
	jmp __body917
__body917:
	movl -388(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -488(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -484(%ebp)
	movl -484(%ebp), %eax
	movl %eax, -480(%ebp)
	movl -480(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -476(%ebp)
	movl -476(%ebp), %eax
	addl $8, %eax
	movl %eax, -472(%ebp)
	movl -472(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -468(%ebp)
	movl -484(%ebp), %eax
	movl %eax, -464(%ebp)
	movl -488(%ebp), %eax
	pushl %eax
	movl -464(%ebp), %eax
	pushl %eax
	movl -468(%ebp), %eax
	call *%eax
	movl %eax, -460(%ebp)
	addl $8, %esp
	leal -568(%ebp), %eax
	movl %eax, -456(%ebp)
	movl -460(%ebp), %eax
	movl %eax, %ecx
	movl -456(%ebp), %eax
	movl %ecx, (%eax)
	movl -388(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -452(%ebp)
	movl -452(%ebp), %eax
	movl %eax, -448(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -448(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -444(%ebp)
	movl -444(%ebp), %eax
	movl %eax, -440(%ebp)
	movl -440(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -436(%ebp)
	movl -436(%ebp), %eax
	addl $8, %eax
	movl %eax, -432(%ebp)
	movl -432(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -428(%ebp)
	movl -444(%ebp), %eax
	movl %eax, -424(%ebp)
	movl -448(%ebp), %eax
	pushl %eax
	movl -424(%ebp), %eax
	pushl %eax
	movl -428(%ebp), %eax
	call *%eax
	movl %eax, -420(%ebp)
	addl $8, %esp
	leal -564(%ebp), %eax
	movl %eax, -416(%ebp)
	movl -420(%ebp), %eax
	movl %eax, %ecx
	movl -416(%ebp), %eax
	movl %ecx, (%eax)
	movl -456(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -412(%ebp)
	movl -416(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -408(%ebp)
	movl -412(%ebp), %eax
	movl %eax, %ecx
	movl -408(%ebp), %eax
	cmpl %eax, %ecx
	setG -404(%ebp)
	andl $1, -404(%ebp)
	movl -404(%ebp), %eax
	cmpl $0, %eax
	jNE __then921
	jmp __else920
__fresh932:
	jmp __then921
__then921:
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -496(%ebp)
	movl -496(%ebp), %eax
	movl %eax, -492(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -492(%ebp)
	movl -492(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge919
__fresh933:
	jmp __else920
__else920:
	jmp __merge919
__merge919:
	movl -388(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -504(%ebp)
	movl -504(%ebp), %eax
	movl %eax, -500(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -500(%ebp)
	movl -500(%ebp), %eax
	movl %eax, %ecx
	movl -388(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond918
__fresh934:
	jmp __post916
__post916:
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -508(%ebp)
	movl -508(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_getLength
__Array_getLength:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh903:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_addElement
__Array_addElement:
	pushl %ebp
	movl %esp, %ebp
	subl $160, %esp
__fresh894:
	leal -148(%ebp), %eax
	movl %eax, -16(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then893
	jmp __else892
__fresh895:
	jmp __then893
__then893:
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -36(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl $16, %eax
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
	call __ArrayItem_ctor
	movl %eax, -20(%ebp)
	addl $8, %esp
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge891
__fresh896:
	jmp __else892
__else892:
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	leal -152(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -40(%ebp)
	andl $1, -40(%ebp)
	movl -40(%ebp), %eax
	cmpl $0, %eax
	jNE __then890
	jmp __else889
__fresh897:
	jmp __then890
__then890:
	leal -156(%ebp), %eax
	movl %eax, -56(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond884
__cond884:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	cmpl %eax, %ecx
	setNE -60(%ebp)
	andl $1, -60(%ebp)
	movl -60(%ebp), %eax
	cmpl $0, %eax
	jNE __body883
	jmp __post882
__fresh898:
	jmp __body883
__body883:
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -92(%ebp), %eax
	addl $12, %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	leal -160(%ebp), %eax
	movl %eax, -80(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -76(%ebp)
	andl $1, -76(%ebp)
	movl -76(%ebp), %eax
	cmpl $0, %eax
	jNE __then887
	jmp __else886
__fresh899:
	jmp __then887
__then887:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge885
__fresh900:
	jmp __else886
__else886:
	jmp __merge885
__merge885:
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	movl %eax, -100(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -100(%ebp)
	movl -100(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond884
__fresh901:
	jmp __post882
__post882:
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	addl $12, %eax
	movl %eax, -124(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl $16, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -116(%ebp)
	addl $4, %esp
	movl -116(%ebp), %eax
	movl %eax, -112(%ebp)
	movl -120(%ebp), %eax
	pushl %eax
	movl -112(%ebp), %eax
	pushl %eax
	call __ArrayItem_ctor
	movl %eax, -108(%ebp)
	addl $8, %esp
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge888
__fresh902:
	jmp __else889
__else889:
	jmp __merge888
__merge888:
	jmp __merge891
__merge891:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -144(%ebp)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -140(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, -132(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -144(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_setElement
__Array_setElement:
	pushl %ebp
	movl %esp, %ebp
	subl $104, %esp
__fresh875:
	leal -96(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -92(%ebp), %eax
	movl %eax, -20(%ebp)
	movl 16(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -88(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then874
	jmp __else873
__fresh876:
	jmp __then874
__then874:
	leal -100(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond868
__cond868:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	cmpl %eax, %ecx
	setNE -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body867
	jmp __post866
__fresh877:
	jmp __body867
__body867:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	addl $12, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	leal -104(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -44(%ebp)
	andl $1, -44(%ebp)
	movl -44(%ebp), %eax
	cmpl $0, %eax
	jNE __then871
	jmp __else870
__fresh878:
	jmp __then871
__then871:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge869
__fresh879:
	jmp __else870
__else870:
	jmp __merge869
__merge869:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, -68(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond868
__fresh880:
	jmp __post866
__post866:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	addl $8, %eax
	movl %eax, -80(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge872
__fresh881:
	jmp __else873
__else873:
	movl $__const_str617, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge872
__merge872:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_getElement
__Array_getElement:
	pushl %ebp
	movl %esp, %ebp
	subl $108, %esp
__fresh859:
	leal -100(%ebp), %eax
	movl %eax, -24(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	leal -96(%ebp), %eax
	movl %eax, -20(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -92(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -4(%ebp)
	andl $1, -4(%ebp)
	movl -4(%ebp), %eax
	cmpl $0, %eax
	jNE __then858
	jmp __else857
__fresh860:
	jmp __then858
__then858:
	leal -104(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond852
__cond852:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	cmpl %eax, %ecx
	setNE -32(%ebp)
	andl $1, -32(%ebp)
	movl -32(%ebp), %eax
	cmpl $0, %eax
	jNE __body851
	jmp __post850
__fresh861:
	jmp __body851
__body851:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -60(%ebp), %eax
	addl $12, %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	leal -108(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -44(%ebp)
	andl $1, -44(%ebp)
	movl -44(%ebp), %eax
	cmpl $0, %eax
	jNE __then855
	jmp __else854
__fresh862:
	jmp __then855
__then855:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge853
__fresh863:
	jmp __else854
__else854:
	jmp __merge853
__merge853:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, -68(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond852
__fresh864:
	jmp __post850
__post850:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	addl $8, %eax
	movl %eax, -80(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge856
__fresh865:
	jmp __else857
__else857:
	movl $__const_str616, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge856
__merge856:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_ctor
__Array_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh849:
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
	movl $__const_str615, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl $__Array_vtable612, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __ArrayItem_set
__ArrayItem_set:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh848:
	leal -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl __ArrayItem_ctor
__ArrayItem_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $48, %esp
__fresh847:
	leal -48(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -40(%ebp)
	addl $4, %esp
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	addl $4, %eax
	movl %eax, -24(%ebp)
	movl $__const_str614, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl $__ArrayItem_vtable611, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl $0, %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh846:
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
__fresh845:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str613, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable610, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
