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
__fresh1004:
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
__fresh940:
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
	jmp __init877
__fresh941:
	jmp __init877
__init877:
	movl $_a532, %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	jmp __bound_check878
__fresh942:
	jmp __bound_check878
__bound_check878:
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
	jNE __end_no881
	jmp __check_curr880
__fresh943:
	jmp __check_curr880
__check_curr880:
	movl -36(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	cmpl %eax, %ecx
	setE -24(%ebp)
	andl $1, -24(%ebp)
	movl -24(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes882
	jmp __move_up879
__fresh944:
	jmp __move_up879
__move_up879:
	movl -28(%ebp), %eax
	movl %eax, -16(%ebp)
	jmp __bound_check878
__fresh945:
	jmp __end_yes882
__end_yes882:
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
	jmp __end883
__fresh946:
	jmp __end_no881
__end_no881:
	jmp __end883
__fresh947:
	jmp __end883
__end883:
	jmp __init884
__fresh948:
	jmp __init884
__init884:
	movl $_b534, %eax
	movl (%eax), %ecx
	movl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, -68(%ebp)
	jmp __bound_check885
__fresh949:
	jmp __bound_check885
__bound_check885:
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
	jNE __end_no888
	jmp __check_curr887
__fresh950:
	jmp __check_curr887
__check_curr887:
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	cmpl %eax, %ecx
	setE -76(%ebp)
	andl $1, -76(%ebp)
	movl -76(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes889
	jmp __move_up886
__fresh951:
	jmp __move_up886
__move_up886:
	movl -80(%ebp), %eax
	movl %eax, -68(%ebp)
	jmp __bound_check885
__fresh952:
	jmp __end_yes889
__end_yes889:
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
	jmp __end890
__fresh953:
	jmp __end_no888
__end_no888:
	jmp __end890
__fresh954:
	jmp __end890
__end890:
	jmp __init891
__fresh955:
	jmp __init891
__init891:
	movl $_bb536, %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	movl %eax, -120(%ebp)
	jmp __bound_check892
__fresh956:
	jmp __bound_check892
__bound_check892:
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
	jNE __end_no895
	jmp __check_curr894
__fresh957:
	jmp __check_curr894
__check_curr894:
	movl -140(%ebp), %eax
	movl %eax, %ecx
	movl -132(%ebp), %eax
	cmpl %eax, %ecx
	setE -128(%ebp)
	andl $1, -128(%ebp)
	movl -128(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes896
	jmp __move_up893
__fresh958:
	jmp __move_up893
__move_up893:
	movl -132(%ebp), %eax
	movl %eax, -120(%ebp)
	jmp __bound_check892
__fresh959:
	jmp __end_yes896
__end_yes896:
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
	jmp __end897
__fresh960:
	jmp __end_no895
__end_no895:
	jmp __end897
__fresh961:
	jmp __end897
__end897:
	jmp __init898
__fresh962:
	jmp __init898
__init898:
	movl $_b534, %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -172(%ebp)
	jmp __bound_check899
__fresh963:
	jmp __bound_check899
__bound_check899:
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
	jNE __end_no902
	jmp __check_curr901
__fresh964:
	jmp __check_curr901
__check_curr901:
	movl -192(%ebp), %eax
	movl %eax, %ecx
	movl -184(%ebp), %eax
	cmpl %eax, %ecx
	setE -180(%ebp)
	andl $1, -180(%ebp)
	movl -180(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes903
	jmp __move_up900
__fresh965:
	jmp __move_up900
__move_up900:
	movl -184(%ebp), %eax
	movl %eax, -172(%ebp)
	jmp __bound_check899
__fresh966:
	jmp __end_yes903
__end_yes903:
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
	jmp __end904
__fresh967:
	jmp __end_no902
__end_no902:
	jmp __end904
__fresh968:
	jmp __end904
__end904:
	jmp __init905
__fresh969:
	jmp __init905
__init905:
	movl $_bb536, %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	movl %eax, -224(%ebp)
	jmp __bound_check906
__fresh970:
	jmp __bound_check906
__bound_check906:
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
	jNE __end_no909
	jmp __check_curr908
__fresh971:
	jmp __check_curr908
__check_curr908:
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl -236(%ebp), %eax
	cmpl %eax, %ecx
	setE -232(%ebp)
	andl $1, -232(%ebp)
	movl -232(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes910
	jmp __move_up907
__fresh972:
	jmp __move_up907
__move_up907:
	movl -236(%ebp), %eax
	movl %eax, -224(%ebp)
	jmp __bound_check906
__fresh973:
	jmp __end_yes910
__end_yes910:
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
	jmp __end911
__fresh974:
	jmp __end_no909
__end_no909:
	jmp __end911
__fresh975:
	jmp __end911
__end911:
	jmp __init912
__fresh976:
	jmp __init912
__init912:
	movl $_a532, %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -280(%ebp), %eax
	movl %eax, -276(%ebp)
	jmp __bound_check913
__fresh977:
	jmp __bound_check913
__bound_check913:
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
	jNE __end_no916
	jmp __check_curr915
__fresh978:
	jmp __check_curr915
__check_curr915:
	movl -296(%ebp), %eax
	movl %eax, %ecx
	movl -288(%ebp), %eax
	cmpl %eax, %ecx
	setE -284(%ebp)
	andl $1, -284(%ebp)
	movl -284(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes917
	jmp __move_up914
__fresh979:
	jmp __move_up914
__move_up914:
	movl -288(%ebp), %eax
	movl %eax, -276(%ebp)
	jmp __bound_check913
__fresh980:
	jmp __end_yes917
__end_yes917:
	movl $_a532, %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -280(%ebp), %eax
	movl %eax, -312(%ebp)
	jmp __end918
__fresh981:
	jmp __end_no916
__end_no916:
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
	jmp __end918
__fresh982:
	jmp __end918
__end918:
	jmp __init919
__fresh983:
	jmp __init919
__init919:
	movl $_a532, %eax
	movl (%eax), %ecx
	movl %ecx, -332(%ebp)
	movl -332(%ebp), %eax
	movl %eax, -328(%ebp)
	jmp __bound_check920
__fresh984:
	jmp __bound_check920
__bound_check920:
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
	jNE __end_no923
	jmp __check_curr922
__fresh985:
	jmp __check_curr922
__check_curr922:
	movl -348(%ebp), %eax
	movl %eax, %ecx
	movl -340(%ebp), %eax
	cmpl %eax, %ecx
	setE -336(%ebp)
	andl $1, -336(%ebp)
	movl -336(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes924
	jmp __move_up921
__fresh986:
	jmp __move_up921
__move_up921:
	movl -340(%ebp), %eax
	movl %eax, -328(%ebp)
	jmp __bound_check920
__fresh987:
	jmp __end_yes924
__end_yes924:
	movl $_a532, %eax
	movl (%eax), %ecx
	movl %ecx, -332(%ebp)
	movl -332(%ebp), %eax
	movl %eax, -364(%ebp)
	jmp __end925
__fresh988:
	jmp __end_no923
__end_no923:
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
	jmp __end925
__fresh989:
	jmp __end925
__end925:
	jmp __init926
__fresh990:
	jmp __init926
__init926:
	movl $_b534, %eax
	movl (%eax), %ecx
	movl %ecx, -384(%ebp)
	movl -384(%ebp), %eax
	movl %eax, -380(%ebp)
	jmp __bound_check927
__fresh991:
	jmp __bound_check927
__bound_check927:
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
	jNE __end_no930
	jmp __check_curr929
__fresh992:
	jmp __check_curr929
__check_curr929:
	movl -400(%ebp), %eax
	movl %eax, %ecx
	movl -392(%ebp), %eax
	cmpl %eax, %ecx
	setE -388(%ebp)
	andl $1, -388(%ebp)
	movl -388(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes931
	jmp __move_up928
__fresh993:
	jmp __move_up928
__move_up928:
	movl -392(%ebp), %eax
	movl %eax, -380(%ebp)
	jmp __bound_check927
__fresh994:
	jmp __end_yes931
__end_yes931:
	movl $_b534, %eax
	movl (%eax), %ecx
	movl %ecx, -384(%ebp)
	movl -384(%ebp), %eax
	movl %eax, -416(%ebp)
	jmp __end932
__fresh995:
	jmp __end_no930
__end_no930:
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
	jmp __end932
__fresh996:
	jmp __end932
__end932:
	jmp __init933
__fresh997:
	jmp __init933
__init933:
	movl $_bb536, %eax
	movl (%eax), %ecx
	movl %ecx, -436(%ebp)
	movl -436(%ebp), %eax
	movl %eax, -432(%ebp)
	jmp __bound_check934
__fresh998:
	jmp __bound_check934
__bound_check934:
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
	jNE __end_no937
	jmp __check_curr936
__fresh999:
	jmp __check_curr936
__check_curr936:
	movl -452(%ebp), %eax
	movl %eax, %ecx
	movl -444(%ebp), %eax
	cmpl %eax, %ecx
	setE -440(%ebp)
	andl $1, -440(%ebp)
	movl -440(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes938
	jmp __move_up935
__fresh1000:
	jmp __move_up935
__move_up935:
	movl -444(%ebp), %eax
	movl %eax, -432(%ebp)
	jmp __bound_check934
__fresh1001:
	jmp __end_yes938
__end_yes938:
	movl $_bb536, %eax
	movl (%eax), %ecx
	movl %ecx, -436(%ebp)
	movl -436(%ebp), %eax
	movl %eax, -468(%ebp)
	jmp __end939
__fresh1002:
	jmp __end_no937
__end_no937:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -480(%ebp)
	movl -480(%ebp), %eax
	movl %eax, -476(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -476(%ebp)
	movl -476(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __end939
__fresh1003:
	jmp __end939
__end939:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -484(%ebp)
	movl -484(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _bb536.init537
_bb536.init537:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh876:
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
__fresh875:
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
__fresh874:
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
__fresh873:
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
__fresh872:
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
__fresh871:
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
__fresh870:
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
__fresh869:
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
