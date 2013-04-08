	.align 4
	.data
__const_str286:
	.ascii "A\0"
__const_str285:
	.ascii "O\0"
__const_str284:
	.ascii "Object\0"
__A_vtable283:
	.long __O_vtable282
	.long __Object_get_name
	.long __A_init
	.long __A_incr
	.long __A_sum

__O_vtable282:
	.long __Object_vtable281
	.long __Object_get_name

__Object_vtable281:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh528:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $88, %esp
__fresh527:
	leal -88(%ebp), %eax
	movl %eax, -76(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -76(%ebp), %eax
	movl %ecx, (%eax)
	leal -84(%ebp), %eax
	movl %eax, -72(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -72(%ebp), %eax
	movl %ecx, (%eax)
	movl $24, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -68(%ebp)
	addl $4, %esp
	movl -68(%ebp), %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -60(%ebp)
	addl $4, %esp
	leal -80(%ebp), %eax
	movl %eax, -56(%ebp)
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -48(%ebp)
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	addl $8, %eax
	movl %eax, -40(%ebp)
	movl -40(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -36(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -32(%ebp)
	movl -32(%ebp), %eax
	pushl %eax
	movl -36(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -28(%ebp)
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	addl $16, %eax
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
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_sum
__A_sum:
	pushl %ebp
	movl %esp, %ebp
	subl $228, %esp
__fresh520:
	leal -220(%ebp), %eax
	movl %eax, -20(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $20, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -216(%ebp), %eax
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
	jNE __then519
	jmp __else518
__fresh521:
	jmp __then519
__then519:
	leal -224(%ebp), %eax
	movl %eax, -24(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond513
__cond513:
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	addl $0, %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -44(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	cmpl %eax, %ecx
	setL -28(%ebp)
	andl $1, -28(%ebp)
	movl -28(%ebp), %eax
	cmpl $0, %eax
	jNE __body512
	jmp __post511
__fresh522:
	jmp __body512
__body512:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -92(%ebp)
	movl -96(%ebp), %eax
	addl $0, %eax
	movl %eax, -88(%ebp)
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -92(%ebp), %eax
	pushl %eax
	movl -84(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -96(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -80(%ebp)
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	movl -72(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -68(%ebp)
	movl -68(%ebp), %eax
	addl $12, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	pushl %eax
	movl -60(%ebp), %eax
	call *%eax
	addl $4, %esp
	movl -24(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, -48(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond513
__fresh523:
	jmp __post511
__post511:
	leal -228(%ebp), %eax
	movl %eax, -100(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond516
__cond516:
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -116(%ebp), %eax
	addl $0, %eax
	movl %eax, -112(%ebp)
	movl -112(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -108(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl -108(%ebp), %eax
	cmpl %eax, %ecx
	setL -104(%ebp)
	andl $1, -104(%ebp)
	movl -104(%ebp), %eax
	cmpl $0, %eax
	jNE __body515
	jmp __post514
__fresh524:
	jmp __body515
__body515:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -208(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -200(%ebp)
	movl -204(%ebp), %eax
	addl $0, %eax
	movl %eax, -196(%ebp)
	movl -196(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -192(%ebp)
	movl -200(%ebp), %eax
	pushl %eax
	movl -192(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -204(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -200(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -188(%ebp)
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -184(%ebp), %eax
	addl $8, %eax
	movl %eax, -180(%ebp)
	movl -180(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -208(%ebp), %eax
	movl %eax, -172(%ebp)
	movl -176(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -172(%ebp)
	movl -172(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -164(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -164(%ebp), %eax
	addl $0, %eax
	movl %eax, -156(%ebp)
	movl -156(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -160(%ebp), %eax
	pushl %eax
	movl -152(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -164(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -160(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -148(%ebp)
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -144(%ebp), %eax
	addl $12, %eax
	movl %eax, -140(%ebp)
	movl -140(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -136(%ebp)
	movl -168(%ebp), %eax
	movl %eax, -132(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	addl %ecx, -132(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -128(%ebp), %eax
	movl %eax, -124(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	movl %eax, %ecx
	movl -100(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond516
__fresh525:
	jmp __post514
__post514:
	jmp __merge517
__fresh526:
	jmp __else518
__else518:
	jmp __merge517
__merge517:
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_incr
__A_incr:
	pushl %ebp
	movl %esp, %ebp
	subl $32, %esp
__fresh510:
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -32(%ebp)
	movl 8(%ebp), %eax
	addl $8, %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -32(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -16(%ebp)
	movl 8(%ebp), %eax
	addl $12, %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -8(%ebp)
	movl -8(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -4(%ebp)
	movl -4(%ebp), %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_init
__A_init:
	pushl %ebp
	movl %esp, %ebp
	subl $172, %esp
__fresh500:
	movl 8(%ebp), %eax
	addl $16, %eax
	movl %eax, -36(%ebp)
	movl $24, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -36(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $16, %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -12(%ebp)
	leal -160(%ebp), %eax
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
	jNE __then496
	jmp __else495
__fresh501:
	jmp __then496
__then496:
	jmp __init488
__fresh502:
	jmp __init488
__init488:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	jmp __bound_check489
__fresh503:
	jmp __bound_check489
__bound_check489:
	movl $__A_vtable283, %eax
	movl %eax, -64(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -60(%ebp)
	movl -40(%ebp), %eax
	movl %eax, -56(%ebp)
	movl -56(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -48(%ebp)
	andl $1, -48(%ebp)
	movl -48(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no492
	jmp __check_curr491
__fresh504:
	jmp __check_curr491
__check_curr491:
	movl -60(%ebp), %eax
	movl %eax, %ecx
	movl -52(%ebp), %eax
	cmpl %eax, %ecx
	setE -48(%ebp)
	andl $1, -48(%ebp)
	movl -48(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes493
	jmp __move_up490
__fresh505:
	jmp __move_up490
__move_up490:
	movl -52(%ebp), %eax
	movl %eax, -40(%ebp)
	jmp __bound_check489
__fresh506:
	jmp __end_yes493
__end_yes493:
	movl -8(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -76(%ebp)
	jmp __end_no492
__end_no492:
	jmp __merge494
__fresh507:
	jmp __else495
__else495:
	jmp __merge494
__merge494:
	movl 8(%ebp), %eax
	addl $20, %eax
	movl %eax, -104(%ebp)
	movl $2, %eax
	pushl %eax
	call _oat_alloc_array
	movl %eax, -100(%ebp)
	addl $4, %esp
	movl -100(%ebp), %eax
	movl %eax, -96(%ebp)
	leal -172(%ebp), %eax
	movl %eax, -92(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -92(%ebp), %eax
	movl %ecx, (%eax)
	leal -168(%ebp), %eax
	movl %eax, -88(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	leal -164(%ebp), %eax
	movl %eax, -84(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond499
__cond499:
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -112(%ebp), %eax
	cmpl %eax, %ecx
	setL -108(%ebp)
	andl $1, -108(%ebp)
	movl -108(%ebp), %eax
	cmpl $0, %eax
	jNE __body498
	jmp __post497
__fresh508:
	jmp __body498
__body498:
	movl -88(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -156(%ebp)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -156(%ebp), %eax
	addl $0, %eax
	movl %eax, -148(%ebp)
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -152(%ebp), %eax
	pushl %eax
	movl -144(%ebp), %eax
	pushl %eax
	call _oat_array_bounds_check
	addl $8, %esp
	movl -156(%ebp), %eax
	addl $4, %eax
	movl %eax, %ecx
	movl -152(%ebp), %eax
	imull $4, %eax
	addl %ecx, %eax
	movl %eax, -140(%ebp)
	movl $24, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -136(%ebp)
	addl $4, %esp
	movl -136(%ebp), %eax
	movl %eax, -132(%ebp)
	movl -132(%ebp), %eax
	pushl %eax
	call __A_ctor
	movl %eax, -128(%ebp)
	addl $4, %esp
	movl -128(%ebp), %eax
	movl %eax, %ecx
	movl -140(%ebp), %eax
	movl %ecx, (%eax)
	movl -84(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -124(%ebp)
	movl -124(%ebp), %eax
	movl %eax, -120(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -120(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond499
__fresh509:
	jmp __post497
__post497:
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	movl %ebp, %esp
	popl %ebp
	ret
.globl __A_ctor
__A_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $32, %esp
__fresh487:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	pushl %eax
	call __O_ctor
	movl %eax, -24(%ebp)
	addl $4, %esp
	movl -24(%ebp), %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	addl $4, %eax
	movl %eax, -16(%ebp)
	movl $__const_str286, %eax
	movl %eax, %ecx
	movl -16(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $8, %eax
	movl %eax, -12(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $12, %eax
	movl %eax, -8(%ebp)
	movl $2, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__A_vtable283, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -20(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __O_ctor
__O_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh486:
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
	movl $__const_str285, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__O_vtable282, %eax
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
__fresh485:
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
__fresh484:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str284, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable281, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
