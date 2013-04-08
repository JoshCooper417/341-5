	.align 4
	.data
__const_str628:
	.ascii "get error: out of range\0"
__const_str627:
	.ascii "get error: out of range\0"
__const_str626:
	.ascii "Array\0"
__const_str625:
	.ascii "ArrayItem\0"
__const_str624:
	.ascii "Object\0"
__Array_vtable623:
	.long __Object_vtable621
	.long __Object_get_name
	.long __Array_getElement
	.long __Array_setElement
	.long __Array_addElement
	.long __Array_getLength

__ArrayItem_vtable622:
	.long __Object_vtable621
	.long __Object_get_name
	.long __ArrayItem_set

__Object_vtable621:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh802:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $488, %esp
__fresh789:
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
	movl $__Array_vtable623, %eax
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
	movl $__Array_vtable623, %eax
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
	jmp __cond773
__cond773:
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
	jNE __body772
	jmp __post771
__fresh790:
	jmp __body772
__body772:
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
	jmp __cond776
__cond776:
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
	jNE __body775
	jmp __post774
__fresh791:
	jmp __body775
__body775:
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl $__Array_vtable623, %eax
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
	movl $__Array_vtable623, %eax
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
	jNE __then779
	jmp __else778
__fresh792:
	jmp __then779
__then779:
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -188(%ebp)
	movl -188(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge777
__fresh793:
	jmp __else778
__else778:
	jmp __merge777
__merge777:
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
	jmp __cond776
__fresh794:
	jmp __post774
__post774:
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
	jNE __then782
	jmp __else781
__fresh795:
	jmp __then782
__then782:
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -312(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -308(%ebp)
	movl $__Array_vtable623, %eax
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
	movl $__Array_vtable623, %eax
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
	movl $__Array_vtable623, %eax
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
	movl $__Array_vtable623, %eax
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
	jmp __merge780
__fresh796:
	jmp __else781
__else781:
	jmp __merge780
__merge780:
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
	jmp __cond773
__fresh797:
	jmp __post771
__post771:
	leal -480(%ebp), %eax
	movl %eax, -324(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -324(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond785
__cond785:
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
	jNE __body784
	jmp __post783
__fresh798:
	jmp __body784
__body784:
	movl -324(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -408(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -404(%ebp)
	movl $__Array_vtable623, %eax
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
	movl $__Array_vtable623, %eax
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
	jNE __then788
	jmp __else787
__fresh799:
	jmp __then788
__then788:
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
	jmp __merge786
__fresh800:
	jmp __else787
__else787:
	jmp __merge786
__merge786:
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
	jmp __cond785
__fresh801:
	jmp __post783
__post783:
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
__fresh770:
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
__fresh761:
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
	jNE __then760
	jmp __else759
__fresh762:
	jmp __then760
__then760:
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
	jmp __merge758
__fresh763:
	jmp __else759
__else759:
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
	jNE __then757
	jmp __else756
__fresh764:
	jmp __then757
__then757:
	leal -156(%ebp), %eax
	movl %eax, -56(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond751
__cond751:
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
	jNE __body750
	jmp __post749
__fresh765:
	jmp __body750
__body750:
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
	jNE __then754
	jmp __else753
__fresh766:
	jmp __then754
__then754:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge752
__fresh767:
	jmp __else753
__else753:
	jmp __merge752
__merge752:
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
	jmp __cond751
__fresh768:
	jmp __post749
__post749:
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
	jmp __merge755
__fresh769:
	jmp __else756
__else756:
	jmp __merge755
__merge755:
	jmp __merge758
__merge758:
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
__fresh742:
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
	jNE __then741
	jmp __else740
__fresh743:
	jmp __then741
__then741:
	leal -100(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond735
__cond735:
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
	jNE __body734
	jmp __post733
__fresh744:
	jmp __body734
__body734:
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
	jNE __then738
	jmp __else737
__fresh745:
	jmp __then738
__then738:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge736
__fresh746:
	jmp __else737
__else737:
	jmp __merge736
__merge736:
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
	jmp __cond735
__fresh747:
	jmp __post733
__post733:
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
	jmp __merge739
__fresh748:
	jmp __else740
__else740:
	movl $__const_str628, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge739
__merge739:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_getElement
__Array_getElement:
	pushl %ebp
	movl %esp, %ebp
	subl $108, %esp
__fresh726:
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
	jNE __then725
	jmp __else724
__fresh727:
	jmp __then725
__then725:
	leal -104(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond719
__cond719:
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
	jNE __body718
	jmp __post717
__fresh728:
	jmp __body718
__body718:
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
	jNE __then722
	jmp __else721
__fresh729:
	jmp __then722
__then722:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge720
__fresh730:
	jmp __else721
__else721:
	jmp __merge720
__merge720:
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
	jmp __cond719
__fresh731:
	jmp __post717
__post717:
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
	jmp __merge723
__fresh732:
	jmp __else724
__else724:
	movl $__const_str627, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge723
__merge723:
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
	subl $32, %esp
__fresh716:
	movl -16(%ebp), %eax
	movl %eax, -32(%ebp)
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
	call __Object_ctor
	movl %eax, -20(%ebp)
	addl $8, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	addl $4, %eax
	movl %eax, -12(%ebp)
	movl $__const_str626, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl $__Array_vtable623, %eax
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
__fresh715:
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
	subl $52, %esp
__fresh714:
	leal -52(%ebp), %eax
	movl %eax, -48(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	movl %eax, -44(%ebp)
	movl $16, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -40(%ebp)
	addl $4, %esp
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -44(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -32(%ebp)
	addl $8, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	addl $4, %eax
	movl %eax, -24(%ebp)
	movl $__const_str625, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl $__ArrayItem_vtable622, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl -48(%ebp), %eax
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
__fresh713:
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
__fresh712:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str624, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable621, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
