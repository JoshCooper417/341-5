	.align 4
	.data
_bb536:
	.long 0
_b534:
	.long 0
_a532:
	.long 0
__const_str531:
	.ascii "Bb\0"
__const_str530:
	.ascii "B\0"
__const_str529:
	.ascii "A\0"
__const_str528:
	.ascii "Object\0"
__Bb_vtable527:
	.long __A_vtable525
	.long __Object_get_name

__B_vtable526:
	.long __A_vtable525
	.long __Object_get_name

__A_vtable525:
	.long __Object_vtable524
	.long __Object_get_name

__Object_vtable524:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh926:
	call _a532.init533
	addl $0, %esp
	call _b534.init535
	addl $0, %esp
	call _bb536.init537
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $496, %esp
__fresh880:
	leal -496(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -492(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -488(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __init826
__fresh881:
	jmp __init826
__init826:
	movl $_a532, %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	jmp __bound_check827
__fresh882:
	jmp __bound_check827
__bound_check827:
	movl $__A_vtable525, %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -16(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -24(%ebp)
	andl $1, -24(%ebp)
	movl -24(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no830
	jmp __check_curr829
__fresh883:
	jmp __check_curr829
__check_curr829:
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	cmpl %eax, %ecx
	setE -24(%ebp)
	andl $1, -24(%ebp)
	movl -24(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes831
	jmp __move_up828
__fresh884:
	jmp __move_up828
__move_up828:
	movl -28(%ebp), %eax
	movl %eax, -16(%ebp)
	jmp __bound_check827
__fresh885:
	jmp __end_yes831
__end_yes831:
	movl $_a532, %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __end_no830
__end_no830:
	jmp __init832
__fresh886:
	jmp __init832
__init832:
	movl $_b534, %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, -68(%ebp)
	jmp __bound_check833
__fresh887:
	jmp __bound_check833
__bound_check833:
	movl $__A_vtable525, %eax
	movl %eax, -92(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -68(%ebp), %eax
	movl %eax, -84(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -76(%ebp)
	andl $1, -76(%ebp)
	movl -76(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no836
	jmp __check_curr835
__fresh888:
	jmp __check_curr835
__check_curr835:
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	cmpl %eax, %ecx
	setE -76(%ebp)
	andl $1, -76(%ebp)
	movl -76(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes837
	jmp __move_up834
__fresh889:
	jmp __move_up834
__move_up834:
	movl -80(%ebp), %eax
	movl %eax, -68(%ebp)
	jmp __bound_check833
__fresh890:
	jmp __end_yes837
__end_yes837:
	movl $_b534, %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, -112(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -108(%ebp), %eax
	movl %eax, -104(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -104(%ebp)
	movl -104(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __end_no836
__end_no836:
	jmp __init838
__fresh891:
	jmp __init838
__init838:
	movl $_bb536, %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	movl %eax, -120(%ebp)
	jmp __bound_check839
__fresh892:
	jmp __bound_check839
__bound_check839:
	movl $__A_vtable525, %eax
	movl %eax, -144(%ebp)
	movl -144(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -120(%ebp), %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -128(%ebp)
	andl $1, -128(%ebp)
	movl -128(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no842
	jmp __check_curr841
__fresh893:
	jmp __check_curr841
__check_curr841:
	movl -140(%ebp), %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	cmpl %eax, %ecx
	setE -128(%ebp)
	andl $1, -128(%ebp)
	movl -128(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes843
	jmp __move_up840
__fresh894:
	jmp __move_up840
__move_up840:
	movl -132(%ebp), %eax
	movl %eax, -120(%ebp)
	jmp __bound_check839
__fresh895:
	jmp __end_yes843
__end_yes843:
	movl $_bb536, %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	movl %eax, -164(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -160(%ebp), %eax
	movl %eax, -156(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -156(%ebp)
	movl -156(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __end_no842
__end_no842:
	jmp __init844
__fresh896:
	jmp __init844
__init844:
	movl $_b534, %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -172(%ebp)
	jmp __bound_check845
__fresh897:
	jmp __bound_check845
__bound_check845:
	movl $__B_vtable526, %eax
	movl %eax, -196(%ebp)
	movl -196(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	movl -172(%ebp), %eax
	movl %eax, -188(%ebp)
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -180(%ebp)
	andl $1, -180(%ebp)
	movl -180(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no848
	jmp __check_curr847
__fresh898:
	jmp __check_curr847
__check_curr847:
	movl -192(%ebp), %eax
	movl %eax, %ecx
	movl -184(%ebp), %eax
	cmpl %eax, %ecx
	setE -180(%ebp)
	andl $1, -180(%ebp)
	movl -180(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes849
	jmp __move_up846
__fresh899:
	jmp __move_up846
__move_up846:
	movl -184(%ebp), %eax
	movl %eax, -172(%ebp)
	jmp __bound_check845
__fresh900:
	jmp __end_yes849
__end_yes849:
	movl $_b534, %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -216(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	movl %eax, -208(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -208(%ebp)
	movl -208(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __end_no848
__end_no848:
	jmp __init850
__fresh901:
	jmp __init850
__init850:
	movl $_bb536, %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	movl %eax, -224(%ebp)
	jmp __bound_check851
__fresh902:
	jmp __bound_check851
__bound_check851:
	movl $__Bb_vtable527, %eax
	movl %eax, -248(%ebp)
	movl -248(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -244(%ebp)
	movl -224(%ebp), %eax
	movl %eax, -240(%ebp)
	movl -240(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -236(%ebp)
	movl -236(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -232(%ebp)
	andl $1, -232(%ebp)
	movl -232(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no854
	jmp __check_curr853
__fresh903:
	jmp __check_curr853
__check_curr853:
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl -236(%ebp), %eax
	cmpl %eax, %ecx
	setE -232(%ebp)
	andl $1, -232(%ebp)
	movl -232(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes855
	jmp __move_up852
__fresh904:
	jmp __move_up852
__move_up852:
	movl -236(%ebp), %eax
	movl %eax, -224(%ebp)
	jmp __bound_check851
__fresh905:
	jmp __end_yes855
__end_yes855:
	movl $_bb536, %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	movl %eax, -268(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	movl -264(%ebp), %eax
	movl %eax, -260(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -260(%ebp)
	movl -260(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __end_no854
__end_no854:
	jmp __init856
__fresh906:
	jmp __init856
__init856:
	movl $_a532, %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -280(%ebp), %eax
	movl %eax, -276(%ebp)
	jmp __bound_check857
__fresh907:
	jmp __bound_check857
__bound_check857:
	movl $__B_vtable526, %eax
	movl %eax, -300(%ebp)
	movl -300(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -276(%ebp), %eax
	movl %eax, -292(%ebp)
	movl -292(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -288(%ebp)
	movl -288(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -284(%ebp)
	andl $1, -284(%ebp)
	movl -284(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no860
	jmp __check_curr859
__fresh908:
	jmp __check_curr859
__check_curr859:
	movl -296(%ebp), %eax
	movl %eax, %ecx
	movl -288(%ebp), %eax
	cmpl %eax, %ecx
	setE -284(%ebp)
	andl $1, -284(%ebp)
	movl -284(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes861
	jmp __move_up858
__fresh909:
	jmp __move_up858
__move_up858:
	movl -288(%ebp), %eax
	movl %eax, -276(%ebp)
	jmp __bound_check857
__fresh910:
	jmp __end_yes861
__end_yes861:
	movl $_a532, %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -280(%ebp), %eax
	movl %eax, -312(%ebp)
	jmp __end_no860
__end_no860:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -324(%ebp)
	movl -324(%ebp), %eax
	movl %eax, -320(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -320(%ebp)
	movl -320(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __init862
__fresh911:
	jmp __init862
__init862:
	movl $_a532, %eax
	movl (%eax), %ecx
	movl %ecx, -332(%ebp)
	movl -332(%ebp), %eax
	movl %eax, -328(%ebp)
	jmp __bound_check863
__fresh912:
	jmp __bound_check863
__bound_check863:
	movl $__Bb_vtable527, %eax
	movl %eax, -352(%ebp)
	movl -352(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -348(%ebp)
	movl -328(%ebp), %eax
	movl %eax, -344(%ebp)
	movl -344(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -340(%ebp)
	movl -340(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -336(%ebp)
	andl $1, -336(%ebp)
	movl -336(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no866
	jmp __check_curr865
__fresh913:
	jmp __check_curr865
__check_curr865:
	movl -348(%ebp), %eax
	movl %eax, %ecx
	movl -340(%ebp), %eax
	cmpl %eax, %ecx
	setE -336(%ebp)
	andl $1, -336(%ebp)
	movl -336(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes867
	jmp __move_up864
__fresh914:
	jmp __move_up864
__move_up864:
	movl -340(%ebp), %eax
	movl %eax, -328(%ebp)
	jmp __bound_check863
__fresh915:
	jmp __end_yes867
__end_yes867:
	movl $_a532, %eax
	movl (%eax), %ecx
	movl %ecx, -332(%ebp)
	movl -332(%ebp), %eax
	movl %eax, -364(%ebp)
	jmp __end_no866
__end_no866:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -376(%ebp)
	movl -376(%ebp), %eax
	movl %eax, -372(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -372(%ebp)
	movl -372(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __init868
__fresh916:
	jmp __init868
__init868:
	movl $_b534, %eax
	movl (%eax), %ecx
	movl %ecx, -384(%ebp)
	movl -384(%ebp), %eax
	movl %eax, -380(%ebp)
	jmp __bound_check869
__fresh917:
	jmp __bound_check869
__bound_check869:
	movl $__Bb_vtable527, %eax
	movl %eax, -404(%ebp)
	movl -404(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -400(%ebp)
	movl -380(%ebp), %eax
	movl %eax, -396(%ebp)
	movl -396(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -392(%ebp)
	movl -392(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -388(%ebp)
	andl $1, -388(%ebp)
	movl -388(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no872
	jmp __check_curr871
__fresh918:
	jmp __check_curr871
__check_curr871:
	movl -400(%ebp), %eax
	movl %eax, %ecx
	movl -392(%ebp), %eax
	cmpl %eax, %ecx
	setE -388(%ebp)
	andl $1, -388(%ebp)
	movl -388(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes873
	jmp __move_up870
__fresh919:
	jmp __move_up870
__move_up870:
	movl -392(%ebp), %eax
	movl %eax, -380(%ebp)
	jmp __bound_check869
__fresh920:
	jmp __end_yes873
__end_yes873:
	movl $_b534, %eax
	movl (%eax), %ecx
	movl %ecx, -384(%ebp)
	movl -384(%ebp), %eax
	movl %eax, -416(%ebp)
	jmp __end_no872
__end_no872:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -428(%ebp)
	movl -428(%ebp), %eax
	movl %eax, -424(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -424(%ebp)
	movl -424(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __init874
__fresh921:
	jmp __init874
__init874:
	movl $_bb536, %eax
	movl (%eax), %ecx
	movl %ecx, -436(%ebp)
	movl -436(%ebp), %eax
	movl %eax, -432(%ebp)
	jmp __bound_check875
__fresh922:
	jmp __bound_check875
__bound_check875:
	movl $__B_vtable526, %eax
	movl %eax, -456(%ebp)
	movl -456(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -452(%ebp)
	movl -432(%ebp), %eax
	movl %eax, -448(%ebp)
	movl -448(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -444(%ebp)
	movl -444(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -440(%ebp)
	andl $1, -440(%ebp)
	movl -440(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no878
	jmp __check_curr877
__fresh923:
	jmp __check_curr877
__check_curr877:
	movl -452(%ebp), %eax
	movl %eax, %ecx
	movl -444(%ebp), %eax
	cmpl %eax, %ecx
	setE -440(%ebp)
	andl $1, -440(%ebp)
	movl -440(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes879
	jmp __move_up876
__fresh924:
	jmp __move_up876
__move_up876:
	movl -444(%ebp), %eax
	movl %eax, -432(%ebp)
	jmp __bound_check875
__fresh925:
	jmp __end_yes879
__end_yes879:
	movl $_bb536, %eax
	movl (%eax), %ecx
	movl %ecx, -436(%ebp)
	movl -436(%ebp), %eax
	movl %eax, -468(%ebp)
	jmp __end_no878
__end_no878:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -484(%ebp)
	movl -484(%ebp), %eax
	movl %eax, -480(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -480(%ebp)
	movl -480(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -476(%ebp)
	movl -476(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _bb536.init537
_bb536.init537:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh825:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	call __Bb_ctor
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, _bb536
	movl %ebp, %esp
	popl %ebp
	ret
.globl _b534.init535
_b534.init535:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh824:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, _b534
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a532.init533
_a532.init533:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh823:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, _a532
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Bb_ctor
__Bb_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh822:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str531, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Bb_vtable527, %eax
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
__fresh821:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str530, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__B_vtable526, %eax
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
__fresh820:
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
	movl $__const_str529, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__A_vtable525, %eax
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
__fresh819:
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
__fresh818:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str528, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable524, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
