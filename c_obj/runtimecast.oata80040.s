	.align 4
	.data
_bb520:
	.long 0
_b518:
	.long 0
_a516:
	.long 0
__const_str515:
	.ascii "Bb\0"
__const_str514:
	.ascii "B\0"
__const_str513:
	.ascii "A\0"
__const_str512:
	.ascii "Object\0"
__Bb_vtable511:
	.long __A_vtable509
	.long __Object_get_name

__B_vtable510:
	.long __A_vtable509
	.long __Object_get_name

__A_vtable509:
	.long __Object_vtable508
	.long __Object_get_name

__Object_vtable508:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh634:
	call _a516.init517
	addl $0, %esp
	call _b518.init519
	addl $0, %esp
	call _bb520.init521
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $316, %esp
__fresh597:
	leal -316(%ebp), %eax
	movl %eax, -12(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	leal -312(%ebp), %eax
	movl %eax, -8(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	leal -308(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __bound_check552
__fresh598:
	jmp __bound_check552
__bound_check552:
	movl $__A_vtable509, %eax
	movl %eax, -28(%ebp)
	movl -36(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -20(%ebp)
	movl -24(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -16(%ebp)
	andl $1, -16(%ebp)
	movl -16(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no555
	jmp __check_curr554
__fresh599:
	jmp __check_curr554
__check_curr554:
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	cmpl %eax, %ecx
	setE -16(%ebp)
	andl $1, -16(%ebp)
	movl -16(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes556
	jmp __move_up553
__fresh600:
	jmp __move_up553
__move_up553:
	movl -24(%ebp), %eax
	movl %eax, -36(%ebp)
	jmp __bound_check552
__fresh601:
	jmp __end_yes556
__end_yes556:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -44(%ebp)
	movl -44(%ebp), %eax
	movl %eax, -40(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -40(%ebp)
	movl -40(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __end_no555
__end_no555:
	jmp __bound_check557
__fresh602:
	jmp __bound_check557
__bound_check557:
	movl $__A_vtable509, %eax
	movl %eax, -60(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -52(%ebp)
	movl -56(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -48(%ebp)
	andl $1, -48(%ebp)
	movl -48(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no560
	jmp __check_curr559
__fresh603:
	jmp __check_curr559
__check_curr559:
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	cmpl %eax, %ecx
	setE -48(%ebp)
	andl $1, -48(%ebp)
	movl -48(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes561
	jmp __move_up558
__fresh604:
	jmp __move_up558
__move_up558:
	movl -56(%ebp), %eax
	movl %eax, -68(%ebp)
	jmp __bound_check557
__fresh605:
	jmp __end_yes561
__end_yes561:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -76(%ebp)
	movl -76(%ebp), %eax
	movl %eax, -72(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -72(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __end_no560
__end_no560:
	jmp __bound_check562
__fresh606:
	jmp __bound_check562
__bound_check562:
	movl $__A_vtable509, %eax
	movl %eax, -92(%ebp)
	movl -100(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -88(%ebp)
	movl -92(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -84(%ebp)
	movl -88(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -80(%ebp)
	andl $1, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no565
	jmp __check_curr564
__fresh607:
	jmp __check_curr564
__check_curr564:
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	cmpl %eax, %ecx
	setE -80(%ebp)
	andl $1, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes566
	jmp __move_up563
__fresh608:
	jmp __move_up563
__move_up563:
	movl -88(%ebp), %eax
	movl %eax, -100(%ebp)
	jmp __bound_check562
__fresh609:
	jmp __end_yes566
__end_yes566:
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
	jmp __end_no565
__end_no565:
	jmp __bound_check567
__fresh610:
	jmp __bound_check567
__bound_check567:
	movl $__B_vtable510, %eax
	movl %eax, -124(%ebp)
	movl -132(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	movl -124(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -116(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -112(%ebp)
	andl $1, -112(%ebp)
	movl -112(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no570
	jmp __check_curr569
__fresh611:
	jmp __check_curr569
__check_curr569:
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	cmpl %eax, %ecx
	setE -112(%ebp)
	andl $1, -112(%ebp)
	movl -112(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes571
	jmp __move_up568
__fresh612:
	jmp __move_up568
__move_up568:
	movl -120(%ebp), %eax
	movl %eax, -132(%ebp)
	jmp __bound_check567
__fresh613:
	jmp __end_yes571
__end_yes571:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -140(%ebp), %eax
	movl %eax, -136(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -136(%ebp)
	movl -136(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __end_no570
__end_no570:
	jmp __bound_check572
__fresh614:
	jmp __bound_check572
__bound_check572:
	movl $__Bb_vtable511, %eax
	movl %eax, -156(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -152(%ebp)
	movl -156(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -148(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -144(%ebp)
	andl $1, -144(%ebp)
	movl -144(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no575
	jmp __check_curr574
__fresh615:
	jmp __check_curr574
__check_curr574:
	movl -148(%ebp), %eax
	movl %eax, %ecx
	movl -152(%ebp), %eax
	cmpl %eax, %ecx
	setE -144(%ebp)
	andl $1, -144(%ebp)
	movl -144(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes576
	jmp __move_up573
__fresh616:
	jmp __move_up573
__move_up573:
	movl -152(%ebp), %eax
	movl %eax, -164(%ebp)
	jmp __bound_check572
__fresh617:
	jmp __end_yes576
__end_yes576:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -172(%ebp)
	movl -172(%ebp), %eax
	movl %eax, -168(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __end_no575
__end_no575:
	jmp __bound_check577
__fresh618:
	jmp __bound_check577
__bound_check577:
	movl $__B_vtable510, %eax
	movl %eax, -188(%ebp)
	movl -196(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -184(%ebp)
	movl -188(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -184(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -176(%ebp)
	andl $1, -176(%ebp)
	movl -176(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no580
	jmp __check_curr579
__fresh619:
	jmp __check_curr579
__check_curr579:
	movl -180(%ebp), %eax
	movl %eax, %ecx
	movl -184(%ebp), %eax
	cmpl %eax, %ecx
	setE -176(%ebp)
	andl $1, -176(%ebp)
	movl -176(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes581
	jmp __move_up578
__fresh620:
	jmp __move_up578
__move_up578:
	movl -184(%ebp), %eax
	movl %eax, -196(%ebp)
	jmp __bound_check577
__fresh621:
	jmp __end_yes581
__end_yes581:
	jmp __end_no580
__end_no580:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -204(%ebp), %eax
	movl %eax, -200(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -200(%ebp)
	movl -200(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __bound_check582
__fresh622:
	jmp __bound_check582
__bound_check582:
	movl $__Bb_vtable511, %eax
	movl %eax, -220(%ebp)
	movl -228(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -220(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -216(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -208(%ebp)
	andl $1, -208(%ebp)
	movl -208(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no585
	jmp __check_curr584
__fresh623:
	jmp __check_curr584
__check_curr584:
	movl -212(%ebp), %eax
	movl %eax, %ecx
	movl -216(%ebp), %eax
	cmpl %eax, %ecx
	setE -208(%ebp)
	andl $1, -208(%ebp)
	movl -208(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes586
	jmp __move_up583
__fresh624:
	jmp __move_up583
__move_up583:
	movl -216(%ebp), %eax
	movl %eax, -228(%ebp)
	jmp __bound_check582
__fresh625:
	jmp __end_yes586
__end_yes586:
	jmp __end_no585
__end_no585:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -236(%ebp)
	movl -236(%ebp), %eax
	movl %eax, -232(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -232(%ebp)
	movl -232(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __bound_check587
__fresh626:
	jmp __bound_check587
__bound_check587:
	movl $__Bb_vtable511, %eax
	movl %eax, -252(%ebp)
	movl -260(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -248(%ebp)
	movl -252(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -244(%ebp)
	movl -248(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -240(%ebp)
	andl $1, -240(%ebp)
	movl -240(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no590
	jmp __check_curr589
__fresh627:
	jmp __check_curr589
__check_curr589:
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl -248(%ebp), %eax
	cmpl %eax, %ecx
	setE -240(%ebp)
	andl $1, -240(%ebp)
	movl -240(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes591
	jmp __move_up588
__fresh628:
	jmp __move_up588
__move_up588:
	movl -248(%ebp), %eax
	movl %eax, -260(%ebp)
	jmp __bound_check587
__fresh629:
	jmp __end_yes591
__end_yes591:
	jmp __end_no590
__end_no590:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -268(%ebp)
	movl -268(%ebp), %eax
	movl %eax, -264(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -264(%ebp)
	movl -264(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __bound_check592
__fresh630:
	jmp __bound_check592
__bound_check592:
	movl $__B_vtable510, %eax
	movl %eax, -284(%ebp)
	movl -292(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -284(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -276(%ebp)
	movl -280(%ebp), %eax
	movl %eax, %ecx
	movl $0, %eax
	cmpl %eax, %ecx
	setE -272(%ebp)
	andl $1, -272(%ebp)
	movl -272(%ebp), %eax
	cmpl $0, %eax
	jNE __end_no595
	jmp __check_curr594
__fresh631:
	jmp __check_curr594
__check_curr594:
	movl -276(%ebp), %eax
	movl %eax, %ecx
	movl -280(%ebp), %eax
	cmpl %eax, %ecx
	setE -272(%ebp)
	andl $1, -272(%ebp)
	movl -272(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes596
	jmp __move_up593
__fresh632:
	jmp __move_up593
__move_up593:
	movl -280(%ebp), %eax
	movl %eax, -292(%ebp)
	jmp __bound_check592
__fresh633:
	jmp __end_yes596
__end_yes596:
	jmp __end_no595
__end_no595:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -304(%ebp)
	movl -304(%ebp), %eax
	movl %eax, -300(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -300(%ebp)
	movl -300(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -296(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl _bb520.init521
_bb520.init521:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh551:
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
	movl %eax, _bb520
	movl %ebp, %esp
	popl %ebp
	ret
.globl _b518.init519
_b518.init519:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh550:
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
	movl %eax, _b518
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a516.init517
_a516.init517:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh549:
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
	movl %eax, _a516
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Bb_ctor
__Bb_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh548:
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
	movl $__const_str515, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Bb_vtable511, %eax
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
__fresh547:
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
	movl $__const_str514, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__B_vtable510, %eax
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
__fresh546:
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
	movl $__const_str513, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__A_vtable509, %eax
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
__fresh545:
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
__fresh544:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str512, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable508, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
