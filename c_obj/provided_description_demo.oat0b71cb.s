	.align 4
	.data
__const_str625:
	.ascii "This dog is stray!\0"
__const_str624:
	.ascii "Timmy\0"
__const_str623:
	.ascii "This dog is owned by \0"
__const_str622:
	.ascii "Example Cow\0"
__const_str621:
	.ascii "Spot\0"
__const_str620:
	.ascii "moo\0"
__const_str619:
	.ascii "Cow\0"
__const_str618:
	.ascii "arf\0"
__const_str617:
	.ascii "Dog\0"
__const_str616:
	.ascii "???\0"
__const_str615:
	.ascii "???\0"
__const_str614:
	.ascii "Animal\0"
__const_str613:
	.ascii "Object\0"
__Cow_vtable612:
	.long __Animal_vtable610
	.long __Object_get_name
	.long __Cow_noise

__Dog_vtable611:
	.long __Animal_vtable610
	.long __Object_get_name
	.long __Dog_noise

__Animal_vtable610:
	.long __Object_vtable609
	.long __Object_get_name
	.long __Animal_noise

__Object_vtable609:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1198:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $200, %esp
__fresh1188:
	leal -196(%ebp), %eax
	movl %eax, -104(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	leal -192(%ebp), %eax
	movl %eax, -100(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	movl $16, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -96(%ebp)
	addl $4, %esp
	movl -96(%ebp), %eax
	movl %eax, -92(%ebp)
	movl $__const_str621, %eax
	pushl %eax
	movl -92(%ebp), %eax
	pushl %eax
	call __Dog_ctor
	movl %eax, -88(%ebp)
	addl $8, %esp
	movl -88(%ebp), %eax
	movl %eax, -84(%ebp)
	leal -188(%ebp), %eax
	movl %eax, -80(%ebp)
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl -80(%ebp), %eax
	movl %ecx, (%eax)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -76(%ebp)
	addl $4, %esp
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	movl $__const_str622, %eax
	pushl %eax
	movl -72(%ebp), %eax
	pushl %eax
	call __Cow_ctor
	movl %eax, -68(%ebp)
	addl $8, %esp
	movl -68(%ebp), %eax
	movl %eax, -64(%ebp)
	leal -184(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	addl $8, %eax
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
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	addl $8, %eax
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
	jmp __init1181
__fresh1189:
	jmp __init1181
__init1181:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %eax, -108(%ebp)
	jmp __bound_check1182
__fresh1190:
	jmp __bound_check1182
__bound_check1182:
	movl $__Dog_vtable611, %eax
	movl %eax, -132(%ebp)
	movl -132(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -108(%ebp), %eax
	movl %eax, -124(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -116(%ebp)
	andl $1, -116(%ebp)
	movl -116(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no1185
	jmp __check_curr1184
__fresh1191:
	jmp __check_curr1184
__check_curr1184:
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	cmpl %eax, %ecx
	setE -116(%ebp)
	andl $1, -116(%ebp)
	movl -116(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes1186
	jmp __move_up1183
__fresh1192:
	jmp __move_up1183
__move_up1183:
	movl -120(%ebp), %eax
	movl %eax, -108(%ebp)
	jmp __bound_check1182
__fresh1193:
	jmp __end_yes1186
__end_yes1186:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %eax, -164(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -160(%ebp), %eax
	addl $12, %eax
	movl %eax, -156(%ebp)
	movl -156(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	leal -200(%ebp), %eax
	movl %eax, -148(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl -148(%ebp), %eax
	movl %ecx, (%eax)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setNE -144(%ebp)
	andl $1, -144(%ebp)
	movl -144(%ebp), %eax
	cmpl $0, %eax
	jNE __then1180
	jmp __else1179
__fresh1194:
	jmp __then1180
__then1180:
	movl $__const_str623, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -172(%ebp), %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	jmp __merge1178
__fresh1195:
	jmp __else1179
__else1179:
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -180(%ebp), %eax
	addl $12, %eax
	movl %eax, -176(%ebp)
	movl $__const_str624, %eax
	movl %eax, %ecx
	movl -176(%ebp), %eax
	movl %ecx, (%eax)
	movl $__const_str625, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	jmp __merge1178
__merge1178:
	jmp __end1187
__fresh1196:
	jmp __end_no1185
__end_no1185:
	jmp __end1187
__fresh1197:
	jmp __end1187
__end1187:
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Cow_noise
__Cow_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1177:
	movl $__const_str620, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Cow_ctor
__Cow_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh1176:
	leal -36(%ebp), %eax
	movl %eax, -32(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	call __Animal_ctor
	movl %eax, -16(%ebp)
	addl $8, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str619, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Cow_vtable612, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Dog_noise
__Dog_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1175:
	movl $__const_str618, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Dog_ctor
__Dog_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $36, %esp
__fresh1174:
	leal -36(%ebp), %eax
	movl %eax, -32(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl $12, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	movl -20(%ebp), %eax
	pushl %eax
	call __Animal_ctor
	movl %eax, -16(%ebp)
	addl $8, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str617, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Dog_vtable611, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Animal_noise
__Animal_noise:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1173:
	movl $__const_str615, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	movl $__const_str616, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Animal_ctor
__Animal_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $40, %esp
__fresh1172:
	leal -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $__const_str614, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Animal_vtable610, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Object_get_name
__Object_get_name:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh1171:
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
__fresh1170:
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
	movl $__Object_vtable609, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
