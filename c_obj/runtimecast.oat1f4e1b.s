	.align 4
	.data
_bb527:
	.long 0
_b525:
	.long 0
_a523:
	.long 0
__const_str522:
	.ascii "Bb\0"
__const_str521:
	.ascii "B\0"
__const_str520:
	.ascii "A\0"
__const_str519:
	.ascii "Object\0"
__Bb_vtable518:
	.long __A_vtable516
	.long __Object_get_name

__B_vtable517:
	.long __A_vtable516
	.long __Object_get_name

__A_vtable516:
	.long __Object_vtable515
	.long __Object_get_name

__Object_vtable515:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh729:
	call _a523.init524
	addl $0, %esp
	call _b525.init526
	addl $0, %esp
	call _bb527.init528
	addl $0, %esp
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $316, %esp
__fresh692:
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
	jmp __bound_check647
__fresh693:
	jmp __bound_check647
__bound_check647:
	movl $__A_vtable516, %eax
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
	jNE __end_no650
	jmp __check_curr649
__fresh694:
	jmp __check_curr649
__check_curr649:
	movl -20(%ebp), %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	cmpl %eax, %ecx
	setE -16(%ebp)
	andl $1, -16(%ebp)
	movl -16(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes651
	jmp __move_up648
__fresh695:
	jmp __move_up648
__move_up648:
	movl -24(%ebp), %eax
	movl %eax, -36(%ebp)
	jmp __bound_check647
__fresh696:
	jmp __end_yes651
__end_yes651:
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
	jmp __end_no650
__end_no650:
	jmp __bound_check652
__fresh697:
	jmp __bound_check652
__bound_check652:
	movl $__A_vtable516, %eax
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
	jNE __end_no655
	jmp __check_curr654
__fresh698:
	jmp __check_curr654
__check_curr654:
	movl -52(%ebp), %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	cmpl %eax, %ecx
	setE -48(%ebp)
	andl $1, -48(%ebp)
	movl -48(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes656
	jmp __move_up653
__fresh699:
	jmp __move_up653
__move_up653:
	movl -56(%ebp), %eax
	movl %eax, -68(%ebp)
	jmp __bound_check652
__fresh700:
	jmp __end_yes656
__end_yes656:
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
	jmp __end_no655
__end_no655:
	jmp __bound_check657
__fresh701:
	jmp __bound_check657
__bound_check657:
	movl $__A_vtable516, %eax
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
	jNE __end_no660
	jmp __check_curr659
__fresh702:
	jmp __check_curr659
__check_curr659:
	movl -84(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	cmpl %eax, %ecx
	setE -80(%ebp)
	andl $1, -80(%ebp)
	movl -80(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes661
	jmp __move_up658
__fresh703:
	jmp __move_up658
__move_up658:
	movl -88(%ebp), %eax
	movl %eax, -100(%ebp)
	jmp __bound_check657
__fresh704:
	jmp __end_yes661
__end_yes661:
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
	jmp __end_no660
__end_no660:
	jmp __bound_check662
__fresh705:
	jmp __bound_check662
__bound_check662:
	movl $__B_vtable517, %eax
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
	jNE __end_no665
	jmp __check_curr664
__fresh706:
	jmp __check_curr664
__check_curr664:
	movl -116(%ebp), %eax
	movl %eax, %ecx
	movl -120(%ebp), %eax
	cmpl %eax, %ecx
	setE -112(%ebp)
	andl $1, -112(%ebp)
	movl -112(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes666
	jmp __move_up663
__fresh707:
	jmp __move_up663
__move_up663:
	movl -120(%ebp), %eax
	movl %eax, -132(%ebp)
	jmp __bound_check662
__fresh708:
	jmp __end_yes666
__end_yes666:
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
	jmp __end_no665
__end_no665:
	jmp __bound_check667
__fresh709:
	jmp __bound_check667
__bound_check667:
	movl $__Bb_vtable518, %eax
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
	jNE __end_no670
	jmp __check_curr669
__fresh710:
	jmp __check_curr669
__check_curr669:
	movl -148(%ebp), %eax
	movl %eax, %ecx
	movl -152(%ebp), %eax
	cmpl %eax, %ecx
	setE -144(%ebp)
	andl $1, -144(%ebp)
	movl -144(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes671
	jmp __move_up668
__fresh711:
	jmp __move_up668
__move_up668:
	movl -152(%ebp), %eax
	movl %eax, -164(%ebp)
	jmp __bound_check667
__fresh712:
	jmp __end_yes671
__end_yes671:
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
	jmp __end_no670
__end_no670:
	jmp __bound_check672
__fresh713:
	jmp __bound_check672
__bound_check672:
	movl $__B_vtable517, %eax
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
	jNE __end_no675
	jmp __check_curr674
__fresh714:
	jmp __check_curr674
__check_curr674:
	movl -180(%ebp), %eax
	movl %eax, %ecx
	movl -184(%ebp), %eax
	cmpl %eax, %ecx
	setE -176(%ebp)
	andl $1, -176(%ebp)
	movl -176(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes676
	jmp __move_up673
__fresh715:
	jmp __move_up673
__move_up673:
	movl -184(%ebp), %eax
	movl %eax, -196(%ebp)
	jmp __bound_check672
__fresh716:
	jmp __end_yes676
__end_yes676:
	jmp __end_no675
__end_no675:
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
	jmp __bound_check677
__fresh717:
	jmp __bound_check677
__bound_check677:
	movl $__Bb_vtable518, %eax
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
	jNE __end_no680
	jmp __check_curr679
__fresh718:
	jmp __check_curr679
__check_curr679:
	movl -212(%ebp), %eax
	movl %eax, %ecx
	movl -216(%ebp), %eax
	cmpl %eax, %ecx
	setE -208(%ebp)
	andl $1, -208(%ebp)
	movl -208(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes681
	jmp __move_up678
__fresh719:
	jmp __move_up678
__move_up678:
	movl -216(%ebp), %eax
	movl %eax, -228(%ebp)
	jmp __bound_check677
__fresh720:
	jmp __end_yes681
__end_yes681:
	jmp __end_no680
__end_no680:
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
	jmp __bound_check682
__fresh721:
	jmp __bound_check682
__bound_check682:
	movl $__Bb_vtable518, %eax
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
	jNE __end_no685
	jmp __check_curr684
__fresh722:
	jmp __check_curr684
__check_curr684:
	movl -244(%ebp), %eax
	movl %eax, %ecx
	movl -248(%ebp), %eax
	cmpl %eax, %ecx
	setE -240(%ebp)
	andl $1, -240(%ebp)
	movl -240(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes686
	jmp __move_up683
__fresh723:
	jmp __move_up683
__move_up683:
	movl -248(%ebp), %eax
	movl %eax, -260(%ebp)
	jmp __bound_check682
__fresh724:
	jmp __end_yes686
__end_yes686:
	jmp __end_no685
__end_no685:
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
	jmp __bound_check687
__fresh725:
	jmp __bound_check687
__bound_check687:
	movl $__B_vtable517, %eax
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
	jNE __end_no690
	jmp __check_curr689
__fresh726:
	jmp __check_curr689
__check_curr689:
	movl -276(%ebp), %eax
	movl %eax, %ecx
	movl -280(%ebp), %eax
	cmpl %eax, %ecx
	setE -272(%ebp)
	andl $1, -272(%ebp)
	movl -272(%ebp), %eax
	cmpl $0, %eax
	jNE __end_yes691
	jmp __move_up688
__fresh727:
	jmp __move_up688
__move_up688:
	movl -280(%ebp), %eax
	movl %eax, -292(%ebp)
	jmp __bound_check687
__fresh728:
	jmp __end_yes691
__end_yes691:
	jmp __end_no690
__end_no690:
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
.globl _bb527.init528
_bb527.init528:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh646:
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
	movl %eax, _bb527
	movl %ebp, %esp
	popl %ebp
	ret
.globl _b525.init526
_b525.init526:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh645:
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
	movl %eax, _b525
	movl %ebp, %esp
	popl %ebp
	ret
.globl _a523.init524
_a523.init524:
	pushl %ebp
	movl %esp, %ebp
	subl $16, %esp
__fresh644:
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
	movl %eax, _a523
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Bb_ctor
__Bb_ctor:
	pushl %ebp
	movl %esp, %ebp
	subl $24, %esp
__fresh643:
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
	movl $__const_str522, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Bb_vtable518, %eax
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
__fresh642:
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
	movl $__const_str521, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__B_vtable517, %eax
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
__fresh641:
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
	movl $__const_str520, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl -12(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__A_vtable516, %eax
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
__fresh640:
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
__fresh639:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str519, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable515, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
