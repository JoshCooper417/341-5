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
__fresh1101:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $360, %esp
__fresh1072:
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
	jmp __init1044
__fresh1073:
	jmp __init1044
__init1044:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	jmp __bound_check1045
__fresh1074:
	jmp __bound_check1045
__bound_check1045:
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
	jNE __end_no1048
	jmp __check_curr1047
__fresh1075:
	jmp __check_curr1047
__check_curr1047:
	movl -92(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	cmpl %eax, %ecx
	setE -80(%ebp)
	andl $1, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes1049
	jmp __move_up1046
__fresh1076:
	jmp __move_up1046
__move_up1046:
	movl -84(%ebp), %eax
	movl %eax, -72(%ebp)
	jmp __bound_check1045
__fresh1077:
	jmp __end_yes1049
__end_yes1049:
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
	jmp __end1050
__fresh1078:
	jmp __end_no1048
__end_no1048:
	jmp __end1050
__fresh1079:
	jmp __end1050
__end1050:
	jmp __init1051
__fresh1080:
	jmp __init1051
__init1051:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -164(%ebp), %eax
	movl %eax, -160(%ebp)
	jmp __bound_check1052
__fresh1081:
	jmp __bound_check1052
__bound_check1052:
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
	jNE __end_no1055
	jmp __check_curr1054
__fresh1082:
	jmp __check_curr1054
__check_curr1054:
	movl -180(%ebp), %eax
	movl %eax, %ecx
	movl -172(%ebp), %eax
	cmpl %eax, %ecx
	setE -168(%ebp)
	andl $1, -168(%ebp)
	movl -168(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes1056
	jmp __move_up1053
__fresh1083:
	jmp __move_up1053
__move_up1053:
	movl -172(%ebp), %eax
	movl %eax, -160(%ebp)
	jmp __bound_check1052
__fresh1084:
	jmp __end_yes1056
__end_yes1056:
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
	jmp __end1057
__fresh1085:
	jmp __end_no1055
__end_no1055:
	jmp __end1057
__fresh1086:
	jmp __end1057
__end1057:
	jmp __init1058
__fresh1087:
	jmp __init1058
__init1058:
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -252(%ebp)
	movl -252(%ebp), %eax
	movl %eax, -248(%ebp)
	jmp __bound_check1059
__fresh1088:
	jmp __bound_check1059
__bound_check1059:
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
	jNE __end_no1062
	jmp __check_curr1061
__fresh1089:
	jmp __check_curr1061
__check_curr1061:
	movl -268(%ebp), %eax
	movl %eax, %ecx
	movl -260(%ebp), %eax
	cmpl %eax, %ecx
	setE -256(%ebp)
	andl $1, -256(%ebp)
	movl -256(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes1063
	jmp __move_up1060
__fresh1090:
	jmp __move_up1060
__move_up1060:
	movl -260(%ebp), %eax
	movl %eax, -248(%ebp)
	jmp __bound_check1059
__fresh1091:
	jmp __end_yes1063
__end_yes1063:
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
	jmp __end1064
__fresh1092:
	jmp __end_no1062
__end_no1062:
	movl $__const_str579, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	jmp __end1064
__fresh1093:
	jmp __end1064
__end1064:
	jmp __init1065
__fresh1094:
	jmp __init1065
__init1065:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -296(%ebp), %eax
	movl %eax, -292(%ebp)
	jmp __bound_check1066
__fresh1095:
	jmp __bound_check1066
__bound_check1066:
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
	jNE __end_no1069
	jmp __check_curr1068
__fresh1096:
	jmp __check_curr1068
__check_curr1068:
	movl -312(%ebp), %eax
	movl %eax, %ecx
	movl -304(%ebp), %eax
	cmpl %eax, %ecx
	setE -300(%ebp)
	andl $1, -300(%ebp)
	movl -300(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes1070
	jmp __move_up1067
__fresh1097:
	jmp __move_up1067
__move_up1067:
	movl -304(%ebp), %eax
	movl %eax, -292(%ebp)
	jmp __bound_check1066
__fresh1098:
	jmp __end_yes1070
__end_yes1070:
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
	jmp __end1071
__fresh1099:
	jmp __end_no1069
__end_no1069:
	movl $__const_str581, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	jmp __end1071
__fresh1100:
	jmp __end1071
__end1071:
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
__fresh1043:
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
__fresh1042:
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
__fresh1041:
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
__fresh1040:
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
__fresh1039:
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
__fresh1038:
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
__fresh1037:
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
__fresh1036:
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
