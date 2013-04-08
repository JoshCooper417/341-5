	.align 4
	.data
__const_str254:
	.ascii "C\0"
__const_str253:
	.ascii "C\0"
__const_str252:
	.ascii "B\0"
__const_str251:
	.ascii "B\0"
__const_str250:
	.ascii "A\0"
__const_str249:
	.ascii "A\0"
__const_str248:
	.ascii "Object\0"
__C_vtable247:
	.long __B_vtable246
	.long __Object_get_name
	.long __C_f

__B_vtable246:
	.long __A_vtable245
	.long __Object_get_name
	.long __B_f

__A_vtable245:
	.long __Object_vtable244
	.long __Object_get_name
	.long __A_f

__Object_vtable244:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh448:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $60, %esp
__fresh447:
	leal -60(%ebp), %eax
	movl %eax, -52(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	movl %ecx, (%eax)
	leal -56(%ebp), %eax
	movl %eax, -48(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -48(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -44(%ebp)
	addl $4, %esp
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -36(%ebp)
	addl $4, %esp
	movl -36(%ebp), %eax
	pushl %eax
	call _f
	addl $4, %esp
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	call _f
	addl $4, %esp
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	call __C_ctor
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl -4(%ebp), %eax
	pushl %eax
	call _f
	addl $4, %esp
	movl $0, %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _f
_f:
	pushl %ebp
	movl %esp, %ebp
	subl $212, %esp
__fresh431:
	leal -212(%ebp), %eax
	movl %eax, -4(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __init413
__fresh432:
	jmp __init413
__init413:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -8(%ebp)
	jmp __bound_check414
__fresh433:
	jmp __bound_check414
__bound_check414:
	movl $__C_vtable247, %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -8(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -16(%ebp)
	andl $1, -16(%ebp)
	movl -16(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no417
	jmp __check_curr416
__fresh434:
	jmp __check_curr416
__check_curr416:
	movl -28(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	cmpl %eax, %ecx
	setE -16(%ebp)
	andl $1, -16(%ebp)
	movl -16(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes418
	jmp __move_up415
__fresh435:
	jmp __move_up415
__move_up415:
	movl -20(%ebp), %eax
	movl %eax, -8(%ebp)
	jmp __bound_check414
__fresh436:
	jmp __end_yes418
__end_yes418:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	movl -12(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, -60(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	addl $8, %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -64(%ebp), %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	pushl %eax
	movl -48(%ebp), %eax
	call *%eax
	addl $4, %esp
	jmp __end_no417
__end_no417:
	jmp __init419
__fresh437:
	jmp __init419
__init419:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, -76(%ebp)
	jmp __bound_check420
__fresh438:
	jmp __bound_check420
__bound_check420:
	movl $__B_vtable246, %eax
	movl %eax, -100(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -92(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -84(%ebp)
	andl $1, -84(%ebp)
	movl -84(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no423
	jmp __check_curr422
__fresh439:
	jmp __check_curr422
__check_curr422:
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	cmpl %eax, %ecx
	setE -84(%ebp)
	andl $1, -84(%ebp)
	movl -84(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes424
	jmp __move_up421
__fresh440:
	jmp __move_up421
__move_up421:
	movl -88(%ebp), %eax
	movl %eax, -76(%ebp)
	jmp __bound_check420
__fresh441:
	jmp __end_yes424
__end_yes424:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -80(%ebp)
	movl -80(%ebp), %eax
	movl %eax, -136(%ebp)
	movl -136(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, -128(%ebp)
	movl -128(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	addl $8, %eax
	movl %eax, -120(%ebp)
	movl -120(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -132(%ebp), %eax
	movl %eax, -112(%ebp)
	movl -112(%ebp), %eax
	pushl %eax
	movl -116(%ebp), %eax
	call *%eax
	addl $4, %esp
	jmp __end_no423
__end_no423:
	jmp __init425
__fresh442:
	jmp __init425
__init425:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	movl %eax, -144(%ebp)
	jmp __bound_check426
__fresh443:
	jmp __bound_check426
__bound_check426:
	movl $__A_vtable245, %eax
	movl %eax, -168(%ebp)
	movl -168(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -144(%ebp), %eax
	movl %eax, -160(%ebp)
	movl -160(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -156(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -152(%ebp)
	andl $1, -152(%ebp)
	movl -152(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no429
	jmp __check_curr428
__fresh444:
	jmp __check_curr428
__check_curr428:
	movl -164(%ebp), %eax
	movl %eax, %ecx
	movl -156(%ebp), %eax
	cmpl %eax, %ecx
	setE -152(%ebp)
	andl $1, -152(%ebp)
	movl -152(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes430
	jmp __move_up427
__fresh445:
	jmp __move_up427
__move_up427:
	movl -156(%ebp), %eax
	movl %eax, -144(%ebp)
	jmp __bound_check426
__fresh446:
	jmp __end_yes430
__end_yes430:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -148(%ebp), %eax
	movl %eax, -204(%ebp)
	movl -204(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl -200(%ebp), %eax
	movl %eax, -196(%ebp)
	movl -196(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	movl -192(%ebp), %eax
	addl $8, %eax
	movl %eax, -188(%ebp)
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -200(%ebp), %eax
	movl %eax, -180(%ebp)
	movl -180(%ebp), %eax
	pushl %eax
	movl -184(%ebp), %eax
	call *%eax
	addl $4, %esp
	jmp __end_no429
__end_no429:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C_f
__C_f:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh412:
	movl $__const_str254, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl __C_ctor
__C_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh411:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	pushl %eax
	call __B_ctor
	movl %eax, -16(%ebp)
	addl $4, %esp
	movl -16(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str253, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__C_vtable247, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __B_f
__B_f:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh410:
	movl $__const_str252, %eax
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
	subl $24, %esp
__fresh409:
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
	movl $__const_str251, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__B_vtable246, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_f
__A_f:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh408:
	movl $__const_str250, %eax
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
__fresh407:
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
	movl $__const_str249, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__A_vtable245, %eax
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
__fresh406:
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
__fresh405:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str248, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable244, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
