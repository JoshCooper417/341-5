	.align 4
	.data
__const_str581:
	.ascii "makes sense.\0"
__const_str580:
	.ascii "???\0"
__const_str579:
	.ascii "makes sense.\0"
__const_str578:
	.ascii "???\0"
__const_str577:
	.ascii "Bb\0"
__const_str576:
	.ascii "Bb\0"
__const_str575:
	.ascii "B\0"
__const_str574:
	.ascii "B\0"
__const_str573:
	.ascii "A\0"
__const_str572:
	.ascii "A\0"
__const_str571:
	.ascii "Object\0"
__Bb_vtable570:
	.long __A_vtable568
	.long __Object_get_name
	.long __Bb_name

__B_vtable569:
	.long __A_vtable568
	.long __Object_get_name
	.long __B_name

__A_vtable568:
	.long __Object_vtable567
	.long __Object_get_name
	.long __A_name

__Object_vtable567:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1011:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $360, %esp
__fresh990:
	leal -360(%ebp), %eax
	movl %eax, -68(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	leal -356(%ebp), %eax
	movl %eax, -64(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -60(%ebp)
	addl $4, %esp
	movl -60(%ebp), %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -52(%ebp)
	addl $4, %esp
	leal -352(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -44(%ebp)
	addl $4, %esp
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -36(%ebp)
	addl $4, %esp
	movl -36(%ebp), %eax
	movl %eax, -32(%ebp)
	leal -348(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -32(%ebp), %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	call __Bb_ctor
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	leal -344(%ebp), %eax
	movl %eax, -8(%ebp)
	movl -12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -340(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __init966
__fresh991:
	jmp __init966
__init966:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	jmp __bound_check967
__fresh992:
	jmp __bound_check967
__bound_check967:
	movl $__Bb_vtable570, %eax
	movl %eax, -96(%ebp)
	movl -96(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -72(%ebp), %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -80(%ebp)
	andl $1, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no970
	jmp __check_curr969
__fresh993:
	jmp __check_curr969
__check_curr969:
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	cmpl %eax, %ecx
	setE -80(%ebp)
	andl $1, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes971
	jmp __move_up968
__fresh994:
	jmp __move_up968
__move_up968:
	movl -84(%ebp), %eax
	movl %eax, -72(%ebp)
	jmp __bound_check967
__fresh995:
	jmp __end_yes971
__end_yes971:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -152(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -144(%ebp), %eax
	addl $8, %eax
	movl %eax, -140(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -148(%ebp), %eax
	movl %eax, -132(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -152(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	addl $8, %eax
	movl %eax, -116(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -128(%ebp), %eax
	movl %eax, -108(%ebp)
	movl -108(%ebp), %eax
	pushl %eax
	movl -112(%ebp), %eax
	call *%eax
	addl $4, %esp
	jmp __end_no970
__end_no970:
	jmp __init972
__fresh996:
	jmp __init972
__init972:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -164(%ebp), %eax
	movl %eax, -160(%ebp)
	jmp __bound_check973
__fresh997:
	jmp __bound_check973
__bound_check973:
	movl $__B_vtable569, %eax
	movl %eax, -184(%ebp)
	movl -184(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -160(%ebp), %eax
	movl %eax, -176(%ebp)
	movl -176(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -172(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -168(%ebp)
	andl $1, -168(%ebp)
	movl -168(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no976
	jmp __check_curr975
__fresh998:
	jmp __check_curr975
__check_curr975:
	movl -180(%ebp), %eax
	movl %eax, %ecx
	movl -172(%ebp), %eax
	cmpl %eax, %ecx
	setE -168(%ebp)
	andl $1, -168(%ebp)
	movl -168(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes977
	jmp __move_up974
__fresh999:
	jmp __move_up974
__move_up974:
	movl -172(%ebp), %eax
	movl %eax, -160(%ebp)
	jmp __bound_check973
__fresh1000:
	jmp __end_yes977
__end_yes977:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -164(%ebp), %eax
	movl %eax, -240(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -236(%ebp)
	movl -240(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -232(%ebp)
	movl -232(%ebp), %eax
	addl $8, %eax
	movl %eax, -228(%ebp)
	movl -228(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -224(%ebp)
	movl -236(%ebp), %eax
	movl %eax, -220(%ebp)
	movl -224(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -220(%ebp)
	movl -220(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -240(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
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
	addl $4, %esp
	jmp __end_no976
__end_no976:
	jmp __init978
__fresh1001:
	jmp __init978
__init978:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	movl -252(%ebp), %eax
	movl %eax, -248(%ebp)
	jmp __bound_check979
__fresh1002:
	jmp __bound_check979
__bound_check979:
	movl $__Bb_vtable570, %eax
	movl %eax, -272(%ebp)
	movl -272(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -268(%ebp)
	movl -248(%ebp), %eax
	movl %eax, -264(%ebp)
	movl -264(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -260(%ebp)
	movl -260(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -256(%ebp)
	andl $1, -256(%ebp)
	movl -256(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no982
	jmp __check_curr981
__fresh1003:
	jmp __check_curr981
__check_curr981:
	movl -268(%ebp), %eax
	movl %eax, %ecx
	movl -260(%ebp), %eax
	cmpl %eax, %ecx
	setE -256(%ebp)
	andl $1, -256(%ebp)
	movl -256(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes983
	jmp __move_up980
__fresh1004:
	jmp __move_up980
__move_up980:
	movl -260(%ebp), %eax
	movl %eax, -248(%ebp)
	jmp __bound_check979
__fresh1005:
	jmp __end_yes983
__end_yes983:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	movl -252(%ebp), %eax
	movl %eax, -284(%ebp)
	movl $__const_str578, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __end_no982
__end_no982:
	movl $__const_str579, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	jmp __init984
__fresh1006:
	jmp __init984
__init984:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -296(%ebp), %eax
	movl %eax, -292(%ebp)
	jmp __bound_check985
__fresh1007:
	jmp __bound_check985
__bound_check985:
	movl $__B_vtable569, %eax
	movl %eax, -316(%ebp)
	movl -316(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -312(%ebp)
	movl -292(%ebp), %eax
	movl %eax, -308(%ebp)
	movl -308(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -304(%ebp)
	movl -304(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -300(%ebp)
	andl $1, -300(%ebp)
	movl -300(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no988
	jmp __check_curr987
__fresh1008:
	jmp __check_curr987
__check_curr987:
	movl -312(%ebp), %eax
	movl %eax, %ecx
	movl -304(%ebp), %eax
	cmpl %eax, %ecx
	setE -300(%ebp)
	andl $1, -300(%ebp)
	movl -300(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes989
	jmp __move_up986
__fresh1009:
	jmp __move_up986
__move_up986:
	movl -304(%ebp), %eax
	movl %eax, -292(%ebp)
	jmp __bound_check985
__fresh1010:
	jmp __end_yes989
__end_yes989:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -296(%ebp), %eax
	movl %eax, -328(%ebp)
	movl $__const_str580, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __end_no988
__end_no988:
	movl $__const_str581, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -336(%ebp)
	movl -336(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Bb_name
__Bb_name:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh965:
	movl $__const_str577, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Bb_ctor
__Bb_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh964:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -28(%ebp)
	addl $4, %esp
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	addl $4, %eax
	movl %eax, -12(%ebp)
	movl $__const_str576, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl $__Bb_vtable570, %eax
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
.globl __B_name
__B_name:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh963:
	movl $__const_str575, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_ctor
__B_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $28, %esp
__fresh962:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -28(%ebp)
	addl $4, %esp
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	addl $4, %eax
	movl %eax, -12(%ebp)
	movl $__const_str574, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl $__B_vtable569, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $8, %eax
	movl %eax, -4(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_name
__A_name:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh961:
	movl $__const_str573, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_ctor
__A_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh960:
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
	movl $__const_str572, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__A_vtable568, %eax
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
__fresh959:
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
__fresh958:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str571, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable567, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
