	.align 4
	.data
__const_str619:
	.ascii "get error: out of range\0"
__const_str618:
	.ascii "get error: out of range\0"
__const_str617:
	.ascii "Array\0"
__const_str616:
	.ascii "ArrayItem\0"
__const_str615:
	.ascii "Object\0"
__Array_vtable614:
	.long __Object_vtable612
	.long __Object_get_name
	.long __Array_getElement
	.long __Array_setElement
	.long __Array_addElement
	.long __Array_getLength

__ArrayItem_vtable613:
	.long __Object_vtable612
	.long __Object_get_name
	.long __ArrayItem_set

__Object_vtable612:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh777:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $488, %esp
__fresh764:
	leal -452(%ebp), %eax
	movl %eax, -72(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	leal -448(%ebp), %eax
	movl %eax, -68(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	movl $16, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -64(%ebp)
	addl $4, %esp
	movl -64(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	pushl %eax
	call __Array_ctor
	movl %eax, -56(%ebp)
	addl $4, %esp
	leal -444(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	leal -440(%ebp), %eax
	movl %eax, -48(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	leal -436(%ebp), %eax
	movl %eax, -44(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl $__Array_vtable614, %eax
	addl $16, %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -40(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $79, %eax
	pushl %eax
	movl -28(%ebp), %eax
	pushl %eax
	movl -32(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl $__Array_vtable614, %eax
	addl $20, %eax
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
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	leal -432(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond748
__cond748:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	cmpl %eax, %ecx
	setL -76(%ebp)
	andl $1, -76(%ebp)
	movl -76(%ebp), %eax
	cmpl $0, %eax
	jNE __body747
	jmp __post746
__fresh765:
	jmp __body747
__body747:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -104(%ebp)
	leal -460(%ebp), %eax
	movl %eax, -100(%ebp)
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	movl %eax, -92(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -92(%ebp)
	leal -456(%ebp), %eax
	movl %eax, -88(%ebp)
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond751
__cond751:
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	cmpl %eax, %ecx
	setLE -108(%ebp)
	andl $1, -108(%ebp)
	movl -108(%ebp), %eax
	cmpl $0, %eax
	jNE __body750
	jmp __post749
__fresh766:
	jmp __body750
__body750:
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl $__Array_vtable614, %eax
	addl $8, %eax
	movl %eax, -176(%ebp)
	movl -176(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -180(%ebp), %eax
	movl %eax, -168(%ebp)
	movl -184(%ebp), %eax
	pushl %eax
	movl -168(%ebp), %eax
	pushl %eax
	movl -172(%ebp), %eax
	call *%eax
	movl %eax, -164(%ebp)
	addl $8, %esp
	leal -468(%ebp), %eax
	movl %eax, -160(%ebp)
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	movl %ecx, (%eax)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl $__Array_vtable614, %eax
	addl $8, %eax
	movl %eax, -148(%ebp)
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -152(%ebp), %eax
	movl %eax, -140(%ebp)
	movl -156(%ebp), %eax
	pushl %eax
	movl -140(%ebp), %eax
	pushl %eax
	movl -144(%ebp), %eax
	call *%eax
	movl %eax, -136(%ebp)
	addl $8, %esp
	leal -464(%ebp), %eax
	movl %eax, -132(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	movl %ecx, (%eax)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -132(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -124(%ebp), %eax
	cmpl %eax, %ecx
	setL -120(%ebp)
	andl $1, -120(%ebp)
	movl -120(%ebp), %eax
	cmpl $0, %eax
	jNE __then754
	jmp __else753
__fresh767:
	jmp __then754
__then754:
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -188(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge752
__fresh768:
	jmp __else753
__else753:
	jmp __merge752
__merge752:
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -196(%ebp), %eax
	movl %eax, -192(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -192(%ebp)
	movl -192(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond751
__fresh769:
	jmp __post749
__post749:
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -208(%ebp), %eax
	movl %eax, %ecx
	movl -204(%ebp), %eax
	cmpl %eax, %ecx
	setNE -200(%ebp)
	andl $1, -200(%ebp)
	movl -200(%ebp), %eax
	cmpl $0, %eax
	jNE __then757
	jmp __else756
__fresh770:
	jmp __then757
__then757:
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -312(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -308(%ebp)
	movl $__Array_vtable614, %eax
	addl $8, %eax
	movl %eax, -304(%ebp)
	movl -304(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -300(%ebp)
	movl -308(%ebp), %eax
	movl %eax, -296(%ebp)
	movl -312(%ebp), %eax
	pushl %eax
	movl -296(%ebp), %eax
	pushl %eax
	movl -300(%ebp), %eax
	call *%eax
	movl %eax, -292(%ebp)
	addl $8, %esp
	leal -476(%ebp), %eax
	movl %eax, -288(%ebp)
	movl -292(%ebp), %eax
	movl %eax, %ecx
	movl -288(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -284(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl $__Array_vtable614, %eax
	addl $8, %eax
	movl %eax, -276(%ebp)
	movl -276(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -272(%ebp)
	movl -280(%ebp), %eax
	movl %eax, -268(%ebp)
	movl -284(%ebp), %eax
	pushl %eax
	movl -268(%ebp), %eax
	pushl %eax
	movl -272(%ebp), %eax
	call *%eax
	movl %eax, -264(%ebp)
	addl $8, %esp
	leal -472(%ebp), %eax
	movl %eax, -260(%ebp)
	movl -264(%ebp), %eax
	movl %eax, %ecx
	movl -260(%ebp), %eax
	movl %ecx, (%eax)
	movl -288(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -256(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -248(%ebp)
	movl $__Array_vtable614, %eax
	addl $12, %eax
	movl %eax, -244(%ebp)
	movl -244(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -240(%ebp)
	movl -248(%ebp), %eax
	movl %eax, -236(%ebp)
	movl -256(%ebp), %eax
	pushl %eax
	movl -252(%ebp), %eax
	pushl %eax
	movl -236(%ebp), %eax
	pushl %eax
	movl -240(%ebp), %eax
	call *%eax
	addl $12, %esp
	movl -260(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	movl $__Array_vtable614, %eax
	addl $12, %eax
	movl %eax, -220(%ebp)
	movl -220(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -224(%ebp), %eax
	movl %eax, -212(%ebp)
	movl -232(%ebp), %eax
	pushl %eax
	movl -228(%ebp), %eax
	pushl %eax
	movl -212(%ebp), %eax
	pushl %eax
	movl -216(%ebp), %eax
	call *%eax
	addl $12, %esp
	jmp __merge755
__fresh771:
	jmp __else756
__else756:
	jmp __merge755
__merge755:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -320(%ebp)
	movl -320(%ebp), %eax
	movl %eax, -316(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -316(%ebp)
	movl -316(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond748
__fresh772:
	jmp __post746
__post746:
	leal -480(%ebp), %eax
	movl %eax, -324(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -324(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond760
__cond760:
	movl -324(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -336(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -332(%ebp)
	movl -336(%ebp), %eax
	movl %eax, %ecx
	movl -332(%ebp), %eax
	cmpl %eax, %ecx
	setL -328(%ebp)
	andl $1, -328(%ebp)
	movl -328(%ebp), %eax
	cmpl $0, %eax
	jNE __body759
	jmp __post758
__fresh773:
	jmp __body759
__body759:
	movl -324(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -408(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -404(%ebp)
	movl $__Array_vtable614, %eax
	addl $8, %eax
	movl %eax, -400(%ebp)
	movl -400(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -396(%ebp)
	movl -404(%ebp), %eax
	movl %eax, -392(%ebp)
	movl -408(%ebp), %eax
	pushl %eax
	movl -392(%ebp), %eax
	pushl %eax
	movl -396(%ebp), %eax
	call *%eax
	movl %eax, -388(%ebp)
	addl $8, %esp
	leal -488(%ebp), %eax
	movl %eax, -384(%ebp)
	movl -388(%ebp), %eax
	movl %eax, %ecx
	movl -384(%ebp), %eax
	movl %ecx, (%eax)
	movl -324(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -380(%ebp)
	movl -380(%ebp), %eax
	movl %eax, -376(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -376(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -372(%ebp)
	movl $__Array_vtable614, %eax
	addl $8, %eax
	movl %eax, -368(%ebp)
	movl -368(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -364(%ebp)
	movl -372(%ebp), %eax
	movl %eax, -360(%ebp)
	movl -376(%ebp), %eax
	pushl %eax
	movl -360(%ebp), %eax
	pushl %eax
	movl -364(%ebp), %eax
	call *%eax
	movl %eax, -356(%ebp)
	addl $8, %esp
	leal -484(%ebp), %eax
	movl %eax, -352(%ebp)
	movl -356(%ebp), %eax
	movl %eax, %ecx
	movl -352(%ebp), %eax
	movl %ecx, (%eax)
	movl -384(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -348(%ebp)
	movl -352(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -344(%ebp)
	movl -348(%ebp), %eax
	movl %eax, %ecx
	movl -344(%ebp), %eax
	cmpl %eax, %ecx
	setG -340(%ebp)
	andl $1, -340(%ebp)
	movl -340(%ebp), %eax
	cmpl $0, %eax
	jNE __then763
	jmp __else762
__fresh774:
	jmp __then763
__then763:
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -416(%ebp)
	movl -416(%ebp), %eax
	movl %eax, -412(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -412(%ebp)
	movl -412(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge761
__fresh775:
	jmp __else762
__else762:
	jmp __merge761
__merge761:
	movl -324(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -424(%ebp)
	movl -424(%ebp), %eax
	movl %eax, -420(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -420(%ebp)
	movl -420(%ebp), %eax
	movl %eax, %ecx
	movl -324(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond760
__fresh776:
	jmp __post758
__post758:
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -428(%ebp)
	movl -428(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_getLength
__Array_getLength:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh745:
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
__fresh736:
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
	jNE __then735
	jmp __else734
__fresh737:
	jmp __then735
__then735:
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
	jmp __merge733
__fresh738:
	jmp __else734
__else734:
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
	jNE __then732
	jmp __else731
__fresh739:
	jmp __then732
__then732:
	leal -156(%ebp), %eax
	movl %eax, -56(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond726
__cond726:
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
	jNE __body725
	jmp __post724
__fresh740:
	jmp __body725
__body725:
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
	jNE __then729
	jmp __else728
__fresh741:
	jmp __then729
__then729:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge727
__fresh742:
	jmp __else728
__else728:
	jmp __merge727
__merge727:
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
	jmp __cond726
__fresh743:
	jmp __post724
__post724:
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
	jmp __merge730
__fresh744:
	jmp __else731
__else731:
	jmp __merge730
__merge730:
	jmp __merge733
__merge733:
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
__fresh717:
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
	jNE __then716
	jmp __else715
__fresh718:
	jmp __then716
__then716:
	leal -100(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond710
__cond710:
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
	jNE __body709
	jmp __post708
__fresh719:
	jmp __body709
__body709:
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
	jNE __then713
	jmp __else712
__fresh720:
	jmp __then713
__then713:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge711
__fresh721:
	jmp __else712
__else712:
	jmp __merge711
__merge711:
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
	jmp __cond710
__fresh722:
	jmp __post708
__post708:
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
	jmp __merge714
__fresh723:
	jmp __else715
__else715:
	movl $__const_str619, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge714
__merge714:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_getElement
__Array_getElement:
	pushl %ebp
	movl %esp, %ebp
	subl $108, %esp
__fresh701:
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
	jNE __then700
	jmp __else699
__fresh702:
	jmp __then700
__then700:
	leal -104(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond694
__cond694:
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
	jNE __body693
	jmp __post692
__fresh703:
	jmp __body693
__body693:
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
	jNE __then697
	jmp __else696
__fresh704:
	jmp __then697
__then697:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge695
__fresh705:
	jmp __else696
__else696:
	jmp __merge695
__merge695:
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
	jmp __cond694
__fresh706:
	jmp __post692
__post692:
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
	jmp __merge698
__fresh707:
	jmp __else699
__else699:
	movl $__const_str618, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge698
__merge698:
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
__fresh691:
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
	movl $__const_str617, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl $__Array_vtable614, %eax
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
__fresh690:
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
__fresh689:
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
	movl $__const_str616, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl $__ArrayItem_vtable613, %eax
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
__fresh688:
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
__fresh687:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str615, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable612, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
