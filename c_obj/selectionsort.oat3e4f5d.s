	.align 4
	.data
__const_str633:
	.ascii "get error: out of range\0"
__const_str632:
	.ascii "get error: out of range\0"
__const_str631:
	.ascii "Array\0"
__const_str630:
	.ascii "ArrayItem\0"
__const_str629:
	.ascii "Object\0"
__Array_vtable628:
	.long __Object_vtable626
	.long __Object_get_name
	.long __Array_getElement
	.long __Array_setElement
	.long __Array_addElement
	.long __Array_getLength

__ArrayItem_vtable627:
	.long __Object_vtable626
	.long __Object_get_name
	.long __ArrayItem_set

__Object_vtable626:
	.long 0
	.long __Object_get_name

	.text
.globl _oat_init
_oat_init:
	pushl %ebp
	movl %esp, %ebp
	subl $0, %esp
__fresh1289:
	movl %ebp, %esp
	popl %ebp
	ret
.globl _program
_program:
	pushl %ebp
	movl %esp, %ebp
	subl $568, %esp
__fresh1276:
	leal -532(%ebp), %eax
	movl %eax, -88(%ebp)
	movl 8(%ebp), %eax
	movl %eax, %ecx
	movl -88(%ebp), %eax
	movl %ecx, (%eax)
	leal -528(%ebp), %eax
	movl %eax, -84(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -84(%ebp), %eax
	movl %ecx, (%eax)
	movl $16, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -80(%ebp)
	addl $4, %esp
	movl -80(%ebp), %eax
	movl %eax, -76(%ebp)
	movl -76(%ebp), %eax
	pushl %eax
	call __Array_ctor
	movl %eax, -72(%ebp)
	addl $4, %esp
	leal -524(%ebp), %eax
	movl %eax, -68(%ebp)
	movl -72(%ebp), %eax
	movl %eax, %ecx
	movl -68(%ebp), %eax
	movl %ecx, (%eax)
	leal -520(%ebp), %eax
	movl %eax, -64(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	leal -516(%ebp), %eax
	movl %eax, -60(%ebp)
	movl $0, %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -56(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -52(%ebp)
	movl -52(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -48(%ebp)
	movl -48(%ebp), %eax
	addl $16, %eax
	movl %eax, -44(%ebp)
	movl -44(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -40(%ebp)
	movl -56(%ebp), %eax
	movl %eax, -36(%ebp)
	movl $79, %eax
	pushl %eax
	movl -36(%ebp), %eax
	pushl %eax
	movl -40(%ebp), %eax
	call *%eax
	addl $8, %esp
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -32(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -24(%ebp)
	movl -24(%ebp), %eax
	addl $20, %eax
	movl %eax, -20(%ebp)
	movl -20(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -16(%ebp)
	movl -32(%ebp), %eax
	movl %eax, -12(%ebp)
	movl -12(%ebp), %eax
	pushl %eax
	movl -16(%ebp), %eax
	call *%eax
	movl %eax, -8(%ebp)
	addl $4, %esp
	movl -8(%ebp), %eax
	movl %eax, %ecx
	movl -64(%ebp), %eax
	movl %ecx, (%eax)
	leal -512(%ebp), %eax
	movl %eax, -4(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1260
__cond1260:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -100(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -100(%ebp), %eax
	movl %eax, %ecx
	movl -96(%ebp), %eax
	cmpl %eax, %ecx
	setL -92(%ebp)
	andl $1, -92(%ebp)
	movl -92(%ebp), %eax
	cmpl $0, %eax
	jNE __body1259
	jmp __post1258
__fresh1277:
	jmp __body1259
__body1259:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -120(%ebp)
	leal -540(%ebp), %eax
	movl %eax, -116(%ebp)
	movl -120(%ebp), %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -112(%ebp)
	movl -112(%ebp), %eax
	movl %eax, -108(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -108(%ebp)
	leal -536(%ebp), %eax
	movl %eax, -104(%ebp)
	movl -108(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1263
__cond1263:
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -132(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -128(%ebp)
	movl -132(%ebp), %eax
	movl %eax, %ecx
	movl -128(%ebp), %eax
	cmpl %eax, %ecx
	setLE -124(%ebp)
	andl $1, -124(%ebp)
	movl -124(%ebp), %eax
	cmpl $0, %eax
	jNE __body1262
	jmp __post1261
__fresh1278:
	jmp __body1262
__body1262:
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -216(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -212(%ebp)
	movl -212(%ebp), %eax
	movl %eax, -208(%ebp)
	movl -208(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -204(%ebp)
	movl -204(%ebp), %eax
	addl $8, %eax
	movl %eax, -200(%ebp)
	movl -200(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -196(%ebp)
	movl -212(%ebp), %eax
	movl %eax, -192(%ebp)
	movl -216(%ebp), %eax
	pushl %eax
	movl -192(%ebp), %eax
	pushl %eax
	movl -196(%ebp), %eax
	call *%eax
	movl %eax, -188(%ebp)
	addl $8, %esp
	leal -548(%ebp), %eax
	movl %eax, -184(%ebp)
	movl -188(%ebp), %eax
	movl %eax, %ecx
	movl -184(%ebp), %eax
	movl %ecx, (%eax)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -180(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -176(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -172(%ebp)
	movl -172(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -168(%ebp)
	movl -168(%ebp), %eax
	addl $8, %eax
	movl %eax, -164(%ebp)
	movl -164(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -160(%ebp)
	movl -176(%ebp), %eax
	movl %eax, -156(%ebp)
	movl -180(%ebp), %eax
	pushl %eax
	movl -156(%ebp), %eax
	pushl %eax
	movl -160(%ebp), %eax
	call *%eax
	movl %eax, -152(%ebp)
	addl $8, %esp
	leal -544(%ebp), %eax
	movl %eax, -148(%ebp)
	movl -152(%ebp), %eax
	movl %eax, %ecx
	movl -148(%ebp), %eax
	movl %ecx, (%eax)
	movl -184(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -144(%ebp)
	movl -148(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -140(%ebp)
	movl -144(%ebp), %eax
	movl %eax, %ecx
	movl -140(%ebp), %eax
	cmpl %eax, %ecx
	setL -136(%ebp)
	andl $1, -136(%ebp)
	movl -136(%ebp), %eax
	cmpl $0, %eax
	jNE __then1266
	jmp __else1265
__fresh1279:
	jmp __then1266
__then1266:
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -220(%ebp)
	movl -220(%ebp), %eax
	movl %eax, %ecx
	movl -116(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1264
__fresh1280:
	jmp __else1265
__else1265:
	jmp __merge1264
__merge1264:
	movl -104(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -228(%ebp)
	movl -228(%ebp), %eax
	movl %eax, -224(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -224(%ebp)
	movl -224(%ebp), %eax
	movl %eax, %ecx
	movl -104(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1263
__fresh1281:
	jmp __post1261
__post1261:
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -240(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -236(%ebp)
	movl -240(%ebp), %eax
	movl %eax, %ecx
	movl -236(%ebp), %eax
	cmpl %eax, %ecx
	setNE -232(%ebp)
	andl $1, -232(%ebp)
	movl -232(%ebp), %eax
	cmpl $0, %eax
	jNE __then1269
	jmp __else1268
__fresh1282:
	jmp __then1269
__then1269:
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -376(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -372(%ebp)
	movl -372(%ebp), %eax
	movl %eax, -368(%ebp)
	movl -368(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -364(%ebp)
	movl -364(%ebp), %eax
	addl $8, %eax
	movl %eax, -360(%ebp)
	movl -360(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -356(%ebp)
	movl -372(%ebp), %eax
	movl %eax, -352(%ebp)
	movl -376(%ebp), %eax
	pushl %eax
	movl -352(%ebp), %eax
	pushl %eax
	movl -356(%ebp), %eax
	call *%eax
	movl %eax, -348(%ebp)
	addl $8, %esp
	leal -556(%ebp), %eax
	movl %eax, -344(%ebp)
	movl -348(%ebp), %eax
	movl %eax, %ecx
	movl -344(%ebp), %eax
	movl %ecx, (%eax)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -340(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -336(%ebp)
	movl -336(%ebp), %eax
	movl %eax, -332(%ebp)
	movl -332(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -328(%ebp)
	movl -328(%ebp), %eax
	addl $8, %eax
	movl %eax, -324(%ebp)
	movl -324(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -320(%ebp)
	movl -336(%ebp), %eax
	movl %eax, -316(%ebp)
	movl -340(%ebp), %eax
	pushl %eax
	movl -316(%ebp), %eax
	pushl %eax
	movl -320(%ebp), %eax
	call *%eax
	movl %eax, -312(%ebp)
	addl $8, %esp
	leal -552(%ebp), %eax
	movl %eax, -308(%ebp)
	movl -312(%ebp), %eax
	movl %eax, %ecx
	movl -308(%ebp), %eax
	movl %ecx, (%eax)
	movl -344(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -304(%ebp)
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -300(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -296(%ebp)
	movl -296(%ebp), %eax
	movl %eax, -292(%ebp)
	movl -292(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -288(%ebp)
	movl -288(%ebp), %eax
	addl $12, %eax
	movl %eax, -284(%ebp)
	movl -284(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -280(%ebp)
	movl -296(%ebp), %eax
	movl %eax, -276(%ebp)
	movl -304(%ebp), %eax
	pushl %eax
	movl -300(%ebp), %eax
	pushl %eax
	movl -276(%ebp), %eax
	pushl %eax
	movl -280(%ebp), %eax
	call *%eax
	addl $12, %esp
	movl -308(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -272(%ebp)
	movl -116(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -268(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -264(%ebp)
	movl -264(%ebp), %eax
	movl %eax, -260(%ebp)
	movl -260(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -256(%ebp)
	movl -256(%ebp), %eax
	addl $12, %eax
	movl %eax, -252(%ebp)
	movl -252(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -248(%ebp)
	movl -264(%ebp), %eax
	movl %eax, -244(%ebp)
	movl -272(%ebp), %eax
	pushl %eax
	movl -268(%ebp), %eax
	pushl %eax
	movl -244(%ebp), %eax
	pushl %eax
	movl -248(%ebp), %eax
	call *%eax
	addl $12, %esp
	jmp __merge1267
__fresh1283:
	jmp __else1268
__else1268:
	jmp __merge1267
__merge1267:
	movl -4(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -384(%ebp)
	movl -384(%ebp), %eax
	movl %eax, -380(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -380(%ebp)
	movl -380(%ebp), %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1260
__fresh1284:
	jmp __post1258
__post1258:
	leal -560(%ebp), %eax
	movl %eax, -388(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -388(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1272
__cond1272:
	movl -388(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -400(%ebp)
	movl -64(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -396(%ebp)
	movl -400(%ebp), %eax
	movl %eax, %ecx
	movl -396(%ebp), %eax
	cmpl %eax, %ecx
	setL -392(%ebp)
	andl $1, -392(%ebp)
	movl -392(%ebp), %eax
	cmpl $0, %eax
	jNE __body1271
	jmp __post1270
__fresh1285:
	jmp __body1271
__body1271:
	movl -388(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -488(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -484(%ebp)
	movl -484(%ebp), %eax
	movl %eax, -480(%ebp)
	movl -480(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -476(%ebp)
	movl -476(%ebp), %eax
	addl $8, %eax
	movl %eax, -472(%ebp)
	movl -472(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -468(%ebp)
	movl -484(%ebp), %eax
	movl %eax, -464(%ebp)
	movl -488(%ebp), %eax
	pushl %eax
	movl -464(%ebp), %eax
	pushl %eax
	movl -468(%ebp), %eax
	call *%eax
	movl %eax, -460(%ebp)
	addl $8, %esp
	leal -568(%ebp), %eax
	movl %eax, -456(%ebp)
	movl -460(%ebp), %eax
	movl %eax, %ecx
	movl -456(%ebp), %eax
	movl %ecx, (%eax)
	movl -388(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -452(%ebp)
	movl -452(%ebp), %eax
	movl %eax, -448(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -448(%ebp)
	movl -68(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -444(%ebp)
	movl -444(%ebp), %eax
	movl %eax, -440(%ebp)
	movl -440(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -436(%ebp)
	movl -436(%ebp), %eax
	addl $8, %eax
	movl %eax, -432(%ebp)
	movl -432(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -428(%ebp)
	movl -444(%ebp), %eax
	movl %eax, -424(%ebp)
	movl -448(%ebp), %eax
	pushl %eax
	movl -424(%ebp), %eax
	pushl %eax
	movl -428(%ebp), %eax
	call *%eax
	movl %eax, -420(%ebp)
	addl $8, %esp
	leal -564(%ebp), %eax
	movl %eax, -416(%ebp)
	movl -420(%ebp), %eax
	movl %eax, %ecx
	movl -416(%ebp), %eax
	movl %ecx, (%eax)
	movl -456(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -412(%ebp)
	movl -416(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -408(%ebp)
	movl -412(%ebp), %eax
	movl %eax, %ecx
	movl -408(%ebp), %eax
	cmpl %eax, %ecx
	setG -404(%ebp)
	andl $1, -404(%ebp)
	movl -404(%ebp), %eax
	cmpl $0, %eax
	jNE __then1275
	jmp __else1274
__fresh1286:
	jmp __then1275
__then1275:
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -496(%ebp)
	movl -496(%ebp), %eax
	movl %eax, -492(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -492(%ebp)
	movl -492(%ebp), %eax
	movl %eax, %ecx
	movl -60(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1273
__fresh1287:
	jmp __else1274
__else1274:
	jmp __merge1273
__merge1273:
	movl -388(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -504(%ebp)
	movl -504(%ebp), %eax
	movl %eax, -500(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	addl %ecx, -500(%ebp)
	movl -500(%ebp), %eax
	movl %eax, %ecx
	movl -388(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1272
__fresh1288:
	jmp __post1270
__post1270:
	movl -60(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -508(%ebp)
	movl -508(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_getLength
__Array_getLength:
	pushl %ebp
	movl %esp, %ebp
	subl $8, %esp
__fresh1257:
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
__fresh1248:
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
	jNE __then1247
	jmp __else1246
__fresh1249:
	jmp __then1247
__then1247:
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
	jmp __merge1245
__fresh1250:
	jmp __else1246
__else1246:
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
	jNE __then1244
	jmp __else1243
__fresh1251:
	jmp __then1244
__then1244:
	leal -156(%ebp), %eax
	movl %eax, -56(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -56(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1238
__cond1238:
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
	jNE __body1237
	jmp __post1236
__fresh1252:
	jmp __body1237
__body1237:
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
	jNE __then1241
	jmp __else1240
__fresh1253:
	jmp __then1241
__then1241:
	movl -80(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -96(%ebp)
	movl -96(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1239
__fresh1254:
	jmp __else1240
__else1240:
	jmp __merge1239
__merge1239:
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
	jmp __cond1238
__fresh1255:
	jmp __post1236
__post1236:
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
	jmp __merge1242
__fresh1256:
	jmp __else1243
__else1243:
	jmp __merge1242
__merge1242:
	jmp __merge1245
__merge1245:
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
__fresh1229:
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
	jNE __then1228
	jmp __else1227
__fresh1230:
	jmp __then1228
__then1228:
	leal -100(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1222
__cond1222:
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
	jNE __body1221
	jmp __post1220
__fresh1231:
	jmp __body1221
__body1221:
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
	jNE __then1225
	jmp __else1224
__fresh1232:
	jmp __then1225
__then1225:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1223
__fresh1233:
	jmp __else1224
__else1224:
	jmp __merge1223
__merge1223:
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
	jmp __cond1222
__fresh1234:
	jmp __post1220
__post1220:
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
	jmp __merge1226
__fresh1235:
	jmp __else1227
__else1227:
	movl $__const_str633, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge1226
__merge1226:
	movl %ebp, %esp
	popl %ebp
	ret
.globl __Array_getElement
__Array_getElement:
	pushl %ebp
	movl %esp, %ebp
	subl $108, %esp
__fresh1213:
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
	jNE __then1212
	jmp __else1211
__fresh1214:
	jmp __then1212
__then1212:
	leal -104(%ebp), %eax
	movl %eax, -28(%ebp)
	movl $1, %eax
	movl %eax, %ecx
	movl -28(%ebp), %eax
	movl %ecx, (%eax)
	jmp __cond1206
__cond1206:
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
	jNE __body1205
	jmp __post1204
__fresh1215:
	jmp __body1205
__body1205:
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
	jNE __then1209
	jmp __else1208
__fresh1216:
	jmp __then1209
__then1209:
	movl -48(%ebp), %eax
	movl (%eax), %ecx
	movl %ecx, -64(%ebp)
	movl -64(%ebp), %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	jmp __merge1207
__fresh1217:
	jmp __else1208
__else1208:
	jmp __merge1207
__merge1207:
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
	jmp __cond1206
__fresh1218:
	jmp __post1204
__post1204:
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
	jmp __merge1210
__fresh1219:
	jmp __else1211
__else1211:
	movl $__const_str632, %eax
	pushl %eax
	call _print_string
	addl $4, %esp
	movl $-1, %eax
	pushl %eax
	call _oat_abort
	addl $4, %esp
	jmp __merge1210
__merge1210:
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
	subl $28, %esp
__fresh1203:
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -28(%ebp)
	addl $4, %esp
	movl -28(%ebp), %eax
	movl %eax, -24(%ebp)
	movl -24(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -20(%ebp)
	addl $4, %esp
	movl -20(%ebp), %eax
	movl %eax, -16(%ebp)
	movl -16(%ebp), %eax
	addl $4, %eax
	movl %eax, -12(%ebp)
	movl $__const_str631, %eax
	movl %eax, %ecx
	movl -12(%ebp), %eax
	movl %ecx, (%eax)
	movl -16(%ebp), %eax
	addl $0, %eax
	movl %eax, -8(%ebp)
	movl $__Array_vtable628, %eax
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
__fresh1202:
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
	subl $48, %esp
__fresh1201:
	leal -48(%ebp), %eax
	movl %eax, -44(%ebp)
	movl 12(%ebp), %eax
	movl %eax, %ecx
	movl -44(%ebp), %eax
	movl %ecx, (%eax)
	movl $8, %eax
	pushl %eax
	call _oat_malloc
	movl %eax, -40(%ebp)
	addl $4, %esp
	movl -40(%ebp), %eax
	movl %eax, -36(%ebp)
	movl -36(%ebp), %eax
	pushl %eax
	call __Object_ctor
	movl %eax, -32(%ebp)
	addl $4, %esp
	movl -32(%ebp), %eax
	movl %eax, -28(%ebp)
	movl -28(%ebp), %eax
	addl $4, %eax
	movl %eax, -24(%ebp)
	movl $__const_str630, %eax
	movl %eax, %ecx
	movl -24(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $0, %eax
	movl %eax, -20(%ebp)
	movl $__ArrayItem_vtable627, %eax
	movl %eax, %ecx
	movl -20(%ebp), %eax
	movl %ecx, (%eax)
	movl -28(%ebp), %eax
	addl $8, %eax
	movl %eax, -16(%ebp)
	movl -44(%ebp), %eax
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
__fresh1200:
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
__fresh1199:
	movl 8(%ebp), %eax
	addl $4, %eax
	movl %eax, -8(%ebp)
	movl $__const_str629, %eax
	movl %eax, %ecx
	movl -8(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	addl $0, %eax
	movl %eax, -4(%ebp)
	movl $__Object_vtable626, %eax
	movl %eax, %ecx
	movl -4(%ebp), %eax
	movl %ecx, (%eax)
	movl 8(%ebp), %eax
	movl %ebp, %esp
	popl %ebp
	ret
