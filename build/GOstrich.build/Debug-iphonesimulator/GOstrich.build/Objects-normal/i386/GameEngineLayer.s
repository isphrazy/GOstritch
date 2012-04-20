	.section	__TEXT,__text,regular,pure_instructions
	.section	__DWARF,__debug_frame,regular,debug
Lsection_debug_frame:
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.section	__DWARF,__debug_aranges,regular,debug
Lsection_aranges:
	.section	__DWARF,__debug_macinfo,regular,debug
Lsection_macinfo:
Lsection_line:
	.section	__DWARF,__debug_loc,regular,debug
Lsection_loc:
	.section	__DWARF,__debug_pubnames,regular,debug
Lsection_pubnames:
	.section	__DWARF,__debug_pubtypes,regular,debug
Lsection_pubtypes:
	.section	__DWARF,__debug_str,regular,debug
Lsection_str:
	.section	__DWARF,__debug_ranges,regular,debug
Lsection_ranges:
	.section	__TEXT,__text,regular,pure_instructions
Ltext_begin:
	.section	__DATA,__data
Ldata_begin:
	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
"+[GameEngineLayer get_cur_pos_x]":
Leh_func_begin1:
Lfunc_begin1:
Ltmp3:
	pushl	%ebp
Ltmp0:
	movl	%esp, %ebp
Ltmp1:
	subl	$20, %esp
Ltmp2:
	call	L1$pb
L1$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -4(%ebp)
	movl	%ecx, -8(%ebp)
Ltmp4:
	movss	_cur_pos_x-L1$pb(%eax), %xmm0
	movss	%xmm0, -16(%ebp)
	movss	-16(%ebp), %xmm0
	movss	%xmm0, -12(%ebp)
	movss	-12(%ebp), %xmm0
	movss	%xmm0, -20(%ebp)
	flds	-20(%ebp)
	addl	$20, %esp
	popl	%ebp
	ret
Ltmp5:
Lfunc_end1:
Leh_func_end1:

	.align	4, 0x90
"+[GameEngineLayer get_cur_pos_y]":
Leh_func_begin2:
Lfunc_begin2:
Ltmp9:
	pushl	%ebp
Ltmp6:
	movl	%esp, %ebp
Ltmp7:
	subl	$20, %esp
Ltmp8:
	call	L2$pb
L2$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -4(%ebp)
	movl	%ecx, -8(%ebp)
Ltmp10:
	movss	_cur_pos_y-L2$pb(%eax), %xmm0
	movss	%xmm0, -16(%ebp)
	movss	-16(%ebp), %xmm0
	movss	%xmm0, -12(%ebp)
	movss	-12(%ebp), %xmm0
	movss	%xmm0, -20(%ebp)
	flds	-20(%ebp)
	addl	$20, %esp
	popl	%ebp
	ret
Ltmp11:
Lfunc_end2:
Leh_func_end2:

	.align	4, 0x90
"+[GameEngineLayer scene]":
Leh_func_begin3:
Lfunc_begin3:
Ltmp15:
	pushl	%ebp
Ltmp12:
	movl	%esp, %ebp
Ltmp13:
	pushl	%esi
	subl	$68, %esp
Ltmp14:
	call	L3$pb
L3$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -8(%ebp)
	movl	%ecx, -12(%ebp)
Ltmp16:
	movl	L_OBJC_CLASSLIST_REFERENCES_$_2-L3$pb(%eax), %ecx
	movl	%ecx, -40(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_8-L3$pb(%eax), %ecx
	movl	-40(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -56(%ebp)
	call	_objc_msgSend
	movl	%eax, -44(%ebp)
Ltmp17:
	movl	-56(%ebp), %eax
	movl	L_OBJC_CLASSLIST_REFERENCES_$_3-L3$pb(%eax), %ecx
	movl	%ecx, -36(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_8-L3$pb(%eax), %ecx
	movl	-36(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend
	movl	%eax, -48(%ebp)
Ltmp18:
	movl	-44(%ebp), %eax
	movl	%eax, -32(%ebp)
	movl	-48(%ebp), %eax
	movl	-56(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_9-L3$pb(%ecx), %edx
	movl	-32(%ebp), %esi
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	call	_objc_msgSend
Ltmp19:
	movl	-56(%ebp), %eax
	movl	L_OBJC_CLASSLIST_REFERENCES_$_4-L3$pb(%eax), %ecx
	movl	%ecx, -28(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_8-L3$pb(%eax), %ecx
	movl	-28(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend
	movl	%eax, -52(%ebp)
Ltmp20:
	movl	-44(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-52(%ebp), %eax
	movl	-56(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_9-L3$pb(%ecx), %ecx
	movl	-24(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	call	_objc_msgSend
Ltmp21:
	movl	-44(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	%eax, -16(%ebp)
	movl	-16(%ebp), %eax
	addl	$68, %esp
	popl	%esi
	popl	%ebp
	ret
Ltmp22:
Lfunc_end3:
Leh_func_end3:

	.align	4, 0x90
"-[GameEngineLayer init]":
Leh_func_begin4:
Lfunc_begin4:
Ltmp26:
	pushl	%ebp
Ltmp23:
	movl	%esp, %ebp
Ltmp24:
	pushl	%edi
	pushl	%esi
	subl	$160, %esp
Ltmp25:
	call	L4$pb
L4$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -12(%ebp)
	movl	%ecx, -16(%ebp)
Ltmp27:
	movl	-12(%ebp), %ecx
	leal	-120(%ebp), %edx
	movl	%ecx, -120(%ebp)
	movl	L_OBJC_CLASSLIST_SUP_REFS_$_5-L4$pb(%eax), %ecx
	movl	%ecx, -116(%ebp)
	movl	%edx, -112(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_10-L4$pb(%eax), %ecx
	movl	-112(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -124(%ebp)
	call	_objc_msgSendSuper2
	movl	%eax, -12(%ebp)
	movl	-12(%ebp), %eax
	cmpl	$0, %eax
	je	LBB4_2
Ltmp28:
	movl	-12(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	-124(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_11-L4$pb(%eax), %ecx
	movl	-108(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend
Ltmp29:
	movl	-12(%ebp), %eax
	movl	-124(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L4$pb(%ecx), %edx
	addl	%edx, %eax
	movl	L_OBJC_CLASSLIST_REFERENCES_$_6-L4$pb(%ecx), %edx
	movl	%edx, -104(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_10-L4$pb(%ecx), %edx
	movl	-104(%ebp), %esi
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -128(%ebp)
	call	_objc_msgSend
	movl	-128(%ebp), %ecx
	movl	%eax, (%ecx)
Ltmp30:
	movl	-12(%ebp), %eax
	movl	%eax, -100(%ebp)
	movl	-12(%ebp), %eax
	movl	-124(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L4$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_9-L4$pb(%ecx), %edx
	movl	-100(%ebp), %esi
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	call	_objc_msgSend
	movl	%esp, %eax
Ltmp31:
	movl	$1112014848, 4(%eax)
	movl	$1112014848, (%eax)
	call	_CGPointMake
	leal	-96(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movss	-96(%ebp), %xmm0
	movss	%xmm0, -32(%ebp)
	movss	-92(%ebp), %xmm0
	movss	%xmm0, -28(%ebp)
	movl	-12(%ebp), %eax
	movl	-124(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L4$pb(%ecx), %edx
	movl	(%eax,%edx), %eax
	movl	%eax, -84(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_12-L4$pb(%ecx), %edx
	movss	-32(%ebp), %xmm0
	movss	-28(%ebp), %xmm1
	movl	%esp, %esi
	movss	%xmm1, 12(%esi)
	movss	%xmm0, 8(%esi)
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	call	_objc_msgSend
Ltmp32:
	movl	-12(%ebp), %eax
	movl	-124(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L4$pb(%ecx), %edx
	movl	(%eax,%edx), %eax
	movl	%eax, -80(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_13-L4$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	movl	$0, 8(%esi)
	call	_objc_msgSend
Ltmp33:
	movl	-12(%ebp), %eax
	movl	-124(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L4$pb(%ecx), %edx
	movl	(%eax,%edx), %eax
	movl	%eax, -76(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_14-L4$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	movl	$1084227584, 8(%esi)
	call	_objc_msgSend
Ltmp34:
	movl	-12(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-124(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_15-L4$pb(%ecx), %edx
	movl	L_OBJC_SELECTOR_REFERENCES_16-L4$pb(%ecx), %esi
	movl	%esp, %edi
	movl	%edx, 8(%edi)
	movl	%esi, 4(%edi)
	movl	%eax, (%edi)
	call	_objc_msgSend
Ltmp35:
	movl	-12(%ebp), %eax
	movl	%eax, -68(%ebp)
	movl	-124(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_17-L4$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	movl	$1, 8(%esi)
	call	_objc_msgSend
Ltmp36:
	movl	-12(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	-124(%ebp), %eax
	movl	L_OBJC_CLASSLIST_REFERENCES_$_7-L4$pb(%eax), %ecx
	movl	%ecx, -60(%ebp)
	leal	-56(%ebp), %ecx
	movl	%esp, %edx
	movl	%ecx, (%edx)
	movl	$1161527296, 16(%edx)
	movl	$1161527296, 12(%edx)
	movl	$0, 8(%edx)
	movl	$0, 4(%edx)
	call	_CGRectMake
	subl	$4, %esp
	movl	-12(%ebp), %eax
	movl	-124(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L4$pb(%ecx), %edx
	movl	(%eax,%edx), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_18-L4$pb(%ecx), %edx
	movl	-60(%ebp), %esi
	movsd	-56(%ebp), %xmm0
	movsd	-48(%ebp), %xmm1
	movl	%esp, %edi
	movsd	%xmm1, 20(%edi)
	movsd	%xmm0, 12(%edi)
	movl	%eax, 8(%edi)
	movl	%edx, 4(%edi)
	movl	%esi, (%edi)
	call	_objc_msgSend
	movl	-124(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_19-L4$pb(%ecx), %edx
	movl	-64(%ebp), %esi
	movl	%esp, %edi
	movl	%eax, 8(%edi)
	movl	%edx, 4(%edi)
	movl	%esi, (%edi)
	call	_objc_msgSend
Ltmp37:
LBB4_2:
Ltmp38:
	movl	-12(%ebp), %eax
	movl	%eax, -36(%ebp)
	movl	-36(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	$160, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
Ltmp39:
Lfunc_end4:
Leh_func_end4:

	.align	4, 0x90
_CGPointMake:
Leh_func_begin5:
Lfunc_begin5:
Ltmp43:
	pushl	%ebp
Ltmp40:
	movl	%esp, %ebp
Ltmp41:
	subl	$40, %esp
Ltmp42:
	movss	12(%ebp), %xmm0
	movss	8(%ebp), %xmm1
	movss	%xmm1, -4(%ebp)
	movss	%xmm0, -8(%ebp)
Ltmp44:
	movss	-4(%ebp), %xmm0
	movss	%xmm0, -32(%ebp)
	movss	-8(%ebp), %xmm0
	movss	%xmm0, -28(%ebp)
	movss	-32(%ebp), %xmm0
	movss	%xmm0, -24(%ebp)
	movss	-28(%ebp), %xmm0
	movss	%xmm0, -20(%ebp)
	movss	-24(%ebp), %xmm0
	movss	%xmm0, -16(%ebp)
	movss	-20(%ebp), %xmm0
	movss	%xmm0, -12(%ebp)
	leal	-16(%ebp), %eax
	movl	(%eax), %ecx
	movl	4(%eax), %eax
	movl	%eax, -36(%ebp)
	movl	%ecx, %eax
	movl	-36(%ebp), %edx
	addl	$40, %esp
	popl	%ebp
	ret
Ltmp45:
Lfunc_end5:
Leh_func_end5:

	.align	4, 0x90
_CGRectMake:
Leh_func_begin6:
Lfunc_begin6:
Ltmp49:
	pushl	%ebp
Ltmp46:
	movl	%esp, %ebp
Ltmp47:
	subl	$32, %esp
Ltmp48:
	movss	24(%ebp), %xmm0
	movss	20(%ebp), %xmm1
	movss	16(%ebp), %xmm2
	movss	12(%ebp), %xmm3
	movl	8(%ebp), %eax
	movss	%xmm3, -4(%ebp)
	movss	%xmm2, -8(%ebp)
	movss	%xmm1, -12(%ebp)
	movss	%xmm0, -16(%ebp)
Ltmp50:
	movss	-4(%ebp), %xmm0
	movss	%xmm0, -32(%ebp)
	movss	-8(%ebp), %xmm0
	movss	%xmm0, -28(%ebp)
Ltmp51:
	movss	-12(%ebp), %xmm0
	movss	%xmm0, -24(%ebp)
	movss	-16(%ebp), %xmm0
	movss	%xmm0, -20(%ebp)
Ltmp52:
	movss	-32(%ebp), %xmm0
	movss	%xmm0, (%eax)
	movss	-28(%ebp), %xmm0
	movss	%xmm0, 4(%eax)
	movss	-24(%ebp), %xmm0
	movss	%xmm0, 8(%eax)
	movss	-20(%ebp), %xmm0
	movss	%xmm0, 12(%eax)
	addl	$32, %esp
	popl	%ebp
	ret	$4
Ltmp53:
Lfunc_end6:
Leh_func_end6:

	.align	4, 0x90
"-[GameEngineLayer loadMap]":
Leh_func_begin7:
Lfunc_begin7:
Ltmp57:
	pushl	%ebp
Ltmp54:
	movl	%esp, %ebp
Ltmp55:
	pushl	%edi
	pushl	%esi
	subl	$176, %esp
Ltmp56:
	call	L7$pb
L7$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -12(%ebp)
	movl	%ecx, -16(%ebp)
Ltmp58:
	movl	-12(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.islands-L7$pb(%eax), %edx
	addl	%edx, %ecx
	movl	L_OBJC_CLASSLIST_REFERENCES_$_4-L7$pb(%eax), %edx
	movl	%edx, -144(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_20-L7$pb(%eax), %edx
	movl	-144(%ebp), %esi
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, -152(%ebp)
	movl	%ecx, -156(%ebp)
	call	_objc_msgSend
	movl	-156(%ebp), %ecx
	movl	%eax, (%ecx)
Ltmp59:
	leal	-128(%ebp), %eax
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	$0, -120(%ebp)
	movl	$0, -116(%ebp)
	movl	$0, -112(%ebp)
	movl	$0, -108(%ebp)
	movl	$0, -104(%ebp)
	movl	$0, -100(%ebp)
	movl	-12(%ebp), %ecx
	movl	-152(%ebp), %edx
	movl	_OBJC_IVAR_$_GameEngineLayer.islands-L7$pb(%edx), %esi
	addl	%esi, %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -140(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_21-L7$pb(%edx), %ecx
	movl	-140(%ebp), %esi
	leal	-92(%ebp), %edi
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 12(%esp)
	movl	$16, 16(%esp)
	call	_objc_msgSend
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	cmpl	$0, %eax
	je	LBB7_8
	movl	-120(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -24(%ebp)
LBB7_2:
	movl	$0, -20(%ebp)
LBB7_3:
	movl	-120(%ebp), %eax
	movl	(%eax), %eax
	movl	-24(%ebp), %ecx
	cmpl	%ecx, %eax
	je	LBB7_5
	movl	-12(%ebp), %eax
	movl	-152(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.islands-L7$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -136(%ebp)
	movl	-136(%ebp), %eax
	movl	%esp, %edx
	movl	%eax, (%edx)
	call	_objc_enumerationMutation
LBB7_5:
	movl	-124(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -148(%ebp)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
Ltmp60:
	movl	-12(%ebp), %eax
	movl	%eax, -132(%ebp)
	movl	-148(%ebp), %eax
	movl	-152(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_9-L7$pb(%ecx), %edx
	movl	-132(%ebp), %esi
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	call	_objc_msgSend
Ltmp61:
	movl	-20(%ebp), %eax
	movl	-28(%ebp), %ecx
	cmpl	%ecx, %eax
	jb	LBB7_3
	movl	-152(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_21-L7$pb(%eax), %ecx
	movl	-140(%ebp), %edx
	leal	-92(%ebp), %esi
	leal	-128(%ebp), %edi
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 12(%esp)
	movl	$16, 16(%esp)
	call	_objc_msgSend
	movl	%eax, -28(%ebp)
	movl	-28(%ebp), %eax
	cmpl	$0, %eax
	jne	LBB7_2
	movl	$0, -148(%ebp)
	jmp	LBB7_9
LBB7_8:
	movl	$0, -148(%ebp)
LBB7_9:
Ltmp62:
	addl	$176, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
Ltmp63:
Lfunc_end7:
Leh_func_end7:

	.align	4, 0x90
___copy_helper_block_1:
Leh_func_begin8:
	pushl	%ebp
Ltmp64:
	movl	%esp, %ebp
Ltmp65:
	subl	$24, %esp
Ltmp66:
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, -4(%ebp)
	movl	%eax, -8(%ebp)
	movl	-8(%ebp), %eax
	movl	20(%eax), %eax
	movl	-4(%ebp), %ecx
	addl	$20, %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movl	$3, 8(%esp)
	call	__Block_object_assign
	addl	$24, %esp
	popl	%ebp
	ret
Leh_func_end8:

	.align	4, 0x90
___destroy_helper_block_1:
Leh_func_begin9:
	pushl	%ebp
Ltmp67:
	movl	%esp, %ebp
Ltmp68:
	subl	$24, %esp
Ltmp69:
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	-4(%ebp), %eax
	movl	20(%eax), %eax
	movl	%eax, (%esp)
	movl	$3, 4(%esp)
	call	__Block_object_dispose
	addl	$24, %esp
	popl	%ebp
	ret
Leh_func_end9:

	.align	4, 0x90
"-[GameEngineLayer sort_islands]":
Leh_func_begin10:
Lfunc_begin8:
Ltmp73:
	pushl	%ebp
Ltmp70:
	movl	%esp, %ebp
Ltmp71:
	pushl	%esi
	subl	$52, %esp
Ltmp72:
	call	L10$pb
L10$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -8(%ebp)
	movl	%ecx, -12(%ebp)
Ltmp74:
	leal	-40(%ebp), %ecx
	movl	L__NSConcreteStackBlock$non_lazy_ptr-L10$pb(%eax), %edx
	leal	(%edx), %edx
	movl	%edx, -40(%ebp)
	movl	$1107296256, -36(%ebp)
	movl	$0, -32(%ebp)
	leal	"___-[GameEngineLayer sort_islands]_block_invoke_1"-L10$pb(%eax), %edx
	movl	%edx, -28(%ebp)
	leal	___block_descriptor_tmp_1.203-L10$pb(%eax), %edx
	movl	%edx, -24(%ebp)
	movl	-8(%ebp), %edx
	movl	%edx, -20(%ebp)
Ltmp75:
	movl	-8(%ebp), %edx
	movl	_OBJC_IVAR_$_GameEngineLayer.islands-L10$pb(%eax), %esi
	addl	%esi, %edx
	movl	(%edx), %edx
	movl	%edx, -44(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_23-L10$pb(%eax), %eax
	movl	-44(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movl	%ecx, 8(%esp)
	call	_objc_msgSend
Ltmp76:
	addl	$52, %esp
	popl	%esi
	popl	%ebp
	ret
Ltmp77:
Lfunc_end8:
Leh_func_end10:

	.align	4, 0x90
"___-[GameEngineLayer sort_islands]_block_invoke_1":
Leh_func_begin11:
Lfunc_begin9:
Ltmp81:
	pushl	%ebp
Ltmp78:
	movl	%esp, %ebp
Ltmp79:
	pushl	%esi
	subl	$100, %esp
Ltmp80:
	call	L11$pb
L11$pb:
	popl	%eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %esi
	movl	%esi, -8(%ebp)
	movl	%edx, -12(%ebp)
	movl	%ecx, -16(%ebp)
Ltmp82:
	movl	-8(%ebp), %ecx
	movl	20(%ecx), %ecx
	movl	%ecx, -80(%ebp)
Ltmp83:
	movl	-12(%ebp), %ecx
	movl	%ecx, -72(%ebp)
	movl	-80(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L11$pb(%eax), %edx
	addl	%edx, %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -68(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_24-L11$pb(%eax), %ecx
	movl	-68(%ebp), %edx
	movl	%esp, %esi
	movl	%ecx, 4(%esi)
	movl	%edx, (%esi)
	movl	%eax, -92(%ebp)
	call	_objc_msgSend
	leal	-56(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movss	-56(%ebp), %xmm0
	movss	%xmm0, -64(%ebp)
	movss	-52(%ebp), %xmm0
	movss	%xmm0, -60(%ebp)
	movss	-64(%ebp), %xmm0
	movl	-92(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_22-L11$pb(%eax), %ecx
	movl	-72(%ebp), %edx
	movl	%esp, %esi
	movss	%xmm0, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, (%esi)
	call	_objc_msgSend_fpret
	fstps	-76(%ebp)
Ltmp84:
	movl	-16(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-80(%ebp), %eax
	movl	-92(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L11$pb(%ecx), %edx
	movl	(%eax,%edx), %eax
	movl	%eax, -44(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_24-L11$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	call	_objc_msgSend
	movl	%edx, -28(%ebp)
	movl	%eax, -32(%ebp)
	movss	-32(%ebp), %xmm0
	movss	%xmm0, -40(%ebp)
	movss	-28(%ebp), %xmm0
	movss	%xmm0, -36(%ebp)
	movss	-40(%ebp), %xmm0
	movl	-92(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_22-L11$pb(%eax), %eax
	movl	-48(%ebp), %ecx
	movl	%esp, %edx
	movss	%xmm0, 8(%edx)
	movl	%eax, 4(%edx)
	movl	%ecx, (%edx)
	call	_objc_msgSend_fpret
	fstps	-88(%ebp)
	movss	-88(%ebp), %xmm0
	movss	%xmm0, -84(%ebp)
Ltmp85:
	movss	-76(%ebp), %xmm1
Ltmp86:
	ucomiss	%xmm1, %xmm0
	##FP_REG_KILL
Ltmp87:
	jbe	LBB11_2
Ltmp88:
	movl	$1, -24(%ebp)
	jmp	LBB11_5
LBB11_2:
Ltmp89:
	movss	-76(%ebp), %xmm0
	movss	-84(%ebp), %xmm1
	ucomiss	%xmm1, %xmm0
	jbe	LBB11_4
Ltmp90:
	movl	$-1, -24(%ebp)
	jmp	LBB11_5
LBB11_4:
Ltmp91:
	movl	$0, -24(%ebp)
LBB11_5:
Ltmp92:
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	$100, %esp
	popl	%esi
	popl	%ebp
	ret
Ltmp93:
Lfunc_end9:
Leh_func_end11:

	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI12_0:
	.long	442745336
	.long	1078765020
LCPI12_1:
	.long	0
	.long	1071644672
LCPI12_2:
	.long	3435973837
	.long	1072483532
	.section	__TEXT,__literal4,4byte_literals
	.align	2
LCPI12_3:
	.long	3212836864
	.section	__TEXT,__text,regular,pure_instructions
	.align	4, 0x90
"-[GameEngineLayer update:]":
Leh_func_begin12:
Lfunc_begin10:
Ltmp97:
	pushl	%ebp
Ltmp94:
	movl	%esp, %ebp
Ltmp95:
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$988, %esp
Ltmp96:
	call	L12$pb
L12$pb:
	popl	%eax
	movss	16(%ebp), %xmm0
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -16(%ebp)
	movl	%ecx, -20(%ebp)
	movss	%xmm0, -24(%ebp)
Ltmp98:
	movl	-16(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%eax), %edx
	addl	%edx, %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -708(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_24-L12$pb(%eax), %ecx
	movl	-708(%ebp), %edx
	movl	%esp, %esi
	movl	%ecx, 4(%esi)
	movl	%edx, (%esi)
	movl	%eax, -904(%ebp)
	call	_objc_msgSend
	leal	-696(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movss	-696(%ebp), %xmm0
	movss	%xmm0, -704(%ebp)
	movss	-692(%ebp), %xmm0
	movss	%xmm0, -700(%ebp)
	movss	-704(%ebp), %xmm0
	movss	%xmm0, -712(%ebp)
Ltmp99:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	movl	(%eax,%edx), %eax
	movl	%eax, -684(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_24-L12$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	call	_objc_msgSend
	movl	%edx, -668(%ebp)
	movl	%eax, -672(%ebp)
	movss	-672(%ebp), %xmm0
	movss	%xmm0, -680(%ebp)
	movss	-668(%ebp), %xmm0
	movss	%xmm0, -676(%ebp)
	leal	-392(%ebp), %eax
Ltmp100:
Ltmp101:
	movss	%xmm0, -716(%ebp)
Ltmp102:
	movl	$2139095039, -720(%ebp)
Ltmp103:
	movl	$0, -392(%ebp)
	movl	$0, -388(%ebp)
	movl	$0, -384(%ebp)
	movl	$0, -380(%ebp)
	movl	$0, -376(%ebp)
	movl	$0, -372(%ebp)
	movl	$0, -368(%ebp)
	movl	$0, -364(%ebp)
	movl	-16(%ebp), %ecx
	movl	-904(%ebp), %edx
	movl	_OBJC_IVAR_$_GameEngineLayer.islands-L12$pb(%edx), %esi
	movl	(%ecx,%esi), %ecx
	movl	%ecx, -664(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_21-L12$pb(%edx), %esi
	leal	-356(%ebp), %edi
	movl	%esp, %ebx
	movl	%edi, 12(%ebx)
	movl	%eax, 8(%ebx)
	movl	%esi, 4(%ebx)
	movl	%ecx, (%ebx)
	movl	$16, 16(%ebx)
	call	_objc_msgSend
	movl	%eax, -292(%ebp)
	testl	%eax, %eax
	je	LBB12_11
	movl	-384(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -288(%ebp)
LBB12_2:
	movl	$0, -284(%ebp)
LBB12_3:
	movl	-384(%ebp), %eax
	movl	(%eax), %eax
	movl	-288(%ebp), %ecx
	cmpl	%ecx, %eax
	je	LBB12_5
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.islands-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -660(%ebp)
	movl	-660(%ebp), %eax
	movl	%esp, %edx
	movl	%eax, (%edx)
	call	_objc_enumerationMutation
LBB12_5:
	movl	-388(%ebp), %eax
	movl	-284(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -740(%ebp)
	movl	-284(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -284(%ebp)
Ltmp104:
	movl	-740(%ebp), %eax
	movl	%eax, -656(%ebp)
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_22-L12$pb(%eax), %ecx
	movl	-656(%ebp), %edx
	movss	-712(%ebp), %xmm0
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, 8(%esp)
	call	_objc_msgSend_fpret
	fstps	-796(%ebp)
	movss	-796(%ebp), %xmm0
	movss	%xmm0, -744(%ebp)
Ltmp105:
	movss	-744(%ebp), %xmm0
	movss	-720(%ebp), %xmm1
	ucomiss	%xmm1, %xmm0
	##FP_REG_KILL
	jbe	LBB12_7
Ltmp106:
	movl	-16(%ebp), %eax
	movl	%eax, -652(%ebp)
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_25-L12$pb(%eax), %ecx
	movl	-652(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend
	jmp	LBB12_10
LBB12_7:
Ltmp107:
	movss	-744(%ebp), %xmm0
	movss	%xmm0, -720(%ebp)
Ltmp108:
Ltmp109:
	movl	-284(%ebp), %eax
	movl	-292(%ebp), %ecx
	cmpl	%ecx, %eax
	jb	LBB12_3
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_21-L12$pb(%eax), %ecx
	movl	-664(%ebp), %edx
	leal	-356(%ebp), %esi
	leal	-392(%ebp), %edi
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 12(%esp)
	movl	$16, 16(%esp)
	call	_objc_msgSend
	movl	%eax, -292(%ebp)
	movl	-292(%ebp), %eax
	cmpl	$0, %eax
	jne	LBB12_2
	movl	$0, -740(%ebp)
LBB12_10:
	jmp	LBB12_12
LBB12_11:
	movl	$0, -740(%ebp)
Ltmp110:
LBB12_12:
Ltmp111:
	movss	-716(%ebp), %xmm0
	movss	%xmm0, -724(%ebp)
Ltmp112:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -648(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_28-L12$pb(%ecx), %eax
	movl	-648(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-800(%ebp)
	movss	-800(%ebp), %xmm0
	movss	-716(%ebp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -728(%ebp)
Ltmp113:
	movb	$0, -729(%ebp)
Ltmp114:
	leal	-280(%ebp), %eax
	movl	$0, -280(%ebp)
	movl	$0, -276(%ebp)
	movl	$0, -272(%ebp)
	movl	$0, -268(%ebp)
	movl	$0, -264(%ebp)
	movl	$0, -260(%ebp)
	movl	$0, -256(%ebp)
	movl	$0, -252(%ebp)
	movl	-16(%ebp), %ecx
	movl	-904(%ebp), %edx
	movl	_OBJC_IVAR_$_GameEngineLayer.islands-L12$pb(%edx), %esi
	addl	%esi, %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -644(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_21-L12$pb(%edx), %ecx
	movl	-644(%ebp), %esi
	leal	-244(%ebp), %edi
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 12(%esp)
	movl	$16, 16(%esp)
	call	_objc_msgSend
	movl	%eax, -180(%ebp)
	movl	-180(%ebp), %eax
	cmpl	$0, %eax
	##FP_REG_KILL
	je	LBB12_25
	movl	-272(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -176(%ebp)
LBB12_14:
	movl	$0, -172(%ebp)
LBB12_15:
	movl	-272(%ebp), %eax
	movl	(%eax), %eax
	movl	-176(%ebp), %ecx
	cmpl	%ecx, %eax
	je	LBB12_17
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.islands-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -640(%ebp)
	movl	-640(%ebp), %eax
	movl	%esp, %edx
	movl	%eax, (%edx)
	call	_objc_enumerationMutation
LBB12_17:
	movl	-276(%ebp), %eax
	movl	-172(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -748(%ebp)
	movl	-172(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -172(%ebp)
Ltmp115:
	movl	-748(%ebp), %eax
	movl	%eax, -636(%ebp)
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_22-L12$pb(%eax), %ecx
	movl	-636(%ebp), %edx
	movss	-712(%ebp), %xmm0
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, 8(%esp)
	call	_objc_msgSend_fpret
	fstps	-804(%ebp)
	movss	-804(%ebp), %xmm0
	movss	%xmm0, -752(%ebp)
Ltmp116:
	movss	-752(%ebp), %xmm0
	movl	$4294967295, %eax
	cvtsi2ss	%eax, %xmm1
	ucomiss	%xmm1, %xmm0
	##FP_REG_KILL
	jne	LBB12_18
	jp	LBB12_18
	jmp	LBB12_21
LBB12_18:
	movss	-752(%ebp), %xmm0
	movss	-724(%ebp), %xmm1
	ucomiss	%xmm0, %xmm1
	jb	LBB12_21
	movss	-752(%ebp), %xmm0
	movss	-728(%ebp), %xmm1
	ucomiss	%xmm1, %xmm0
	jb	LBB12_21
Ltmp117:
	movb	$1, -729(%ebp)
Ltmp118:
	movss	-752(%ebp), %xmm0
	movss	%xmm0, -728(%ebp)
Ltmp119:
	movl	-748(%ebp), %eax
	movl	%eax, -736(%ebp)
	jmp	LBB12_24
Ltmp120:
LBB12_21:
Ltmp121:
	movl	-172(%ebp), %eax
	movl	-180(%ebp), %ecx
	cmpl	%ecx, %eax
	jb	LBB12_15
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_21-L12$pb(%eax), %ecx
	movl	-644(%ebp), %edx
	leal	-244(%ebp), %esi
	leal	-280(%ebp), %edi
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 12(%esp)
	movl	$16, 16(%esp)
	call	_objc_msgSend
	movl	%eax, -180(%ebp)
	movl	-180(%ebp), %eax
	cmpl	$0, %eax
	jne	LBB12_14
	movl	$0, -748(%ebp)
LBB12_24:
	jmp	LBB12_26
LBB12_25:
	movl	$0, -748(%ebp)
Ltmp122:
LBB12_26:
Ltmp123:
	movb	-729(%ebp), %al
	cmpb	$0, %al
	je	LBB12_34
Ltmp124:
	movl	-736(%ebp), %eax
	movl	%eax, -632(%ebp)
	movss	-712(%ebp), %xmm0
	movl	$1, %eax
	cvtsi2ss	%eax, %xmm1
	addss	%xmm1, %xmm0
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_22-L12$pb(%eax), %ecx
	movl	-632(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, 8(%esp)
	call	_objc_msgSend_fpret
	fstps	-808(%ebp)
	movss	-808(%ebp), %xmm0
	movl	-736(%ebp), %eax
	movl	%eax, -628(%ebp)
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_22-L12$pb(%eax), %ecx
	movl	-628(%ebp), %edx
	movss	-712(%ebp), %xmm1
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm1, 8(%esp)
	movss	%xmm0, -908(%ebp)
	call	_objc_msgSend_fpret
	fstps	-812(%ebp)
	movss	-812(%ebp), %xmm0
	movss	-908(%ebp), %xmm1
	subss	%xmm0, %xmm1
	movss	%xmm1, -756(%ebp)
Ltmp125:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -624(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_29-L12$pb(%ecx), %eax
	movl	-624(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-816(%ebp)
	movss	-816(%ebp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movss	-756(%ebp), %xmm1
	cvtss2sd	%xmm1, %xmm1
	movsd	%xmm1, (%esp)
	movsd	%xmm0, -920(%ebp)
	call	_atan
	fstpl	-824(%ebp)
	movsd	-824(%ebp), %xmm0
	movsd	%xmm0, (%esp)
	call	_cos
	fstpl	-832(%ebp)
	movsd	-832(%ebp), %xmm0
	movsd	-920(%ebp), %xmm1
	mulsd	%xmm0, %xmm1
	cvtsd2ss	%xmm1, %xmm0
	movss	%xmm0, -760(%ebp)
Ltmp126:
	movl	-736(%ebp), %eax
	movl	%eax, -620(%ebp)
	movss	-712(%ebp), %xmm0
	movss	-760(%ebp), %xmm1
	addss	%xmm1, %xmm0
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_22-L12$pb(%eax), %ecx
	movl	-620(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, 8(%esp)
	call	_objc_msgSend_fpret
	fstps	-836(%ebp)
	movss	-836(%ebp), %xmm0
	movss	%xmm0, -764(%ebp)
Ltmp127:
	movss	-764(%ebp), %xmm0
	movl	$4294967295, %eax
	cvtsi2ss	%eax, %xmm1
	ucomiss	%xmm1, %xmm0
	##FP_REG_KILL
	jne	LBB12_28
	jp	LBB12_28
	jmp	LBB12_30
LBB12_28:
	movl	-736(%ebp), %eax
	movl	%eax, -616(%ebp)
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -612(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_29-L12$pb(%ecx), %eax
	movl	-612(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-840(%ebp)
	movss	-840(%ebp), %xmm0
	movss	-712(%ebp), %xmm1
	addss	%xmm1, %xmm0
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_22-L12$pb(%eax), %ecx
	movl	-616(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, 8(%esp)
	call	_objc_msgSend_fpret
	fstps	-844(%ebp)
	movss	-844(%ebp), %xmm0
	movl	$4294967295, %eax
	cvtsi2ss	%eax, %xmm1
	ucomiss	%xmm1, %xmm0
	##FP_REG_KILL
	jne	LBB12_29
	jp	LBB12_29
	jmp	LBB12_30
LBB12_29:
Ltmp128:
	movss	-712(%ebp), %xmm0
	movss	-760(%ebp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -712(%ebp)
Ltmp129:
	movss	-764(%ebp), %xmm0
	movss	%xmm0, -716(%ebp)
	jmp	LBB12_31
LBB12_30:
Ltmp130:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -608(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_29-L12$pb(%ecx), %eax
	movl	-608(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-848(%ebp)
	movss	-848(%ebp), %xmm0
	movss	-712(%ebp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -712(%ebp)
Ltmp131:
	movss	-728(%ebp), %xmm0
	movss	%xmm0, -716(%ebp)
	##FP_REG_KILL
LBB12_31:
Ltmp132:
	movl	-736(%ebp), %eax
	movl	%eax, -604(%ebp)
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_30-L12$pb(%eax), %ecx
	movl	-604(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-852(%ebp)
	movss	-852(%ebp), %xmm0
	movl	-736(%ebp), %eax
	movl	%eax, -600(%ebp)
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_31-L12$pb(%eax), %ecx
	movl	-600(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, -924(%ebp)
	call	_objc_msgSend_fpret
	fstps	-856(%ebp)
	movss	-856(%ebp), %xmm0
	movss	-924(%ebp), %xmm1
	subss	%xmm0, %xmm1
	movl	-736(%ebp), %eax
	movl	%eax, -596(%ebp)
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_32-L12$pb(%eax), %ecx
	movl	-596(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm1, -928(%ebp)
	call	_objc_msgSend_fpret
	fstps	-860(%ebp)
	movss	-860(%ebp), %xmm0
	movl	-736(%ebp), %eax
	movl	%eax, -592(%ebp)
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_33-L12$pb(%eax), %ecx
	movl	-592(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, -932(%ebp)
	call	_objc_msgSend_fpret
	fstps	-864(%ebp)
	movss	-864(%ebp), %xmm0
	movss	-932(%ebp), %xmm1
	subss	%xmm0, %xmm1
	movss	-928(%ebp), %xmm0
	divss	%xmm1, %xmm0
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, (%esp)
	call	_atan
	fstpl	-872(%ebp)
	movsd	-872(%ebp), %xmm0
	movl	-904(%ebp), %eax
	movsd	LCPI12_0-L12$pb(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movss	%xmm0, -768(%ebp)
Ltmp133:
	movl	-16(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%eax), %edx
	addl	%edx, %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -588(%ebp)
	movss	-768(%ebp), %xmm0
	movd	%xmm0, %ecx
	xorl	$2147483648, %ecx
	movd	%ecx, %xmm0
	movl	L_OBJC_SELECTOR_REFERENCES_26-L12$pb(%eax), %ecx
	movl	-588(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, 8(%esp)
	call	_objc_msgSend
	movss	-768(%ebp), %xmm0
	movd	%xmm0, %eax
	xorl	$2147483648, %eax
	movd	%eax, %xmm0
	movss	%xmm0, -584(%ebp)
Ltmp134:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -580(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_13-L12$pb(%ecx), %eax
	movl	-580(%ebp), %edx
	movl	$0, %esi
	cvtsi2ss	%esi, %xmm0
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movss	%xmm0, 8(%esp)
	call	_objc_msgSend
Ltmp135:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.is_touch-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movb	(%eax), %al
	cmpb	$0, %al
	##FP_REG_KILL
	je	LBB12_33
Ltmp136:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -576(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_13-L12$pb(%ecx), %eax
	movl	-576(%ebp), %edx
	movl	$10, %esi
	cvtsi2ss	%esi, %xmm0
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	movss	%xmm0, 8(%esp)
	call	_objc_msgSend
LBB12_33:
	jmp	LBB12_49
Ltmp137:
LBB12_34:
Ltmp138:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -572(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_28-L12$pb(%ecx), %eax
	movl	-572(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-876(%ebp)
	movss	-876(%ebp), %xmm0
	movss	-716(%ebp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -716(%ebp)
Ltmp139:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -568(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_28-L12$pb(%ecx), %eax
	movl	-568(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-880(%ebp)
	movss	-880(%ebp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-904(%ebp), %eax
	movsd	LCPI12_1-L12$pb(%eax), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -168(%ebp)
	movl	-16(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%eax), %edx
	addl	%edx, %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -564(%ebp)
	movsd	-168(%ebp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	L_OBJC_SELECTOR_REFERENCES_13-L12$pb(%eax), %ecx
	movl	-564(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, 8(%esp)
	call	_objc_msgSend
Ltmp140:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -560(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_34-L12$pb(%ecx), %eax
	movl	-560(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-884(%ebp)
	movss	-884(%ebp), %xmm0
	cvtss2sd	%xmm0, %xmm0
	movl	-904(%ebp), %eax
	movsd	LCPI12_2-L12$pb(%eax), %xmm1
	mulsd	%xmm1, %xmm0
	movsd	%xmm0, -160(%ebp)
	movl	-16(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%eax), %edx
	addl	%edx, %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -556(%ebp)
	movsd	-160(%ebp), %xmm0
	cvtsd2ss	%xmm0, %xmm0
	movl	L_OBJC_SELECTOR_REFERENCES_26-L12$pb(%eax), %ecx
	movl	-556(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, 8(%esp)
	call	_objc_msgSend
Ltmp141:
	movss	-712(%ebp), %xmm0
	movss	%xmm0, -772(%ebp)
Ltmp142:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -552(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_29-L12$pb(%ecx), %eax
	movl	-552(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-888(%ebp)
	movss	-888(%ebp), %xmm0
	movss	-712(%ebp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -776(%ebp)
Ltmp143:
	movb	$0, -777(%ebp)
Ltmp144:
	leal	-152(%ebp), %eax
	movl	$0, -152(%ebp)
	movl	$0, -148(%ebp)
	movl	$0, -144(%ebp)
	movl	$0, -140(%ebp)
	movl	$0, -136(%ebp)
	movl	$0, -132(%ebp)
	movl	$0, -128(%ebp)
	movl	$0, -124(%ebp)
	movl	-16(%ebp), %ecx
	movl	-904(%ebp), %edx
	movl	_OBJC_IVAR_$_GameEngineLayer.islands-L12$pb(%edx), %esi
	addl	%esi, %ecx
	movl	(%ecx), %ecx
	movl	%ecx, -548(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_21-L12$pb(%edx), %ecx
	movl	-548(%ebp), %esi
	leal	-116(%ebp), %edi
	movl	%esi, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, 8(%esp)
	movl	%edi, 12(%esp)
	movl	$16, 16(%esp)
	call	_objc_msgSend
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	cmpl	$0, %eax
	##FP_REG_KILL
	je	LBB12_46
	movl	-144(%ebp), %eax
	movl	(%eax), %eax
	movl	%eax, -48(%ebp)
LBB12_36:
	movl	$0, -44(%ebp)
LBB12_37:
	movl	-144(%ebp), %eax
	movl	(%eax), %eax
	movl	-48(%ebp), %ecx
	cmpl	%ecx, %eax
	je	LBB12_39
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.islands-L12$pb(%ecx), %edx
	addl	%edx, %eax
	movl	(%eax), %eax
	movl	%eax, -544(%ebp)
	movl	-544(%ebp), %eax
	movl	%esp, %edx
	movl	%eax, (%edx)
	call	_objc_enumerationMutation
LBB12_39:
	movl	-148(%ebp), %eax
	movl	-44(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -784(%ebp)
	movl	-44(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -44(%ebp)
Ltmp145:
	movl	-904(%ebp), %eax
	movl	L_OBJC_CLASSLIST_REFERENCES_$_8-L12$pb(%eax), %ecx
	movl	%ecx, -540(%ebp)
	movl	-784(%ebp), %ecx
	movl	%ecx, -536(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_30-L12$pb(%eax), %ecx
	movl	-536(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-892(%ebp)
	movss	-892(%ebp), %xmm0
	movl	-784(%ebp), %eax
	movl	%eax, -532(%ebp)
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_32-L12$pb(%eax), %ecx
	movl	-532(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, -936(%ebp)
	call	_objc_msgSend_fpret
	fstps	-896(%ebp)
	movss	-896(%ebp), %xmm0
	movl	%esp, %eax
	movss	-936(%ebp), %xmm1
	movss	%xmm1, 4(%eax)
	movss	%xmm0, (%eax)
	call	_CGPointMake
	leal	-520(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movss	-520(%ebp), %xmm0
	movss	%xmm0, -528(%ebp)
	movss	-516(%ebp), %xmm0
	movss	%xmm0, -524(%ebp)
	movl	-784(%ebp), %eax
	movl	%eax, -512(%ebp)
	movl	-904(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_31-L12$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	call	_objc_msgSend_fpret
	movl	-784(%ebp), %eax
	movl	%eax, -508(%ebp)
	movl	-904(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_33-L12$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	fstpt	-948(%ebp)
	call	_objc_msgSend_fpret
	movl	%esp, %eax
	fldt	-948(%ebp)
	fstps	4(%eax)
	fstps	(%eax)
	call	_CGPointMake
	movl	%edx, -492(%ebp)
	movl	%eax, -496(%ebp)
	movss	-496(%ebp), %xmm0
	movss	%xmm0, -504(%ebp)
	movss	-492(%ebp), %xmm0
	movss	%xmm0, -500(%ebp)
	movss	-776(%ebp), %xmm0
	movss	-716(%ebp), %xmm1
	movl	%esp, %eax
	movss	%xmm1, 4(%eax)
	movss	%xmm0, (%eax)
	call	_CGPointMake
	movl	%edx, -476(%ebp)
	movl	%eax, -480(%ebp)
	movss	-480(%ebp), %xmm0
	movss	%xmm0, -488(%ebp)
	movss	-476(%ebp), %xmm0
	movss	%xmm0, -484(%ebp)
	movss	-772(%ebp), %xmm0
	movss	-716(%ebp), %xmm1
	movl	%esp, %eax
	movss	%xmm1, 4(%eax)
	movss	%xmm0, (%eax)
	call	_CGPointMake
	movl	%edx, -460(%ebp)
	movl	%eax, -464(%ebp)
	movss	-464(%ebp), %xmm0
	movss	%xmm0, -472(%ebp)
	movss	-460(%ebp), %xmm0
	movss	%xmm0, -468(%ebp)
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_27-L12$pb(%eax), %ecx
	movl	-540(%ebp), %edx
	movss	-472(%ebp), %xmm1
	movss	-488(%ebp), %xmm2
	movss	-484(%ebp), %xmm3
	movss	-504(%ebp), %xmm4
	movss	-500(%ebp), %xmm5
	movss	-528(%ebp), %xmm6
	movss	-524(%ebp), %xmm7
	movl	%esp, %esi
	movss	%xmm7, 36(%esi)
	movss	%xmm6, 32(%esi)
	movss	%xmm5, 28(%esi)
	movss	%xmm4, 24(%esi)
	movss	%xmm3, 20(%esi)
	movss	%xmm2, 16(%esi)
	movss	%xmm0, 12(%esi)
	movss	%xmm1, 8(%esi)
	movl	%ecx, 4(%esi)
	movl	%edx, (%esi)
	call	_objc_msgSend
	movl	%edx, -452(%ebp)
	movl	%eax, -456(%ebp)
	movss	-456(%ebp), %xmm0
	movss	%xmm0, -792(%ebp)
	movss	-452(%ebp), %xmm0
	movss	%xmm0, -788(%ebp)
Ltmp146:
	movss	-792(%ebp), %xmm0
	movl	-904(%ebp), %eax
	movss	LCPI12_3-L12$pb(%eax), %xmm1
	ucomiss	%xmm1, %xmm0
	setnp	%cl
	sete	%dl
	testb	%cl, %dl
	##FP_REG_KILL
	jne	LBB12_42
	movss	-788(%ebp), %xmm0
	movl	$4294967295, %eax
	cvtsi2ss	%eax, %xmm1
	ucomiss	%xmm1, %xmm0
	jne	LBB12_41
	jp	LBB12_41
	jmp	LBB12_42
LBB12_41:
Ltmp147:
	movss	-792(%ebp), %xmm0
	movss	%xmm0, -712(%ebp)
Ltmp148:
	movl	-784(%ebp), %eax
	movl	%eax, -444(%ebp)
	movss	-792(%ebp), %xmm0
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_22-L12$pb(%eax), %ecx
	movl	-444(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movss	%xmm0, 8(%esp)
	call	_objc_msgSend_fpret
	fstps	-900(%ebp)
	movss	-900(%ebp), %xmm0
	movss	%xmm0, -716(%ebp)
Ltmp149:
	movb	$1, -777(%ebp)
	##FP_REG_KILL
	jmp	LBB12_45
Ltmp150:
LBB12_42:
Ltmp151:
	movl	-44(%ebp), %eax
	movl	-52(%ebp), %ecx
	cmpl	%ecx, %eax
	jb	LBB12_37
	movl	-904(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_21-L12$pb(%eax), %ecx
	movl	-548(%ebp), %edx
	leal	-116(%ebp), %esi
	leal	-152(%ebp), %edi
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edi, 8(%esp)
	movl	%esi, 12(%esp)
	movl	$16, 16(%esp)
	call	_objc_msgSend
	movl	%eax, -52(%ebp)
	movl	-52(%ebp), %eax
	cmpl	$0, %eax
	jne	LBB12_36
	movl	$0, -784(%ebp)
LBB12_45:
	jmp	LBB12_47
LBB12_46:
	movl	$0, -784(%ebp)
Ltmp152:
LBB12_47:
Ltmp153:
	movb	-777(%ebp), %al
	cmpb	$0, %al
	jne	LBB12_49
Ltmp154:
	movss	-776(%ebp), %xmm0
	movss	%xmm0, -712(%ebp)
Ltmp155:
LBB12_49:
Ltmp156:
	movss	-712(%ebp), %xmm0
	movss	-716(%ebp), %xmm1
	movl	%esp, %eax
	movss	%xmm1, 4(%eax)
	movss	%xmm0, (%eax)
	call	_CGPointMake
	leal	-440(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movss	-440(%ebp), %xmm0
	movss	%xmm0, -40(%ebp)
	movss	-436(%ebp), %xmm0
	movss	%xmm0, -36(%ebp)
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	movl	(%eax,%edx), %eax
	movl	%eax, -432(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_12-L12$pb(%ecx), %edx
	movss	-40(%ebp), %xmm0
	movss	-36(%ebp), %xmm1
	movl	%esp, %esi
	movss	%xmm1, 12(%esi)
	movss	%xmm0, 8(%esi)
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	call	_objc_msgSend
Ltmp157:
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	movl	(%eax,%edx), %eax
	movl	%eax, -428(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_24-L12$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	call	_objc_msgSend
	movl	%edx, -412(%ebp)
	movl	%eax, -416(%ebp)
	movss	-416(%ebp), %xmm0
	movss	%xmm0, -424(%ebp)
	movss	-412(%ebp), %xmm0
	movss	%xmm0, -420(%ebp)
	pxor	%xmm1, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	LBB12_51
	movl	%esp, %eax
Ltmp158:
	movl	$1112014848, 4(%eax)
	movl	$1112014848, (%eax)
	call	_CGPointMake
	leal	-408(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movss	-408(%ebp), %xmm0
	movss	%xmm0, -32(%ebp)
	movss	-404(%ebp), %xmm0
	movss	%xmm0, -28(%ebp)
	movl	-16(%ebp), %eax
	movl	-904(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.player-L12$pb(%ecx), %edx
	movl	(%eax,%edx), %eax
	movl	%eax, -396(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_12-L12$pb(%ecx), %edx
	movss	-32(%ebp), %xmm0
	movss	-28(%ebp), %xmm1
	movl	%esp, %esi
	movss	%xmm1, 12(%esi)
	movss	%xmm0, 8(%esi)
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	call	_objc_msgSend
LBB12_51:
Ltmp159:
	movss	-712(%ebp), %xmm0
	movl	-904(%ebp), %eax
	movss	%xmm0, _cur_pos_x-L12$pb(%eax)
Ltmp160:
	movss	-716(%ebp), %xmm0
	movss	%xmm0, _cur_pos_y-L12$pb(%eax)
Ltmp161:
	addl	$988, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	ret
Ltmp162:
Lfunc_end10:
Leh_func_end12:

	.align	4, 0x90
"-[GameEngineLayer ccTouchesBegan:withEvent:]":
Leh_func_begin13:
Lfunc_begin11:
Ltmp166:
	pushl	%ebp
Ltmp163:
	movl	%esp, %ebp
Ltmp164:
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
Ltmp165:
	call	L13$pb
L13$pb:
	popl	%eax
	movl	20(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	12(%ebp), %esi
	movl	8(%ebp), %edi
	movl	%edi, -12(%ebp)
	movl	%esi, -16(%ebp)
	movl	%edx, -20(%ebp)
	movl	%ecx, -24(%ebp)
Ltmp167:
	movl	-12(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.is_touch-L13$pb(%eax), %eax
	addl	%eax, %ecx
	movb	$1, (%ecx)
Ltmp168:
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
Ltmp169:
Lfunc_end11:
Leh_func_end13:

	.align	4, 0x90
"-[GameEngineLayer ccTouchesMoved:withEvent:]":
Leh_func_begin14:
Lfunc_begin12:
Ltmp173:
	pushl	%ebp
Ltmp170:
	movl	%esp, %ebp
Ltmp171:
	pushl	%esi
	subl	$16, %esp
Ltmp172:
	movl	20(%ebp), %eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %esi
	movl	%esi, -8(%ebp)
	movl	%edx, -12(%ebp)
	movl	%ecx, -16(%ebp)
	movl	%eax, -20(%ebp)
Ltmp174:
	addl	$16, %esp
	popl	%esi
	popl	%ebp
	ret
Ltmp175:
Lfunc_end12:
Leh_func_end14:

	.align	4, 0x90
"-[GameEngineLayer ccTouchesEnded:withEvent:]":
Leh_func_begin15:
Lfunc_begin13:
Ltmp179:
	pushl	%ebp
Ltmp176:
	movl	%esp, %ebp
Ltmp177:
	pushl	%edi
	pushl	%esi
	subl	$16, %esp
Ltmp178:
	call	L15$pb
L15$pb:
	popl	%eax
	movl	20(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	12(%ebp), %esi
	movl	8(%ebp), %edi
	movl	%edi, -12(%ebp)
	movl	%esi, -16(%ebp)
	movl	%edx, -20(%ebp)
	movl	%ecx, -24(%ebp)
Ltmp180:
	movl	-12(%ebp), %ecx
	movl	_OBJC_IVAR_$_GameEngineLayer.is_touch-L15$pb(%eax), %eax
	addl	%eax, %ecx
	movb	$0, (%ecx)
Ltmp181:
	addl	$16, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
Ltmp182:
Lfunc_end13:
Leh_func_end15:

	.align	4, 0x90
"-[GameEngineLayer dealloc]":
Leh_func_begin16:
Lfunc_begin14:
Ltmp186:
	pushl	%ebp
Ltmp183:
	movl	%esp, %ebp
Ltmp184:
	subl	$40, %esp
Ltmp185:
	call	L16$pb
L16$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -4(%ebp)
	movl	%ecx, -8(%ebp)
Ltmp187:
	movl	-4(%ebp), %ecx
	leal	-24(%ebp), %edx
	movl	%ecx, -24(%ebp)
	movl	L_OBJC_CLASSLIST_SUP_REFS_$_5-L16$pb(%eax), %ecx
	movl	%ecx, -20(%ebp)
	movl	%edx, -12(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_35-L16$pb(%eax), %eax
	movl	-12(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	call	_objc_msgSendSuper2
Ltmp188:
	addl	$40, %esp
	popl	%ebp
	ret
Ltmp189:
Lfunc_end14:
Leh_func_end16:

	.align	4, 0x90
"+[GameEngineLayer loadIslands]":
Leh_func_begin17:
Lfunc_begin15:
Ltmp193:
	pushl	%ebp
Ltmp190:
	movl	%esp, %ebp
Ltmp191:
	pushl	%edi
	pushl	%esi
	subl	$224, %esp
Ltmp192:
	call	L17$pb
L17$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -12(%ebp)
	movl	%ecx, -16(%ebp)
Ltmp194:
	movl	L_OBJC_CLASSLIST_REFERENCES_$_9-L17$pb(%eax), %ecx
	movl	%ecx, -124(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_36-L17$pb(%eax), %ecx
	movl	-124(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%eax, -192(%ebp)
	call	_objc_msgSend
	movl	%eax, -120(%ebp)
	movl	-192(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_37-L17$pb(%eax), %ecx
	movl	-120(%ebp), %edx
	leal	L_unnamed_cfstring_1-L17$pb(%eax), %esi
	leal	L_unnamed_cfstring_0-L17$pb(%eax), %edi
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	%edi, 12(%esp)
	call	_objc_msgSend
	movl	%eax, -128(%ebp)
Ltmp195:
	movl	-192(%ebp), %eax
	movl	L_OBJC_CLASSLIST_REFERENCES_$_1-L17$pb(%eax), %ecx
	movl	%ecx, -116(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_38-L17$pb(%eax), %ecx
	movl	-116(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend
	movl	%eax, -112(%ebp)
	movl	-192(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_39-L17$pb(%eax), %ecx
	movl	-112(%ebp), %edx
	movl	-128(%ebp), %esi
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, 8(%esp)
	call	_objc_msgSend
	movl	%eax, -132(%ebp)
Ltmp196:
	movl	-132(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	-192(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_40-L17$pb(%eax), %ecx
	movl	-108(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	$4, 8(%esp)
	call	_objc_msgSend
	movl	%eax, -136(%ebp)
Ltmp197:
	movl	-192(%ebp), %eax
	movl	L_OBJC_CLASSLIST_REFERENCES_$_10-L17$pb(%eax), %ecx
	movl	%ecx, -104(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_41-L17$pb(%eax), %ecx
	movl	-104(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend
	movl	%eax, -100(%ebp)
	movl	-192(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_42-L17$pb(%eax), %ecx
	movl	-100(%ebp), %edx
	movl	-136(%ebp), %esi
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	$0, 12(%esp)
	call	_objc_msgSend
	movl	%eax, -140(%ebp)
Ltmp198:
	movl	-140(%ebp), %eax
	movl	%eax, -96(%ebp)
	movl	-192(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_43-L17$pb(%eax), %ecx
	movl	-96(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend
	movl	%eax, -144(%ebp)
Ltmp199:
	movl	-192(%ebp), %eax
	movl	L_OBJC_CLASSLIST_REFERENCES_$_11-L17$pb(%eax), %ecx
	movl	%ecx, -92(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_38-L17$pb(%eax), %ecx
	movl	-92(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend
	movl	%eax, -88(%ebp)
	movl	-192(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_10-L17$pb(%eax), %ecx
	movl	-88(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend
	movl	%eax, -148(%ebp)
Ltmp200:
	movl	$0, -152(%ebp)
	jmp	LBB17_2
LBB17_1:
Ltmp201:
	movl	-140(%ebp), %eax
	movl	%eax, -84(%ebp)
	movl	-152(%ebp), %eax
	movl	-192(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_44-L17$pb(%ecx), %edx
	movl	-84(%ebp), %esi
	movl	%esi, (%esp)
	movl	%edx, 4(%esp)
	movl	%eax, 8(%esp)
	call	_objc_msgSend
	movl	%eax, -156(%ebp)
Ltmp202:
	movl	-156(%ebp), %eax
	movl	%eax, -80(%ebp)
	movl	-192(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_45-L17$pb(%eax), %ecx
	movl	-80(%ebp), %edx
	leal	L_unnamed_cfstring_2-L17$pb(%eax), %esi
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, 8(%esp)
	call	_objc_msgSend
	movl	%eax, -76(%ebp)
	movl	-192(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_48-L17$pb(%eax), %ecx
	movl	-76(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-184(%ebp)
	movss	-184(%ebp), %xmm0
	movl	-156(%ebp), %eax
	movl	%eax, -72(%ebp)
	movl	-192(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_45-L17$pb(%eax), %ecx
	movl	-72(%ebp), %edx
	leal	L_unnamed_cfstring_3-L17$pb(%eax), %esi
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	movl	%esi, 8(%esp)
	movss	%xmm0, -196(%ebp)
	call	_objc_msgSend
	movl	%eax, -68(%ebp)
	movl	-192(%ebp), %eax
	movl	L_OBJC_SELECTOR_REFERENCES_48-L17$pb(%eax), %ecx
	movl	-68(%ebp), %edx
	movl	%edx, (%esp)
	movl	%ecx, 4(%esp)
	call	_objc_msgSend_fpret
	fstps	-188(%ebp)
	movss	-188(%ebp), %xmm0
	movl	%esp, %eax
	movss	-196(%ebp), %xmm1
	movss	%xmm1, 4(%eax)
	movss	%xmm0, (%eax)
	call	_CGPointMake
	leal	-64(%ebp), %ecx
	movl	%eax, (%ecx)
	movl	%edx, 4(%ecx)
	movss	-64(%ebp), %xmm0
	movss	%xmm0, -168(%ebp)
	movss	-60(%ebp), %xmm0
	movss	%xmm0, -164(%ebp)
Ltmp203:
	movl	-156(%ebp), %eax
	movl	%eax, -56(%ebp)
	movl	-192(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_45-L17$pb(%ecx), %edx
	movl	%esp, %esi
	leal	L_unnamed_cfstring_4-L17$pb(%ecx), %edi
	movl	%edi, 8(%esi)
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	call	_objc_msgSend
	movl	%eax, -52(%ebp)
	movl	-192(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_48-L17$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	call	_objc_msgSend_fpret
	movl	-156(%ebp), %eax
	movl	%eax, -48(%ebp)
	movl	-192(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_45-L17$pb(%ecx), %edx
	movl	%esp, %esi
	leal	L_unnamed_cfstring_5-L17$pb(%ecx), %edi
	movl	%edi, 8(%esi)
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	fstpt	-208(%ebp)
	call	_objc_msgSend
	movl	%eax, -44(%ebp)
	movl	-192(%ebp), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_48-L17$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	call	_objc_msgSend_fpret
	movl	%esp, %eax
	fldt	-208(%ebp)
	fstps	4(%eax)
	fstps	(%eax)
	call	_CGPointMake
	movl	%edx, -36(%ebp)
	movl	%eax, -40(%ebp)
	movss	-40(%ebp), %xmm0
	movss	%xmm0, -176(%ebp)
	movss	-36(%ebp), %xmm0
	movss	%xmm0, -172(%ebp)
Ltmp204:
	movl	-192(%ebp), %eax
	movl	L_OBJC_CLASSLIST_REFERENCES_$_12-L17$pb(%eax), %ecx
	movl	%ecx, -32(%ebp)
	movl	L_OBJC_SELECTOR_REFERENCES_46-L17$pb(%eax), %edx
	movss	-168(%ebp), %xmm0
	movss	-164(%ebp), %xmm1
	movss	-176(%ebp), %xmm2
	movss	-172(%ebp), %xmm3
	movl	%esp, %esi
	movss	%xmm3, 20(%esi)
	movss	%xmm2, 16(%esi)
	movss	%xmm1, 12(%esi)
	movss	%xmm0, 8(%esi)
	movl	%edx, 4(%esi)
	movl	%ecx, (%esi)
	call	_objc_msgSend
	movl	%eax, -180(%ebp)
Ltmp205:
	movl	-148(%ebp), %eax
	movl	%eax, -28(%ebp)
	movl	-180(%ebp), %ecx
	movl	-192(%ebp), %edx
	movl	L_OBJC_SELECTOR_REFERENCES_47-L17$pb(%edx), %esi
	movl	%esp, %edi
	movl	%ecx, 8(%edi)
	movl	%esi, 4(%edi)
	movl	%eax, (%edi)
	call	_objc_msgSend
Ltmp206:
Ltmp207:
	movl	-152(%ebp), %eax
	leal	1(%eax), %eax
	movl	%eax, -152(%ebp)
	##FP_REG_KILL
LBB17_2:
	movl	-152(%ebp), %eax
	movl	-144(%ebp), %ecx
	cmpl	%ecx, %eax
	jl	LBB17_1
Ltmp208:
Ltmp209:
	movl	-148(%ebp), %eax
	movl	%eax, -24(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	addl	$224, %esp
	popl	%esi
	popl	%edi
	popl	%ebp
	ret
Ltmp210:
Lfunc_end15:
Leh_func_end17:

	.section	__TEXT,__const
	.align	3
_ccWHITE:
	.byte	255
	.byte	255
	.byte	255

	.align	3
_ccYELLOW:
	.byte	255
	.byte	255
	.byte	0

	.align	3
_ccBLUE:
	.byte	0
	.byte	0
	.byte	255

	.align	3
_ccGREEN:
	.byte	0
	.byte	255
	.byte	0

	.align	3
_ccRED:
	.byte	255
	.byte	0
	.byte	0

	.align	3
_ccMAGENTA:
	.byte	255
	.byte	0
	.byte	255

	.align	3
_ccBLACK:
	.space	3

	.align	3
_ccORANGE:
	.byte	255
	.byte	127
	.byte	0

	.align	3
_ccGRAY:
	.byte	166
	.byte	166
	.byte	166

.zerofill __DATA,__bss,_cur_pos_x,4,2
.zerofill __DATA,__bss,_cur_pos_y,4,2
	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_2:
	.long	_OBJC_CLASS_$_CCScene

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_8:
	.long	L_OBJC_METH_VAR_NAME_49

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_3:
	.long	_OBJC_CLASS_$_BGLayer

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_9:
	.long	L_OBJC_METH_VAR_NAME_48

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_4:
	.long	_OBJC_CLASS_$_GameEngineLayer

	.section	__DATA,__objc_superrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_SUP_REFS_$_5:
	.long	_OBJC_CLASS_$_GameEngineLayer

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_10:
	.long	L_OBJC_METH_VAR_NAME_14

	.align	2
L_OBJC_SELECTOR_REFERENCES_11:
	.long	L_OBJC_METH_VAR_NAME_13

.private_extern _OBJC_IVAR_$_GameEngineLayer.player
	.section	__DATA,__objc_const
	.globl	_OBJC_IVAR_$_GameEngineLayer.player
	.align	2
_OBJC_IVAR_$_GameEngineLayer.player:
	.long	240

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_6:
	.long	_OBJC_CLASS_$_Player

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_12:
	.long	L_OBJC_METH_VAR_NAME_47

	.align	2
L_OBJC_SELECTOR_REFERENCES_13:
	.long	L_OBJC_METH_VAR_NAME_46

	.align	2
L_OBJC_SELECTOR_REFERENCES_14:
	.long	L_OBJC_METH_VAR_NAME_45

	.align	2
L_OBJC_SELECTOR_REFERENCES_15:
	.long	L_OBJC_METH_VAR_NAME_11

	.align	2
L_OBJC_SELECTOR_REFERENCES_16:
	.long	L_OBJC_METH_VAR_NAME_44

	.align	2
L_OBJC_SELECTOR_REFERENCES_17:
	.long	L_OBJC_METH_VAR_NAME_43

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_7:
	.long	_OBJC_CLASS_$_CCFollow

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_18:
	.long	L_OBJC_METH_VAR_NAME_42

	.align	2
L_OBJC_SELECTOR_REFERENCES_19:
	.long	L_OBJC_METH_VAR_NAME_41

.private_extern _OBJC_IVAR_$_GameEngineLayer.islands
	.section	__DATA,__objc_const
	.globl	_OBJC_IVAR_$_GameEngineLayer.islands
	.align	2
_OBJC_IVAR_$_GameEngineLayer.islands:
	.long	236

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_20:
	.long	L_OBJC_METH_VAR_NAME_3

	.align	2
L_OBJC_SELECTOR_REFERENCES_21:
	.long	L_OBJC_METH_VAR_NAME_40

	.section	__DATA,__data
	.align	4
___block_descriptor_tmp_1.203:
	.long	0
	.long	24
	.long	___copy_helper_block_1
	.long	___destroy_helper_block_1
	.long	0
	.long	0

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_23:
	.long	L_OBJC_METH_VAR_NAME_38

	.align	2
L_OBJC_SELECTOR_REFERENCES_24:
	.long	L_OBJC_METH_VAR_NAME_37

	.align	2
L_OBJC_SELECTOR_REFERENCES_22:
	.long	L_OBJC_METH_VAR_NAME_39

	.align	2
L_OBJC_SELECTOR_REFERENCES_25:
	.long	L_OBJC_METH_VAR_NAME_12

	.align	2
L_OBJC_SELECTOR_REFERENCES_28:
	.long	L_OBJC_METH_VAR_NAME_34

	.align	2
L_OBJC_SELECTOR_REFERENCES_29:
	.long	L_OBJC_METH_VAR_NAME_33

	.align	2
L_OBJC_SELECTOR_REFERENCES_30:
	.long	L_OBJC_METH_VAR_NAME_32

	.align	2
L_OBJC_SELECTOR_REFERENCES_31:
	.long	L_OBJC_METH_VAR_NAME_31

	.align	2
L_OBJC_SELECTOR_REFERENCES_32:
	.long	L_OBJC_METH_VAR_NAME_30

	.align	2
L_OBJC_SELECTOR_REFERENCES_33:
	.long	L_OBJC_METH_VAR_NAME_29

	.align	2
L_OBJC_SELECTOR_REFERENCES_26:
	.long	L_OBJC_METH_VAR_NAME_36

.private_extern _OBJC_IVAR_$_GameEngineLayer.is_touch
	.section	__DATA,__objc_const
	.globl	_OBJC_IVAR_$_GameEngineLayer.is_touch
	.align	2
_OBJC_IVAR_$_GameEngineLayer.is_touch:
	.long	244

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_34:
	.long	L_OBJC_METH_VAR_NAME_28

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_8:
	.long	_OBJC_CLASS_$_Common

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_27:
	.long	L_OBJC_METH_VAR_NAME_35

	.align	2
L_OBJC_SELECTOR_REFERENCES_35:
	.long	L_OBJC_METH_VAR_NAME_7

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_9:
	.long	_OBJC_CLASS_$_NSBundle

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_36:
	.long	L_OBJC_METH_VAR_NAME_27

	.section	__DATA,__cfstring
	.align	2
L_unnamed_cfstring_0:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	L_.str
	.long	3

	.section	__TEXT,__cstring,cstring_literals
L_.str:
	.asciz	 "map"

	.section	__DATA,__cfstring
	.align	2
L_unnamed_cfstring_1:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	L_.str1
	.long	7

	.section	__TEXT,__cstring,cstring_literals
L_.str1:
	.asciz	 "island1"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_37:
	.long	L_OBJC_METH_VAR_NAME_26

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_1:
	.long	_OBJC_CLASS_$_NSString

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_38:
	.long	L_OBJC_METH_VAR_NAME_25

	.align	2
L_OBJC_SELECTOR_REFERENCES_39:
	.long	L_OBJC_METH_VAR_NAME_24

	.align	2
L_OBJC_SELECTOR_REFERENCES_40:
	.long	L_OBJC_METH_VAR_NAME_23

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_10:
	.long	_OBJC_CLASS_$_CJSONDeserializer

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_41:
	.long	L_OBJC_METH_VAR_NAME_22

	.align	2
L_OBJC_SELECTOR_REFERENCES_42:
	.long	L_OBJC_METH_VAR_NAME_21

	.align	2
L_OBJC_SELECTOR_REFERENCES_43:
	.long	L_OBJC_METH_VAR_NAME_20

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_11:
	.long	_OBJC_CLASS_$_NSMutableArray

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_44:
	.long	L_OBJC_METH_VAR_NAME_19

	.section	__DATA,__cfstring
	.align	2
L_unnamed_cfstring_2:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	L_.str2
	.long	2

	.section	__TEXT,__cstring,cstring_literals
L_.str2:
	.asciz	 "y1"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_45:
	.long	L_OBJC_METH_VAR_NAME_18

	.align	2
L_OBJC_SELECTOR_REFERENCES_48:
	.long	L_OBJC_METH_VAR_NAME_15

	.section	__DATA,__cfstring
	.align	2
L_unnamed_cfstring_3:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	L_.str3
	.long	2

	.section	__TEXT,__cstring,cstring_literals
L_.str3:
	.asciz	 "x1"

	.section	__DATA,__cfstring
	.align	2
L_unnamed_cfstring_4:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	L_.str4
	.long	2

	.section	__TEXT,__cstring,cstring_literals
L_.str4:
	.asciz	 "y2"

	.section	__DATA,__cfstring
	.align	2
L_unnamed_cfstring_5:
	.long	___CFConstantStringClassReference
	.long	1992
	.long	L_.str5
	.long	2

	.section	__TEXT,__cstring,cstring_literals
L_.str5:
	.asciz	 "x2"

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_12:
	.long	_OBJC_CLASS_$_Line_Island

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_46:
	.long	L_OBJC_METH_VAR_NAME_17

	.align	2
L_OBJC_SELECTOR_REFERENCES_47:
	.long	L_OBJC_METH_VAR_NAME_16

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_0:
	.asciz	 "islands"

L_OBJC_METH_VAR_TYPE_0:
	.asciz	 "@\"NSMutableArray\""

L_OBJC_METH_VAR_NAME_1:
	.asciz	 "player"

L_OBJC_METH_VAR_TYPE_1:
	.asciz	 "@\"Player\""

L_OBJC_METH_VAR_NAME_2:
	.asciz	 "is_touch"

L_OBJC_METH_VAR_TYPE_2:
	.asciz	 "c"

	.section	__DATA,__objc_const
	.align	2
l_OBJC_$_INSTANCE_VARIABLES_GameEngineLayer:
	.long	20
	.long	3
	.long	_OBJC_IVAR_$_GameEngineLayer.islands
	.long	L_OBJC_METH_VAR_NAME_0
	.long	L_OBJC_METH_VAR_TYPE_0
	.long	2
	.long	4
	.long	_OBJC_IVAR_$_GameEngineLayer.player
	.long	L_OBJC_METH_VAR_NAME_1
	.long	L_OBJC_METH_VAR_TYPE_1
	.long	2
	.long	4
	.long	_OBJC_IVAR_$_GameEngineLayer.is_touch
	.long	L_OBJC_METH_VAR_NAME_2
	.long	L_OBJC_METH_VAR_TYPE_2
	.long	0
	.long	1

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_3:
	.asciz	 "loadIslands"

L_OBJC_METH_VAR_TYPE_3:
	.asciz	 "@8@0:4"

L_OBJC_METH_VAR_NAME_4:
	.asciz	 "scene"

L_OBJC_METH_VAR_NAME_5:
	.asciz	 "get_cur_pos_y"

L_OBJC_METH_VAR_TYPE_4:
	.asciz	 "f8@0:4"

L_OBJC_METH_VAR_NAME_6:
	.asciz	 "get_cur_pos_x"

	.section	__DATA,__objc_const
	.align	2
l_OBJC_$_CLASS_METHODS_GameEngineLayer:
	.long	12
	.long	4
	.long	L_OBJC_METH_VAR_NAME_3
	.long	L_OBJC_METH_VAR_TYPE_3
	.long	"+[GameEngineLayer loadIslands]"
	.long	L_OBJC_METH_VAR_NAME_4
	.long	L_OBJC_METH_VAR_TYPE_3
	.long	"+[GameEngineLayer scene]"
	.long	L_OBJC_METH_VAR_NAME_5
	.long	L_OBJC_METH_VAR_TYPE_4
	.long	"+[GameEngineLayer get_cur_pos_y]"
	.long	L_OBJC_METH_VAR_NAME_6
	.long	L_OBJC_METH_VAR_TYPE_4
	.long	"+[GameEngineLayer get_cur_pos_x]"

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_7:
	.asciz	 "dealloc"

L_OBJC_METH_VAR_TYPE_5:
	.asciz	 "v8@0:4"

L_OBJC_METH_VAR_NAME_8:
	.asciz	 "ccTouchesEnded:withEvent:"

L_OBJC_METH_VAR_TYPE_6:
	.asciz	 "v16@0:4@8@12"

L_OBJC_METH_VAR_NAME_9:
	.asciz	 "ccTouchesMoved:withEvent:"

L_OBJC_METH_VAR_NAME_10:
	.asciz	 "ccTouchesBegan:withEvent:"

L_OBJC_METH_VAR_NAME_11:
	.asciz	 "update:"

L_OBJC_METH_VAR_TYPE_7:
	.asciz	 "v12@0:4f8"

L_OBJC_METH_VAR_NAME_12:
	.asciz	 "sort_islands"

L_OBJC_METH_VAR_NAME_13:
	.asciz	 "loadMap"

L_OBJC_METH_VAR_NAME_14:
	.asciz	 "init"

	.section	__DATA,__objc_const
	.align	2
l_OBJC_$_INSTANCE_METHODS_GameEngineLayer:
	.long	12
	.long	8
	.long	L_OBJC_METH_VAR_NAME_7
	.long	L_OBJC_METH_VAR_TYPE_5
	.long	"-[GameEngineLayer dealloc]"
	.long	L_OBJC_METH_VAR_NAME_8
	.long	L_OBJC_METH_VAR_TYPE_6
	.long	"-[GameEngineLayer ccTouchesEnded:withEvent:]"
	.long	L_OBJC_METH_VAR_NAME_9
	.long	L_OBJC_METH_VAR_TYPE_6
	.long	"-[GameEngineLayer ccTouchesMoved:withEvent:]"
	.long	L_OBJC_METH_VAR_NAME_10
	.long	L_OBJC_METH_VAR_TYPE_6
	.long	"-[GameEngineLayer ccTouchesBegan:withEvent:]"
	.long	L_OBJC_METH_VAR_NAME_11
	.long	L_OBJC_METH_VAR_TYPE_7
	.long	"-[GameEngineLayer update:]"
	.long	L_OBJC_METH_VAR_NAME_12
	.long	L_OBJC_METH_VAR_TYPE_5
	.long	"-[GameEngineLayer sort_islands]"
	.long	L_OBJC_METH_VAR_NAME_13
	.long	L_OBJC_METH_VAR_TYPE_5
	.long	"-[GameEngineLayer loadMap]"
	.long	L_OBJC_METH_VAR_NAME_14
	.long	L_OBJC_METH_VAR_TYPE_3
	.long	"-[GameEngineLayer init]"

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_CLASS_NAME_0:
	.asciz	 "GameEngineLayer"

	.section	__DATA,__objc_const
	.align	2
l_OBJC_METACLASS_RO_$_GameEngineLayer:
	.long	1
	.long	20
	.long	20
	.long	0
	.long	L_OBJC_CLASS_NAME_0
	.long	l_OBJC_$_CLASS_METHODS_GameEngineLayer
	.long	0
	.long	0
	.long	0
	.long	0

.private_extern _OBJC_METACLASS_$_GameEngineLayer
	.section	__DATA,__objc_data
	.globl	_OBJC_METACLASS_$_GameEngineLayer
	.align	2
_OBJC_METACLASS_$_GameEngineLayer:
	.long	_OBJC_METACLASS_$_NSObject
	.long	_OBJC_METACLASS_$_CCLayer
	.long	__objc_empty_cache
	.long	__objc_empty_vtable
	.long	l_OBJC_METACLASS_RO_$_GameEngineLayer

	.section	__DATA,__objc_const
	.align	2
l_OBJC_CLASS_RO_$_GameEngineLayer:
	.long	0
	.long	236
	.long	245
	.long	0
	.long	L_OBJC_CLASS_NAME_0
	.long	l_OBJC_$_INSTANCE_METHODS_GameEngineLayer
	.long	0
	.long	l_OBJC_$_INSTANCE_VARIABLES_GameEngineLayer
	.long	0
	.long	0

.private_extern _OBJC_CLASS_$_GameEngineLayer
	.section	__DATA,__objc_data
	.globl	_OBJC_CLASS_$_GameEngineLayer
	.align	2
_OBJC_CLASS_$_GameEngineLayer:
	.long	_OBJC_METACLASS_$_GameEngineLayer
	.long	_OBJC_CLASS_$_CCLayer
	.long	__objc_empty_cache
	.long	__objc_empty_vtable
	.long	l_OBJC_CLASS_RO_$_GameEngineLayer

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_15:
	.asciz	 "floatValue"

L_OBJC_METH_VAR_NAME_16:
	.asciz	 "addObject:"

L_OBJC_METH_VAR_NAME_17:
	.asciz	 "init_pt1:pt2:"

L_OBJC_METH_VAR_NAME_18:
	.asciz	 "objectForKey:"

L_OBJC_METH_VAR_NAME_19:
	.asciz	 "objectAtIndex:"

L_OBJC_METH_VAR_NAME_20:
	.asciz	 "count"

L_OBJC_METH_VAR_NAME_21:
	.asciz	 "deserializeAsArray:error:"

L_OBJC_METH_VAR_NAME_22:
	.asciz	 "deserializer"

L_OBJC_METH_VAR_NAME_23:
	.asciz	 "dataUsingEncoding:"

L_OBJC_METH_VAR_NAME_24:
	.asciz	 "initWithContentsOfFile:"

L_OBJC_METH_VAR_NAME_25:
	.asciz	 "alloc"

L_OBJC_METH_VAR_NAME_26:
	.asciz	 "pathForResource:ofType:"

L_OBJC_METH_VAR_NAME_27:
	.asciz	 "mainBundle"

L_OBJC_METH_VAR_NAME_28:
	.asciz	 "rotation"

L_OBJC_METH_VAR_NAME_29:
	.asciz	 "startX"

L_OBJC_METH_VAR_NAME_30:
	.asciz	 "endX"

L_OBJC_METH_VAR_NAME_31:
	.asciz	 "startY"

L_OBJC_METH_VAR_NAME_32:
	.asciz	 "endY"

L_OBJC_METH_VAR_NAME_33:
	.asciz	 "vx"

L_OBJC_METH_VAR_NAME_34:
	.asciz	 "vy"

L_OBJC_METH_VAR_NAME_35:
	.asciz	 "line_seg_intersection_a1:a2:b1:b2:"

L_OBJC_METH_VAR_NAME_36:
	.asciz	 "setRotation:"

L_OBJC_METH_VAR_NAME_37:
	.asciz	 "position"

L_OBJC_METH_VAR_NAME_38:
	.asciz	 "sortUsingComparator:"

L_OBJC_METH_VAR_NAME_39:
	.asciz	 "get_height:"

L_OBJC_METH_VAR_NAME_40:
	.asciz	 "countByEnumeratingWithState:objects:count:"

L_OBJC_METH_VAR_NAME_41:
	.asciz	 "runAction:"

L_OBJC_METH_VAR_NAME_42:
	.asciz	 "actionWithTarget:worldBoundary:"

L_OBJC_METH_VAR_NAME_43:
	.asciz	 "setIsTouchEnabled:"

L_OBJC_METH_VAR_NAME_44:
	.asciz	 "schedule:"

L_OBJC_METH_VAR_NAME_45:
	.asciz	 "setVx:"

L_OBJC_METH_VAR_NAME_46:
	.asciz	 "setVy:"

L_OBJC_METH_VAR_NAME_47:
	.asciz	 "setPosition:"

L_OBJC_METH_VAR_NAME_48:
	.asciz	 "addChild:"

L_OBJC_METH_VAR_NAME_49:
	.asciz	 "node"

L_OBJC_METH_VAR_NAME_50:
	.asciz	 "isEqual:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_7:
	.long	L_OBJC_METH_VAR_NAME_50

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_51:
	.asciz	 "performSelector:withObject:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_6:
	.long	L_OBJC_METH_VAR_NAME_51

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_52:
	.asciz	 "performSelector:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_5:
	.long	L_OBJC_METH_VAR_NAME_52

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_53:
	.asciz	 "release"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_4:
	.long	L_OBJC_METH_VAR_NAME_53

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_54:
	.asciz	 "retain"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_3:
	.long	L_OBJC_METH_VAR_NAME_54

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_55:
	.asciz	 "handleFailureInFunction:file:lineNumber:description:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_2:
	.long	L_OBJC_METH_VAR_NAME_55

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_56:
	.asciz	 "stringWithUTF8String:"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_1:
	.long	L_OBJC_METH_VAR_NAME_56

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_57:
	.asciz	 "currentHandler"

	.section	__DATA,__objc_selrefs,literal_pointers,no_dead_strip
	.align	2
L_OBJC_SELECTOR_REFERENCES_0:
	.long	L_OBJC_METH_VAR_NAME_57

	.section	__DATA,__objc_classrefs,regular,no_dead_strip
	.align	2
L_OBJC_CLASSLIST_REFERENCES_$_0:
	.long	_OBJC_CLASS_$_NSAssertionHandler

	.section	__DATA,__objc_classlist,regular,no_dead_strip
	.align	2
L_OBJC_LABEL_CLASS_$:
	.long	_OBJC_CLASS_$_GameEngineLayer

	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
	.align	2
L_OBJC_IMAGE_INFO:
	.long	0
	.long	16

	.section	__TEXT,__eh_frame,coalesced,no_toc+strip_static_syms+live_support
EH_frame0:
Lsection_eh_frame:
Leh_frame_common:
Lset0 = Leh_frame_common_end-Leh_frame_common_begin
	.long	Lset0
Leh_frame_common_begin:
	.long	0
	.byte	1
	.asciz	 "zR"
	.byte	1
	.byte	124
	.byte	8
	.byte	1
	.byte	16
	.byte	12
	.byte	5
	.byte	4
	.byte	136
	.byte	1
	.align	2
Leh_frame_common_end:
"+[GameEngineLayer get_cur_pos_x].eh" = 0
.no_dead_strip "+[GameEngineLayer get_cur_pos_x].eh"

"+[GameEngineLayer get_cur_pos_y].eh" = 0
.no_dead_strip "+[GameEngineLayer get_cur_pos_y].eh"

"+[GameEngineLayer scene].eh":
Lset1 = Leh_frame_end3-Leh_frame_begin3
	.long	Lset1
Leh_frame_begin3:
Lset2 = Leh_frame_begin3-Leh_frame_common
	.long	Lset2
Ltmp211:
	.long	Leh_func_begin3-Ltmp211
Lset3 = Leh_func_end3-Leh_func_begin3
	.long	Lset3
	.byte	0
	.byte	4
Lset4 = Ltmp12-Leh_func_begin3
	.long	Lset4
	.byte	14
	.byte	8
	.byte	132
	.byte	2
	.byte	4
Lset5 = Ltmp13-Ltmp12
	.long	Lset5
	.byte	13
	.byte	4
	.byte	4
Lset6 = Ltmp14-Ltmp13
	.long	Lset6
	.byte	134
	.byte	3
	.align	2
Leh_frame_end3:

"-[GameEngineLayer init].eh":
Lset7 = Leh_frame_end4-Leh_frame_begin4
	.long	Lset7
Leh_frame_begin4:
Lset8 = Leh_frame_begin4-Leh_frame_common
	.long	Lset8
Ltmp212:
	.long	Leh_func_begin4-Ltmp212
Lset9 = Leh_func_end4-Leh_func_begin4
	.long	Lset9
	.byte	0
	.byte	4
Lset10 = Ltmp23-Leh_func_begin4
	.long	Lset10
	.byte	14
	.byte	8
	.byte	132
	.byte	2
	.byte	4
Lset11 = Ltmp24-Ltmp23
	.long	Lset11
	.byte	13
	.byte	4
	.byte	4
Lset12 = Ltmp25-Ltmp24
	.long	Lset12
	.byte	134
	.byte	4
	.byte	135
	.byte	3
	.align	2
Leh_frame_end4:

_CGPointMake.eh = 0
.no_dead_strip _CGPointMake.eh

_CGRectMake.eh = 0
.no_dead_strip _CGRectMake.eh

"-[GameEngineLayer loadMap].eh":
Lset13 = Leh_frame_end7-Leh_frame_begin7
	.long	Lset13
Leh_frame_begin7:
Lset14 = Leh_frame_begin7-Leh_frame_common
	.long	Lset14
Ltmp213:
	.long	Leh_func_begin7-Ltmp213
Lset15 = Leh_func_end7-Leh_func_begin7
	.long	Lset15
	.byte	0
	.byte	4
Lset16 = Ltmp54-Leh_func_begin7
	.long	Lset16
	.byte	14
	.byte	8
	.byte	132
	.byte	2
	.byte	4
Lset17 = Ltmp55-Ltmp54
	.long	Lset17
	.byte	13
	.byte	4
	.byte	4
Lset18 = Ltmp56-Ltmp55
	.long	Lset18
	.byte	134
	.byte	4
	.byte	135
	.byte	3
	.align	2
Leh_frame_end7:

___copy_helper_block_1.eh:
Lset19 = Leh_frame_end8-Leh_frame_begin8
	.long	Lset19
Leh_frame_begin8:
Lset20 = Leh_frame_begin8-Leh_frame_common
	.long	Lset20
Ltmp214:
	.long	Leh_func_begin8-Ltmp214
Lset21 = Leh_func_end8-Leh_func_begin8
	.long	Lset21
	.byte	0
	.byte	4
Lset22 = Ltmp64-Leh_func_begin8
	.long	Lset22
	.byte	14
	.byte	8
	.byte	132
	.byte	2
	.byte	4
Lset23 = Ltmp65-Ltmp64
	.long	Lset23
	.byte	13
	.byte	4
	.align	2
Leh_frame_end8:

___destroy_helper_block_1.eh:
Lset24 = Leh_frame_end9-Leh_frame_begin9
	.long	Lset24
Leh_frame_begin9:
Lset25 = Leh_frame_begin9-Leh_frame_common
	.long	Lset25
Ltmp215:
	.long	Leh_func_begin9-Ltmp215
Lset26 = Leh_func_end9-Leh_func_begin9
	.long	Lset26
	.byte	0
	.byte	4
Lset27 = Ltmp67-Leh_func_begin9
	.long	Lset27
	.byte	14
	.byte	8
	.byte	132
	.byte	2
	.byte	4
Lset28 = Ltmp68-Ltmp67
	.long	Lset28
	.byte	13
	.byte	4
	.align	2
Leh_frame_end9:

"-[GameEngineLayer sort_islands].eh":
Lset29 = Leh_frame_end10-Leh_frame_begin10
	.long	Lset29
Leh_frame_begin10:
Lset30 = Leh_frame_begin10-Leh_frame_common
	.long	Lset30
Ltmp216:
	.long	Leh_func_begin10-Ltmp216
Lset31 = Leh_func_end10-Leh_func_begin10
	.long	Lset31
	.byte	0
	.byte	4
Lset32 = Ltmp70-Leh_func_begin10
	.long	Lset32
	.byte	14
	.byte	8
	.byte	132
	.byte	2
	.byte	4
Lset33 = Ltmp71-Ltmp70
	.long	Lset33
	.byte	13
	.byte	4
	.byte	4
Lset34 = Ltmp72-Ltmp71
	.long	Lset34
	.byte	134
	.byte	3
	.align	2
Leh_frame_end10:

"___-[GameEngineLayer sort_islands]_block_invoke_1.eh":
Lset35 = Leh_frame_end11-Leh_frame_begin11
	.long	Lset35
Leh_frame_begin11:
Lset36 = Leh_frame_begin11-Leh_frame_common
	.long	Lset36
Ltmp217:
	.long	Leh_func_begin11-Ltmp217
Lset37 = Leh_func_end11-Leh_func_begin11
	.long	Lset37
	.byte	0
	.byte	4
Lset38 = Ltmp78-Leh_func_begin11
	.long	Lset38
	.byte	14
	.byte	8
	.byte	132
	.byte	2
	.byte	4
Lset39 = Ltmp79-Ltmp78
	.long	Lset39
	.byte	13
	.byte	4
	.byte	4
Lset40 = Ltmp80-Ltmp79
	.long	Lset40
	.byte	134
	.byte	3
	.align	2
Leh_frame_end11:

"-[GameEngineLayer update:].eh":
Lset41 = Leh_frame_end12-Leh_frame_begin12
	.long	Lset41
Leh_frame_begin12:
Lset42 = Leh_frame_begin12-Leh_frame_common
	.long	Lset42
Ltmp218:
	.long	Leh_func_begin12-Ltmp218
Lset43 = Leh_func_end12-Leh_func_begin12
	.long	Lset43
	.byte	0
	.byte	4
Lset44 = Ltmp94-Leh_func_begin12
	.long	Lset44
	.byte	14
	.byte	8
	.byte	132
	.byte	2
	.byte	4
Lset45 = Ltmp95-Ltmp94
	.long	Lset45
	.byte	13
	.byte	4
	.byte	4
Lset46 = Ltmp96-Ltmp95
	.long	Lset46
	.byte	134
	.byte	5
	.byte	135
	.byte	4
	.byte	131
	.byte	3
	.align	2
Leh_frame_end12:

"-[GameEngineLayer ccTouchesBegan:withEvent:].eh" = 0
.no_dead_strip "-[GameEngineLayer ccTouchesBegan:withEvent:].eh"

"-[GameEngineLayer ccTouchesMoved:withEvent:].eh" = 0
.no_dead_strip "-[GameEngineLayer ccTouchesMoved:withEvent:].eh"

"-[GameEngineLayer ccTouchesEnded:withEvent:].eh" = 0
.no_dead_strip "-[GameEngineLayer ccTouchesEnded:withEvent:].eh"

"-[GameEngineLayer dealloc].eh":
Lset47 = Leh_frame_end16-Leh_frame_begin16
	.long	Lset47
Leh_frame_begin16:
Lset48 = Leh_frame_begin16-Leh_frame_common
	.long	Lset48
Ltmp219:
	.long	Leh_func_begin16-Ltmp219
Lset49 = Leh_func_end16-Leh_func_begin16
	.long	Lset49
	.byte	0
	.byte	4
Lset50 = Ltmp183-Leh_func_begin16
	.long	Lset50
	.byte	14
	.byte	8
	.byte	132
	.byte	2
	.byte	4
Lset51 = Ltmp184-Ltmp183
	.long	Lset51
	.byte	13
	.byte	4
	.align	2
Leh_frame_end16:

"+[GameEngineLayer loadIslands].eh":
Lset52 = Leh_frame_end17-Leh_frame_begin17
	.long	Lset52
Leh_frame_begin17:
Lset53 = Leh_frame_begin17-Leh_frame_common
	.long	Lset53
Ltmp220:
	.long	Leh_func_begin17-Ltmp220
Lset54 = Leh_func_end17-Leh_func_begin17
	.long	Lset54
	.byte	0
	.byte	4
Lset55 = Ltmp190-Leh_func_begin17
	.long	Lset55
	.byte	14
	.byte	8
	.byte	132
	.byte	2
	.byte	4
Lset56 = Ltmp191-Ltmp190
	.long	Lset56
	.byte	13
	.byte	4
	.byte	4
Lset57 = Ltmp192-Ltmp191
	.long	Lset57
	.byte	134
	.byte	4
	.byte	135
	.byte	3
	.align	2
Leh_frame_end17:

	.section	__TEXT,__text,regular,pure_instructions
Ltext_end:
	.section	__DATA,__data
Ldata_end:
	.section	__TEXT,__text,regular,pure_instructions
Lsection_end1:
	.section	__DWARF,__debug_frame,regular,debug
Ldebug_frame_common:
Lset58 = Ldebug_frame_common_end-Ldebug_frame_common_begin
	.long	Lset58
Ldebug_frame_common_begin:
	.long	4294967295
	.byte	1
	.byte	0
	.byte	1
	.byte	124
	.byte	8
	.byte	12
	.byte	4
	.byte	4
	.byte	136
	.byte	1
	.align	2
Ldebug_frame_common_end:
Lset59 = Ldebug_frame_end1-Ldebug_frame_begin1
	.long	Lset59
Ldebug_frame_begin1:
Lset60 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset60
	.long	Lfunc_begin1
Lset61 = Lfunc_end1-Lfunc_begin1
	.long	Lset61
	.byte	4
Lset62 = Ltmp0-Lfunc_begin1
	.long	Lset62
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset63 = Ltmp1-Ltmp0
	.long	Lset63
	.byte	13
	.byte	5
	.align	2
Ldebug_frame_end1:
Lset64 = Ldebug_frame_end2-Ldebug_frame_begin2
	.long	Lset64
Ldebug_frame_begin2:
Lset65 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset65
	.long	Lfunc_begin2
Lset66 = Lfunc_end2-Lfunc_begin2
	.long	Lset66
	.byte	4
Lset67 = Ltmp6-Lfunc_begin2
	.long	Lset67
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset68 = Ltmp7-Ltmp6
	.long	Lset68
	.byte	13
	.byte	5
	.align	2
Ldebug_frame_end2:
Lset69 = Ldebug_frame_end3-Ldebug_frame_begin3
	.long	Lset69
Ldebug_frame_begin3:
Lset70 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset70
	.long	Lfunc_begin3
Lset71 = Lfunc_end3-Lfunc_begin3
	.long	Lset71
	.byte	4
Lset72 = Ltmp12-Lfunc_begin3
	.long	Lset72
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset73 = Ltmp13-Ltmp12
	.long	Lset73
	.byte	13
	.byte	5
	.byte	4
Lset74 = Ltmp14-Ltmp13
	.long	Lset74
	.byte	134
	.byte	3
	.align	2
Ldebug_frame_end3:
Lset75 = Ldebug_frame_end4-Ldebug_frame_begin4
	.long	Lset75
Ldebug_frame_begin4:
Lset76 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset76
	.long	Lfunc_begin4
Lset77 = Lfunc_end4-Lfunc_begin4
	.long	Lset77
	.byte	4
Lset78 = Ltmp23-Lfunc_begin4
	.long	Lset78
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset79 = Ltmp24-Ltmp23
	.long	Lset79
	.byte	13
	.byte	5
	.byte	4
Lset80 = Ltmp25-Ltmp24
	.long	Lset80
	.byte	134
	.byte	4
	.byte	135
	.byte	3
	.align	2
Ldebug_frame_end4:
Lset81 = Ldebug_frame_end5-Ldebug_frame_begin5
	.long	Lset81
Ldebug_frame_begin5:
Lset82 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset82
	.long	Lfunc_begin5
Lset83 = Lfunc_end5-Lfunc_begin5
	.long	Lset83
	.byte	4
Lset84 = Ltmp40-Lfunc_begin5
	.long	Lset84
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset85 = Ltmp41-Ltmp40
	.long	Lset85
	.byte	13
	.byte	5
	.align	2
Ldebug_frame_end5:
Lset86 = Ldebug_frame_end6-Ldebug_frame_begin6
	.long	Lset86
Ldebug_frame_begin6:
Lset87 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset87
	.long	Lfunc_begin6
Lset88 = Lfunc_end6-Lfunc_begin6
	.long	Lset88
	.byte	4
Lset89 = Ltmp46-Lfunc_begin6
	.long	Lset89
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset90 = Ltmp47-Ltmp46
	.long	Lset90
	.byte	13
	.byte	5
	.align	2
Ldebug_frame_end6:
Lset91 = Ldebug_frame_end7-Ldebug_frame_begin7
	.long	Lset91
Ldebug_frame_begin7:
Lset92 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset92
	.long	Lfunc_begin7
Lset93 = Lfunc_end7-Lfunc_begin7
	.long	Lset93
	.byte	4
Lset94 = Ltmp54-Lfunc_begin7
	.long	Lset94
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset95 = Ltmp55-Ltmp54
	.long	Lset95
	.byte	13
	.byte	5
	.byte	4
Lset96 = Ltmp56-Ltmp55
	.long	Lset96
	.byte	134
	.byte	4
	.byte	135
	.byte	3
	.align	2
Ldebug_frame_end7:
Lset97 = Ldebug_frame_end8-Ldebug_frame_begin8
	.long	Lset97
Ldebug_frame_begin8:
Lset98 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset98
	.long	Lfunc_begin8
Lset99 = Lfunc_end8-Lfunc_begin8
	.long	Lset99
	.byte	4
Lset100 = Ltmp70-Lfunc_begin8
	.long	Lset100
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset101 = Ltmp71-Ltmp70
	.long	Lset101
	.byte	13
	.byte	5
	.byte	4
Lset102 = Ltmp72-Ltmp71
	.long	Lset102
	.byte	134
	.byte	3
	.align	2
Ldebug_frame_end8:
Lset103 = Ldebug_frame_end9-Ldebug_frame_begin9
	.long	Lset103
Ldebug_frame_begin9:
Lset104 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset104
	.long	Lfunc_begin9
Lset105 = Lfunc_end9-Lfunc_begin9
	.long	Lset105
	.byte	4
Lset106 = Ltmp78-Lfunc_begin9
	.long	Lset106
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset107 = Ltmp79-Ltmp78
	.long	Lset107
	.byte	13
	.byte	5
	.byte	4
Lset108 = Ltmp80-Ltmp79
	.long	Lset108
	.byte	134
	.byte	3
	.align	2
Ldebug_frame_end9:
Lset109 = Ldebug_frame_end10-Ldebug_frame_begin10
	.long	Lset109
Ldebug_frame_begin10:
Lset110 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset110
	.long	Lfunc_begin10
Lset111 = Lfunc_end10-Lfunc_begin10
	.long	Lset111
	.byte	4
Lset112 = Ltmp94-Lfunc_begin10
	.long	Lset112
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset113 = Ltmp95-Ltmp94
	.long	Lset113
	.byte	13
	.byte	5
	.byte	4
Lset114 = Ltmp96-Ltmp95
	.long	Lset114
	.byte	134
	.byte	5
	.byte	135
	.byte	4
	.byte	131
	.byte	3
	.align	2
Ldebug_frame_end10:
Lset115 = Ldebug_frame_end11-Ldebug_frame_begin11
	.long	Lset115
Ldebug_frame_begin11:
Lset116 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset116
	.long	Lfunc_begin11
Lset117 = Lfunc_end11-Lfunc_begin11
	.long	Lset117
	.byte	4
Lset118 = Ltmp163-Lfunc_begin11
	.long	Lset118
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset119 = Ltmp164-Ltmp163
	.long	Lset119
	.byte	13
	.byte	5
	.byte	4
Lset120 = Ltmp165-Ltmp164
	.long	Lset120
	.byte	134
	.byte	4
	.byte	135
	.byte	3
	.align	2
Ldebug_frame_end11:
Lset121 = Ldebug_frame_end12-Ldebug_frame_begin12
	.long	Lset121
Ldebug_frame_begin12:
Lset122 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset122
	.long	Lfunc_begin12
Lset123 = Lfunc_end12-Lfunc_begin12
	.long	Lset123
	.byte	4
Lset124 = Ltmp170-Lfunc_begin12
	.long	Lset124
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset125 = Ltmp171-Ltmp170
	.long	Lset125
	.byte	13
	.byte	5
	.byte	4
Lset126 = Ltmp172-Ltmp171
	.long	Lset126
	.byte	134
	.byte	3
	.align	2
Ldebug_frame_end12:
Lset127 = Ldebug_frame_end13-Ldebug_frame_begin13
	.long	Lset127
Ldebug_frame_begin13:
Lset128 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset128
	.long	Lfunc_begin13
Lset129 = Lfunc_end13-Lfunc_begin13
	.long	Lset129
	.byte	4
Lset130 = Ltmp176-Lfunc_begin13
	.long	Lset130
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset131 = Ltmp177-Ltmp176
	.long	Lset131
	.byte	13
	.byte	5
	.byte	4
Lset132 = Ltmp178-Ltmp177
	.long	Lset132
	.byte	134
	.byte	4
	.byte	135
	.byte	3
	.align	2
Ldebug_frame_end13:
Lset133 = Ldebug_frame_end14-Ldebug_frame_begin14
	.long	Lset133
Ldebug_frame_begin14:
Lset134 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset134
	.long	Lfunc_begin14
Lset135 = Lfunc_end14-Lfunc_begin14
	.long	Lset135
	.byte	4
Lset136 = Ltmp183-Lfunc_begin14
	.long	Lset136
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset137 = Ltmp184-Ltmp183
	.long	Lset137
	.byte	13
	.byte	5
	.align	2
Ldebug_frame_end14:
Lset138 = Ldebug_frame_end15-Ldebug_frame_begin15
	.long	Lset138
Ldebug_frame_begin15:
Lset139 = Ldebug_frame_common-Lsection_debug_frame
	.long	Lset139
	.long	Lfunc_begin15
Lset140 = Lfunc_end15-Lfunc_begin15
	.long	Lset140
	.byte	4
Lset141 = Ltmp190-Lfunc_begin15
	.long	Lset141
	.byte	14
	.byte	8
	.byte	133
	.byte	2
	.byte	4
Lset142 = Ltmp191-Ltmp190
	.long	Lset142
	.byte	13
	.byte	5
	.byte	4
Lset143 = Ltmp192-Ltmp191
	.long	Lset143
	.byte	134
	.byte	4
	.byte	135
	.byte	3
	.align	2
Ldebug_frame_end15:
	.section	__DWARF,__debug_info,regular,debug
Linfo_begin1:
	.long	8982
	.short	2
Lset144 = Labbrev_begin-Lsection_abbrev
	.long	Lset144
	.byte	4
	.byte	1
	.ascii	 "4.2.1 (Based on Apple Inc. build 5658) (LLVM build 2335.6)"
	.byte	0
	.byte	16
	.ascii	 "GameEngineLayer.m"
	.byte	0
	.long	0
	.long	0
	.ascii	 "/Users/studentuser/Desktop/GOstritch/Classes"
	.byte	0
	.byte	2
	.byte	2
	.byte	4
	.ascii	 "float"
	.byte	0
	.byte	4
	.byte	3
	.long	248
	.ascii	 "+[GameEngineLayer get_cur_pos_x]"
	.byte	0
	.byte	1
	.byte	11
	.byte	1
	.long	144
	.long	Lfunc_begin1
	.long	Lfunc_end1
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	11
	.long	2221
	.byte	2
	.byte	145
	.byte	124
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	11
	.long	5977
	.byte	2
	.byte	145
	.byte	120
	.byte	5
	.long	Ltmp4
	.long	Ltmp5
	.byte	0
	.byte	3
	.long	343
	.ascii	 "+[GameEngineLayer get_cur_pos_y]"
	.byte	0
	.byte	1
	.byte	15
	.byte	1
	.long	144
	.long	Lfunc_begin2
	.long	Lfunc_end2
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	15
	.long	2221
	.byte	2
	.byte	145
	.byte	124
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	15
	.long	5977
	.byte	2
	.byte	145
	.byte	120
	.byte	5
	.long	Ltmp10
	.long	Ltmp11
	.byte	0
	.byte	6
	.ascii	 "objc_class"
	.byte	0
	.byte	1
	.byte	7
	.long	343
	.ascii	 "Class"
	.byte	0
	.byte	1
	.byte	36
	.byte	8
	.long	413
	.byte	16
	.ascii	 "NSObject"
	.byte	0
	.byte	4
	.byte	1
	.byte	67
	.byte	9
	.ascii	 "isa"
	.byte	0
	.long	356
	.byte	1
	.byte	66
	.byte	0
	.byte	32
	.long	4294967264
	.long	4294967295
	.byte	2
	.byte	35
	.byte	0
	.byte	2
	.byte	0
	.byte	10
	.long	144
	.ascii	 "CGFloat"
	.byte	0
	.byte	1
	.byte	89
	.byte	11
	.long	469
	.ascii	 "CGPoint"
	.byte	0
	.byte	8
	.byte	1
	.byte	13
	.byte	12
	.byte	120
	.byte	0
	.long	413
	.byte	1
	.byte	14
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.byte	121
	.byte	0
	.long	413
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	4
	.byte	0
	.byte	10
	.long	428
	.ascii	 "CGPoint"
	.byte	0
	.byte	1
	.byte	17
	.byte	2
	.byte	6
	.ascii	 "signed char"
	.byte	0
	.byte	1
	.byte	10
	.long	484
	.ascii	 "BOOL"
	.byte	0
	.byte	1
	.byte	44
	.byte	11
	.long	560
	.ascii	 "CGSize"
	.byte	0
	.byte	8
	.byte	1
	.byte	21
	.byte	12
	.ascii	 "width"
	.byte	0
	.long	413
	.byte	1
	.byte	22
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.ascii	 "height"
	.byte	0
	.long	413
	.byte	1
	.byte	23
	.byte	2
	.byte	35
	.byte	4
	.byte	0
	.byte	10
	.long	511
	.ascii	 "CGSize"
	.byte	0
	.byte	1
	.byte	25
	.byte	11
	.long	675
	.ascii	 "CGAffineTransform"
	.byte	0
	.byte	24
	.byte	1
	.byte	8
	.byte	12
	.byte	97
	.byte	0
	.long	413
	.byte	1
	.byte	14
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.byte	98
	.byte	0
	.long	413
	.byte	1
	.byte	14
	.byte	2
	.byte	35
	.byte	4
	.byte	12
	.byte	99
	.byte	0
	.long	413
	.byte	1
	.byte	14
	.byte	2
	.byte	35
	.byte	8
	.byte	12
	.byte	100
	.byte	0
	.long	413
	.byte	1
	.byte	14
	.byte	2
	.byte	35
	.byte	12
	.byte	12
	.ascii	 "tx"
	.byte	0
	.long	413
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	16
	.byte	12
	.ascii	 "ty"
	.byte	0
	.long	413
	.byte	1
	.byte	15
	.byte	2
	.byte	35
	.byte	20
	.byte	0
	.byte	10
	.long	574
	.ascii	 "CGAffineTransform"
	.byte	0
	.byte	1
	.byte	8
	.byte	10
	.long	144
	.ascii	 "GLfloat"
	.byte	0
	.byte	1
	.byte	55
	.byte	13
	.byte	4
	.byte	5
	.byte	14
	.long	734
	.long	700
	.byte	15
	.long	715
	.byte	15
	.byte	0
	.byte	8
	.long	939
	.byte	16
	.ascii	 "CCCamera"
	.byte	0
	.byte	44
	.byte	1
	.byte	42
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "eyeX_"
	.byte	0
	.long	144
	.byte	1
	.byte	55
	.byte	2
	.byte	35
	.byte	4
	.byte	2
	.byte	17
	.ascii	 "eyeY_"
	.byte	0
	.long	144
	.byte	1
	.byte	56
	.byte	2
	.byte	35
	.byte	8
	.byte	2
	.byte	17
	.ascii	 "eyeZ_"
	.byte	0
	.long	144
	.byte	1
	.byte	57
	.byte	2
	.byte	35
	.byte	12
	.byte	2
	.byte	17
	.ascii	 "centerX_"
	.byte	0
	.long	144
	.byte	1
	.byte	59
	.byte	2
	.byte	35
	.byte	16
	.byte	2
	.byte	17
	.ascii	 "centerY_"
	.byte	0
	.long	144
	.byte	1
	.byte	60
	.byte	2
	.byte	35
	.byte	20
	.byte	2
	.byte	17
	.ascii	 "centerZ_"
	.byte	0
	.long	144
	.byte	1
	.byte	61
	.byte	2
	.byte	35
	.byte	24
	.byte	2
	.byte	17
	.ascii	 "upX_"
	.byte	0
	.long	144
	.byte	1
	.byte	63
	.byte	2
	.byte	35
	.byte	28
	.byte	2
	.byte	17
	.ascii	 "upY_"
	.byte	0
	.long	144
	.byte	1
	.byte	64
	.byte	2
	.byte	35
	.byte	32
	.byte	2
	.byte	17
	.ascii	 "upZ_"
	.byte	0
	.long	144
	.byte	1
	.byte	65
	.byte	2
	.byte	35
	.byte	36
	.byte	2
	.byte	17
	.ascii	 "dirty_"
	.byte	0
	.long	499
	.byte	1
	.byte	67
	.byte	2
	.byte	35
	.byte	40
	.byte	2
	.byte	0
	.byte	18
	.long	734
	.byte	4
	.byte	1
	.byte	0
	.byte	2
	.byte	5
	.ascii	 "int"
	.byte	0
	.byte	4
	.byte	10
	.long	947
	.ascii	 "NSInteger"
	.byte	0
	.byte	1
	.byte	242
	.byte	11
	.long	1016
	.ascii	 "_ccGridSize"
	.byte	0
	.byte	8
	.byte	1
	.byte	192
	.byte	12
	.byte	120
	.byte	0
	.long	954
	.byte	1
	.byte	193
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.byte	121
	.byte	0
	.long	954
	.byte	1
	.byte	194
	.byte	2
	.byte	35
	.byte	4
	.byte	0
	.byte	10
	.long	971
	.ascii	 "ccGridSize"
	.byte	0
	.byte	1
	.byte	195
	.byte	2
	.byte	7
	.ascii	 "unsigned int"
	.byte	0
	.byte	4
	.byte	10
	.long	1034
	.ascii	 "GLuint"
	.byte	0
	.byte	1
	.byte	54
	.byte	10
	.long	1034
	.ascii	 "NSUInteger"
	.byte	0
	.byte	1
	.byte	243
	.byte	19
	.long	1485
	.byte	4
	.byte	1
	.byte	81
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_Automatic"
	.byte	0
	.byte	0
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_RGBA8888"
	.byte	0
	.byte	1
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_RGB565"
	.byte	0
	.byte	2
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_RGB888"
	.byte	0
	.byte	3
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_A8"
	.byte	0
	.byte	4
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_I8"
	.byte	0
	.byte	5
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_AI88"
	.byte	0
	.byte	6
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_RGBA4444"
	.byte	0
	.byte	7
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_RGB5A1"
	.byte	0
	.byte	8
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_PVRTC4"
	.byte	0
	.byte	9
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_PVRTC2"
	.byte	0
	.byte	10
	.byte	20
	.ascii	 "kCCTexture2DPixelFormat_Default"
	.byte	0
	.byte	1
	.byte	0
	.byte	10
	.long	1082
	.ascii	 "CCTexture2DPixelFormat"
	.byte	0
	.byte	1
	.byte	107
	.byte	21
	.long	1658
	.byte	4
	.byte	1
	.short	292
	.byte	20
	.ascii	 "kCCResolutionUnknown"
	.byte	0
	.byte	0
	.byte	20
	.ascii	 "kCCResolutioniPhone"
	.byte	0
	.byte	1
	.byte	20
	.ascii	 "kCCResolutioniPhoneRetinaDisplay"
	.byte	0
	.byte	2
	.byte	20
	.ascii	 "kCCResolutioniPad"
	.byte	0
	.byte	3
	.byte	20
	.ascii	 "kCCResolutioniPadRetinaDisplay"
	.byte	0
	.byte	4
	.byte	0
	.byte	22
	.long	1515
	.ascii	 "ccResolutionType"
	.byte	0
	.byte	1
	.short	304
	.byte	8
	.long	1899
	.byte	16
	.ascii	 "CCTexture2D"
	.byte	0
	.byte	44
	.byte	1
	.byte	132
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "name_"
	.byte	0
	.long	1050
	.byte	1
	.byte	119
	.byte	2
	.byte	35
	.byte	4
	.byte	2
	.byte	17
	.ascii	 "size_"
	.byte	0
	.long	560
	.byte	1
	.byte	120
	.byte	2
	.byte	35
	.byte	8
	.byte	2
	.byte	17
	.ascii	 "width_"
	.byte	0
	.long	1064
	.byte	1
	.byte	121
	.byte	2
	.byte	35
	.byte	16
	.byte	2
	.byte	17
	.ascii	 "height_"
	.byte	0
	.long	1064
	.byte	1
	.byte	122
	.byte	2
	.byte	35
	.byte	20
	.byte	2
	.byte	17
	.ascii	 "format_"
	.byte	0
	.long	1485
	.byte	1
	.byte	123
	.byte	2
	.byte	35
	.byte	24
	.byte	2
	.byte	17
	.ascii	 "maxS_"
	.byte	0
	.long	700
	.byte	1
	.byte	124
	.byte	2
	.byte	35
	.byte	28
	.byte	2
	.byte	17
	.ascii	 "maxT_"
	.byte	0
	.long	700
	.byte	1
	.byte	125
	.byte	2
	.byte	35
	.byte	32
	.byte	2
	.byte	17
	.ascii	 "hasPremultipliedAlpha_"
	.byte	0
	.long	499
	.byte	1
	.byte	126
	.byte	2
	.byte	35
	.byte	36
	.byte	2
	.byte	17
	.ascii	 "resolutionType_"
	.byte	0
	.long	1658
	.byte	1
	.byte	129
	.byte	2
	.byte	35
	.byte	40
	.byte	2
	.byte	0
	.byte	18
	.long	1683
	.byte	4
	.byte	1
	.byte	0
	.byte	10
	.long	947
	.ascii	 "GLint"
	.byte	0
	.byte	1
	.byte	50
	.byte	8
	.long	1982
	.byte	16
	.ascii	 "CCGrabber"
	.byte	0
	.byte	12
	.byte	1
	.byte	34
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "fbo"
	.byte	0
	.long	1050
	.byte	1
	.byte	35
	.byte	2
	.byte	35
	.byte	4
	.byte	2
	.byte	17
	.ascii	 "oldFBO"
	.byte	0
	.long	1907
	.byte	1
	.byte	36
	.byte	2
	.byte	35
	.byte	8
	.byte	2
	.byte	0
	.byte	18
	.long	1920
	.byte	4
	.byte	1
	.byte	0
	.byte	8
	.long	2168
	.byte	16
	.ascii	 "CCGridBase"
	.byte	0
	.byte	40
	.byte	1
	.byte	43
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "active_"
	.byte	0
	.long	499
	.byte	1
	.byte	40
	.byte	2
	.byte	35
	.byte	4
	.byte	2
	.byte	17
	.ascii	 "reuseGrid_"
	.byte	0
	.long	947
	.byte	1
	.byte	41
	.byte	2
	.byte	35
	.byte	8
	.byte	2
	.byte	17
	.ascii	 "gridSize_"
	.byte	0
	.long	1016
	.byte	1
	.byte	42
	.byte	2
	.byte	35
	.byte	12
	.byte	2
	.byte	17
	.ascii	 "texture_"
	.byte	0
	.long	1899
	.byte	1
	.byte	43
	.byte	2
	.byte	35
	.byte	20
	.byte	2
	.byte	17
	.ascii	 "step_"
	.byte	0
	.long	469
	.byte	1
	.byte	44
	.byte	2
	.byte	35
	.byte	24
	.byte	2
	.byte	17
	.ascii	 "grabber_"
	.byte	0
	.long	1982
	.byte	1
	.byte	45
	.byte	2
	.byte	35
	.byte	32
	.byte	2
	.byte	17
	.ascii	 "isTextureFlipped_"
	.byte	0
	.long	499
	.byte	1
	.byte	46
	.byte	2
	.byte	35
	.byte	36
	.byte	2
	.byte	0
	.byte	18
	.long	1990
	.byte	4
	.byte	1
	.byte	0
	.byte	11
	.long	2221
	.ascii	 "objc_object"
	.byte	0
	.byte	4
	.byte	1
	.byte	0
	.byte	23
	.ascii	 "isa"
	.byte	0
	.long	356
	.byte	1
	.byte	38
	.byte	0
	.byte	32
	.long	4294967264
	.long	4294967295
	.byte	2
	.byte	35
	.byte	0
	.byte	0
	.byte	7
	.long	2176
	.ascii	 "id"
	.byte	0
	.byte	1
	.byte	39
	.byte	10
	.long	2221
	.ascii	 "CCARRAY_ID"
	.byte	0
	.byte	1
	.byte	58
	.byte	18
	.long	2231
	.byte	4
	.byte	1
	.byte	0
	.byte	11
	.long	2316
	.ascii	 "ccArray"
	.byte	0
	.byte	12
	.byte	1
	.byte	61
	.byte	12
	.ascii	 "num"
	.byte	0
	.long	1064
	.byte	1
	.byte	62
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.ascii	 "max"
	.byte	0
	.long	1064
	.byte	1
	.byte	62
	.byte	2
	.byte	35
	.byte	4
	.byte	12
	.ascii	 "arr"
	.byte	0
	.long	2249
	.byte	1
	.byte	63
	.byte	2
	.byte	35
	.byte	8
	.byte	0
	.byte	10
	.long	2257
	.ascii	 "ccArray"
	.byte	0
	.byte	1
	.byte	64
	.byte	18
	.long	2316
	.byte	4
	.byte	1
	.byte	0
	.byte	8
	.long	2381
	.byte	16
	.ascii	 "CCArray"
	.byte	0
	.byte	8
	.byte	1
	.byte	49
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	12
	.ascii	 "data"
	.byte	0
	.long	2331
	.byte	1
	.byte	48
	.byte	2
	.byte	35
	.byte	4
	.byte	0
	.byte	18
	.long	2339
	.byte	4
	.byte	1
	.byte	0
	.byte	18
	.long	2401
	.byte	4
	.byte	1
	.byte	0
	.byte	24
	.byte	4
	.byte	1
	.byte	0
	.byte	8
	.long	3151
	.byte	16
	.ascii	 "CCNode"
	.byte	0
	.byte	236
	.byte	1
	.byte	148
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "rotation_"
	.byte	0
	.long	144
	.byte	1
	.byte	102
	.byte	2
	.byte	35
	.byte	4
	.byte	2
	.byte	17
	.ascii	 "scaleX_"
	.byte	0
	.long	144
	.byte	1
	.byte	105
	.byte	2
	.byte	35
	.byte	8
	.byte	2
	.byte	17
	.ascii	 "scaleY_"
	.byte	0
	.long	144
	.byte	1
	.byte	105
	.byte	2
	.byte	35
	.byte	12
	.byte	2
	.byte	17
	.ascii	 "position_"
	.byte	0
	.long	469
	.byte	1
	.byte	108
	.byte	2
	.byte	35
	.byte	16
	.byte	2
	.byte	17
	.ascii	 "positionInPixels_"
	.byte	0
	.long	469
	.byte	1
	.byte	109
	.byte	2
	.byte	35
	.byte	24
	.byte	2
	.byte	17
	.ascii	 "skewX_"
	.byte	0
	.long	144
	.byte	1
	.byte	112
	.byte	2
	.byte	35
	.byte	32
	.byte	2
	.byte	17
	.ascii	 "skewY_"
	.byte	0
	.long	144
	.byte	1
	.byte	112
	.byte	2
	.byte	35
	.byte	36
	.byte	2
	.byte	17
	.ascii	 "visible_"
	.byte	0
	.long	499
	.byte	1
	.byte	115
	.byte	2
	.byte	35
	.byte	40
	.byte	2
	.byte	17
	.ascii	 "anchorPointInPixels_"
	.byte	0
	.long	469
	.byte	1
	.byte	118
	.byte	2
	.byte	35
	.byte	44
	.byte	2
	.byte	17
	.ascii	 "anchorPoint_"
	.byte	0
	.long	469
	.byte	1
	.byte	120
	.byte	2
	.byte	35
	.byte	52
	.byte	2
	.byte	17
	.ascii	 "isRelativeAnchorPoint_"
	.byte	0
	.long	499
	.byte	1
	.byte	124
	.byte	2
	.byte	35
	.byte	60
	.byte	2
	.byte	17
	.ascii	 "contentSize_"
	.byte	0
	.long	560
	.byte	1
	.byte	127
	.byte	2
	.byte	35
	.byte	64
	.byte	2
	.byte	17
	.ascii	 "contentSizeInPixels_"
	.byte	0
	.long	560
	.byte	1
	.byte	128
	.byte	2
	.byte	35
	.byte	72
	.byte	2
	.byte	17
	.ascii	 "transform_"
	.byte	0
	.long	675
	.byte	1
	.byte	131
	.byte	2
	.byte	35
	.byte	80
	.byte	2
	.byte	17
	.ascii	 "inverse_"
	.byte	0
	.long	675
	.byte	1
	.byte	131
	.byte	2
	.byte	35
	.byte	104
	.byte	2
	.byte	17
	.ascii	 "transformGL_"
	.byte	0
	.long	718
	.byte	1
	.byte	133
	.byte	3
	.byte	35
	.byte	128
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "vertexZ_"
	.byte	0
	.long	144
	.byte	1
	.byte	137
	.byte	3
	.byte	35
	.byte	192
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "camera_"
	.byte	0
	.long	939
	.byte	1
	.byte	140
	.byte	3
	.byte	35
	.byte	196
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "grid_"
	.byte	0
	.long	2168
	.byte	1
	.byte	143
	.byte	3
	.byte	35
	.byte	200
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "zOrder_"
	.byte	0
	.long	954
	.byte	1
	.byte	146
	.byte	3
	.byte	35
	.byte	204
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "children_"
	.byte	0
	.long	2381
	.byte	1
	.byte	149
	.byte	3
	.byte	35
	.byte	208
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "parent_"
	.byte	0
	.long	2389
	.byte	1
	.byte	152
	.byte	3
	.byte	35
	.byte	212
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "tag_"
	.byte	0
	.long	954
	.byte	1
	.byte	155
	.byte	3
	.byte	35
	.byte	216
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "userData_"
	.byte	0
	.long	2397
	.byte	1
	.byte	158
	.byte	3
	.byte	35
	.byte	220
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "isRunning_"
	.byte	0
	.long	499
	.byte	1
	.byte	161
	.byte	3
	.byte	35
	.byte	224
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "orderOfArrival_"
	.byte	0
	.long	1064
	.byte	1
	.byte	164
	.byte	3
	.byte	35
	.byte	228
	.byte	1
	.byte	2
	.byte	25
	.ascii	 "isTransformDirty_"
	.byte	0
	.long	499
	.byte	1
	.byte	167
	.byte	1
	.byte	1
	.byte	7
	.byte	3
	.byte	35
	.byte	232
	.byte	1
	.byte	2
	.byte	25
	.ascii	 "isInverseDirty_"
	.byte	0
	.long	499
	.byte	1
	.byte	168
	.byte	1
	.byte	1
	.byte	6
	.byte	3
	.byte	35
	.byte	232
	.byte	1
	.byte	2
	.byte	25
	.ascii	 "isReorderChildDirty_"
	.byte	0
	.long	499
	.byte	1
	.byte	169
	.byte	1
	.byte	1
	.byte	5
	.byte	3
	.byte	35
	.byte	232
	.byte	1
	.byte	2
	.byte	25
	.ascii	 "isTransformGLDirty_"
	.byte	0
	.long	499
	.byte	1
	.byte	171
	.byte	1
	.byte	1
	.byte	4
	.byte	3
	.byte	35
	.byte	232
	.byte	1
	.byte	2
	.byte	0
	.byte	8
	.long	3178
	.byte	16
	.ascii	 "CCScene"
	.byte	0
	.byte	236
	.byte	1
	.byte	59
	.byte	16
	.long	2401
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	0
	.byte	18
	.long	3151
	.byte	4
	.byte	1
	.byte	0
	.byte	3
	.long	3324
	.ascii	 "+[GameEngineLayer scene]"
	.byte	0
	.byte	1
	.byte	20
	.byte	1
	.long	3178
	.long	Lfunc_begin3
	.long	Lfunc_end3
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	20
	.long	2221
	.byte	2
	.byte	145
	.byte	120
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	20
	.long	5977
	.byte	2
	.byte	145
	.byte	116
	.byte	26
	.long	Ltmp16
	.long	Ltmp22
	.byte	27
	.ascii	 "scene"
	.byte	0
	.byte	1
	.byte	22
	.long	3178
	.byte	2
	.byte	145
	.byte	84
	.byte	27
	.ascii	 "bglayer"
	.byte	0
	.byte	1
	.byte	23
	.long	6127
	.byte	2
	.byte	145
	.byte	80
	.byte	27
	.ascii	 "layer"
	.byte	0
	.byte	1
	.byte	25
	.long	8177
	.byte	2
	.byte	145
	.byte	76
	.byte	0
	.byte	0
	.byte	3
	.long	3443
	.ascii	 "-[GameEngineLayer init]"
	.byte	0
	.byte	1
	.byte	31
	.byte	1
	.long	2221
	.long	Lfunc_begin4
	.long	Lfunc_end4
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	31
	.long	8177
	.byte	2
	.byte	145
	.byte	116
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	31
	.long	5977
	.byte	2
	.byte	145
	.byte	112
	.byte	26
	.long	Ltmp27
	.long	Ltmp39
	.byte	26
	.long	Ltmp27
	.long	Ltmp37
	.byte	27
	.ascii	 "objc_super"
	.byte	0
	.byte	1
	.byte	32
	.long	8185
	.byte	3
	.byte	145
	.byte	136
	.byte	127
	.byte	0
	.byte	0
	.byte	0
	.byte	28
	.long	3528
	.ascii	 "CGPointMake"
	.byte	0
	.byte	2
	.short	257
	.byte	1
	.long	469
	.long	Lfunc_begin5
	.long	Lfunc_end5
	.byte	1
	.byte	85
	.byte	29
	.byte	120
	.byte	0
	.byte	2
	.short	256
	.long	413
	.byte	2
	.byte	145
	.byte	124
	.byte	29
	.byte	121
	.byte	0
	.byte	2
	.short	256
	.long	413
	.byte	2
	.byte	145
	.byte	120
	.byte	26
	.long	Ltmp44
	.long	Ltmp45
	.byte	30
	.byte	112
	.byte	0
	.byte	2
	.short	258
	.long	469
	.byte	2
	.byte	145
	.byte	96
	.byte	0
	.byte	0
	.byte	11
	.long	3576
	.ascii	 "CGRect"
	.byte	0
	.byte	16
	.byte	1
	.byte	29
	.byte	12
	.ascii	 "origin"
	.byte	0
	.long	469
	.byte	1
	.byte	30
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.ascii	 "size"
	.byte	0
	.long	560
	.byte	1
	.byte	31
	.byte	2
	.byte	35
	.byte	8
	.byte	0
	.byte	10
	.long	3528
	.ascii	 "CGRect"
	.byte	0
	.byte	1
	.byte	33
	.byte	28
	.long	3712
	.ascii	 "CGRectMake"
	.byte	0
	.byte	2
	.short	269
	.byte	1
	.long	3576
	.long	Lfunc_begin6
	.long	Lfunc_end6
	.byte	1
	.byte	85
	.byte	29
	.byte	120
	.byte	0
	.byte	2
	.short	268
	.long	413
	.byte	2
	.byte	145
	.byte	124
	.byte	29
	.byte	121
	.byte	0
	.byte	2
	.short	268
	.long	413
	.byte	2
	.byte	145
	.byte	120
	.byte	29
	.ascii	 "width"
	.byte	0
	.byte	2
	.short	268
	.long	413
	.byte	2
	.byte	145
	.byte	116
	.byte	29
	.ascii	 "height"
	.byte	0
	.byte	2
	.short	268
	.long	413
	.byte	2
	.byte	145
	.byte	112
	.byte	26
	.long	Ltmp50
	.long	Ltmp53
	.byte	30
	.ascii	 "rect"
	.byte	0
	.byte	2
	.short	270
	.long	3576
	.byte	2
	.byte	145
	.byte	96
	.byte	0
	.byte	0
	.byte	31
	.long	3821
	.ascii	 "-[GameEngineLayer loadMap]"
	.byte	0
	.byte	1
	.byte	49
	.byte	1
	.long	Lfunc_begin7
	.long	Lfunc_end7
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	49
	.long	8177
	.byte	2
	.byte	145
	.byte	116
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	49
	.long	5977
	.byte	2
	.byte	145
	.byte	112
	.byte	26
	.long	Ltmp58
	.long	Ltmp63
	.byte	26
	.long	Ltmp59
	.long	Ltmp63
	.byte	27
	.byte	105
	.byte	0
	.byte	1
	.byte	52
	.long	8354
	.byte	3
	.byte	145
	.byte	236
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	32
	.ascii	 "__copy_helper_block_1"
	.byte	0
	.byte	1
	.byte	32
	.ascii	 "__destroy_helper_block_1"
	.byte	0
	.byte	1
	.byte	31
	.long	3962
	.ascii	 "-[GameEngineLayer sort_islands]"
	.byte	0
	.byte	1
	.byte	57
	.byte	1
	.long	Lfunc_begin8
	.long	Lfunc_end8
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	57
	.long	8177
	.byte	2
	.byte	145
	.byte	120
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	57
	.long	5977
	.byte	2
	.byte	145
	.byte	116
	.byte	5
	.long	Ltmp74
	.long	Ltmp77
	.byte	0
	.byte	3
	.long	4147
	.ascii	 "__-[GameEngineLayer sort_islands]_block_invoke_1"
	.byte	0
	.byte	1
	.byte	58
	.byte	1
	.long	947
	.long	Lfunc_begin9
	.long	Lfunc_end9
	.byte	1
	.byte	85
	.byte	4
	.ascii	 ".block_descriptor"
	.byte	0
	.byte	1
	.byte	58
	.long	8710
	.byte	2
	.byte	145
	.byte	120
	.byte	4
	.byte	97
	.byte	0
	.byte	1
	.byte	58
	.long	2221
	.byte	2
	.byte	145
	.byte	116
	.byte	4
	.byte	98
	.byte	0
	.byte	1
	.byte	58
	.long	2221
	.byte	2
	.byte	145
	.byte	112
	.byte	26
	.long	Ltmp83
	.long	Ltmp93
	.byte	27
	.ascii	 "first"
	.byte	0
	.byte	1
	.byte	59
	.long	144
	.byte	3
	.byte	145
	.byte	180
	.byte	127
	.byte	27
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	58
	.long	8718
	.byte	3
	.byte	145
	.byte	176
	.byte	127
	.byte	27
	.ascii	 "second"
	.byte	0
	.byte	1
	.byte	60
	.long	144
	.byte	3
	.byte	145
	.byte	172
	.byte	127
	.byte	0
	.byte	0
	.byte	31
	.long	4677
	.ascii	 "-[GameEngineLayer update:]"
	.byte	0
	.byte	1
	.byte	71
	.byte	1
	.long	Lfunc_begin10
	.long	Lfunc_end10
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	71
	.long	8177
	.byte	2
	.byte	145
	.byte	112
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	71
	.long	5977
	.byte	2
	.byte	145
	.byte	108
	.byte	4
	.ascii	 "dt"
	.byte	0
	.byte	1
	.byte	71
	.long	8726
	.byte	2
	.byte	145
	.byte	104
	.byte	26
	.long	Ltmp98
	.long	Ltmp162
	.byte	27
	.ascii	 "pos_x"
	.byte	0
	.byte	1
	.byte	72
	.long	144
	.byte	3
	.byte	145
	.byte	184
	.byte	122
	.byte	27
	.ascii	 "pos_y"
	.byte	0
	.byte	1
	.byte	73
	.long	144
	.byte	3
	.byte	145
	.byte	180
	.byte	122
	.byte	27
	.ascii	 "tmp"
	.byte	0
	.byte	1
	.byte	75
	.long	144
	.byte	3
	.byte	145
	.byte	176
	.byte	122
	.byte	27
	.ascii	 "pre_y"
	.byte	0
	.byte	1
	.byte	85
	.long	144
	.byte	3
	.byte	145
	.byte	172
	.byte	122
	.byte	27
	.ascii	 "post_y"
	.byte	0
	.byte	1
	.byte	86
	.long	144
	.byte	3
	.byte	145
	.byte	168
	.byte	122
	.byte	27
	.ascii	 "is_contact"
	.byte	0
	.byte	1
	.byte	87
	.long	499
	.byte	3
	.byte	145
	.byte	167
	.byte	122
	.byte	27
	.ascii	 "contact_island"
	.byte	0
	.byte	1
	.byte	88
	.long	8354
	.byte	3
	.byte	145
	.byte	160
	.byte	122
	.byte	33
	.long	4422
	.long	0
	.byte	27
	.byte	105
	.byte	0
	.byte	1
	.byte	76
	.long	8354
	.byte	3
	.byte	145
	.byte	156
	.byte	122
	.byte	26
	.long	Ltmp104
	.long	Ltmp108
	.byte	27
	.byte	104
	.byte	0
	.byte	1
	.byte	77
	.long	144
	.byte	3
	.byte	145
	.byte	152
	.byte	122
	.byte	0
	.byte	0
	.byte	34
	.long	4472
	.long	Ltmp114
	.long	Ltmp122
	.byte	27
	.byte	105
	.byte	0
	.byte	1
	.byte	90
	.long	8354
	.byte	3
	.byte	145
	.byte	148
	.byte	122
	.byte	26
	.long	Ltmp115
	.long	Ltmp120
	.byte	27
	.byte	104
	.byte	0
	.byte	1
	.byte	91
	.long	144
	.byte	3
	.byte	145
	.byte	144
	.byte	122
	.byte	0
	.byte	0
	.byte	34
	.long	4552
	.long	Ltmp124
	.long	Ltmp137
	.byte	27
	.ascii	 "rise_one"
	.byte	0
	.byte	1
	.byte	100
	.long	144
	.byte	3
	.byte	145
	.byte	140
	.byte	122
	.byte	27
	.ascii	 "dx"
	.byte	0
	.byte	1
	.byte	101
	.long	144
	.byte	3
	.byte	145
	.byte	136
	.byte	122
	.byte	27
	.ascii	 "mov_h"
	.byte	0
	.byte	1
	.byte	102
	.long	144
	.byte	3
	.byte	145
	.byte	132
	.byte	122
	.byte	27
	.ascii	 "ang"
	.byte	0
	.byte	1
	.byte	110
	.long	144
	.byte	3
	.byte	145
	.byte	128
	.byte	122
	.byte	0
	.byte	26
	.long	Ltmp138
	.long	Ltmp155
	.byte	27
	.ascii	 "pre_x"
	.byte	0
	.byte	1
	.byte	123
	.long	144
	.byte	3
	.byte	145
	.byte	252
	.byte	121
	.byte	27
	.ascii	 "post_x"
	.byte	0
	.byte	1
	.byte	124
	.long	144
	.byte	3
	.byte	145
	.byte	248
	.byte	121
	.byte	27
	.ascii	 "has_hit_x"
	.byte	0
	.byte	1
	.byte	125
	.long	499
	.byte	3
	.byte	145
	.byte	247
	.byte	121
	.byte	26
	.long	Ltmp144
	.long	Ltmp152
	.byte	27
	.byte	105
	.byte	0
	.byte	1
	.byte	126
	.long	8354
	.byte	3
	.byte	145
	.byte	240
	.byte	121
	.byte	26
	.long	Ltmp145
	.long	Ltmp150
	.byte	27
	.ascii	 "intersection"
	.byte	0
	.byte	1
	.byte	127
	.long	469
	.byte	3
	.byte	145
	.byte	232
	.byte	121
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	31
	.long	4816
	.ascii	 "-[GameEngineLayer ccTouchesBegan:withEvent:]"
	.byte	0
	.byte	1
	.byte	151
	.byte	1
	.long	Lfunc_begin11
	.long	Lfunc_end11
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	151
	.long	8177
	.byte	2
	.byte	145
	.byte	116
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	151
	.long	5977
	.byte	2
	.byte	145
	.byte	112
	.byte	4
	.ascii	 "pTouches"
	.byte	0
	.byte	1
	.byte	151
	.long	8766
	.byte	2
	.byte	145
	.byte	108
	.byte	4
	.ascii	 "pEvent"
	.byte	0
	.byte	1
	.byte	151
	.long	8855
	.byte	2
	.byte	145
	.byte	104
	.byte	5
	.long	Ltmp167
	.long	Ltmp169
	.byte	0
	.byte	31
	.long	4953
	.ascii	 "-[GameEngineLayer ccTouchesMoved:withEvent:]"
	.byte	0
	.byte	1
	.byte	155
	.byte	1
	.long	Lfunc_begin12
	.long	Lfunc_end12
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	155
	.long	8177
	.byte	2
	.byte	145
	.byte	120
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	155
	.long	5977
	.byte	2
	.byte	145
	.byte	116
	.byte	4
	.ascii	 "touches"
	.byte	0
	.byte	1
	.byte	155
	.long	8766
	.byte	2
	.byte	145
	.byte	112
	.byte	4
	.ascii	 "event"
	.byte	0
	.byte	1
	.byte	155
	.long	8855
	.byte	2
	.byte	145
	.byte	108
	.byte	5
	.long	Ltmp174
	.long	Ltmp175
	.byte	0
	.byte	31
	.long	5090
	.ascii	 "-[GameEngineLayer ccTouchesEnded:withEvent:]"
	.byte	0
	.byte	1
	.byte	158
	.byte	1
	.long	Lfunc_begin13
	.long	Lfunc_end13
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	158
	.long	8177
	.byte	2
	.byte	145
	.byte	116
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	158
	.long	5977
	.byte	2
	.byte	145
	.byte	112
	.byte	4
	.ascii	 "touches"
	.byte	0
	.byte	1
	.byte	158
	.long	8766
	.byte	2
	.byte	145
	.byte	108
	.byte	4
	.ascii	 "event"
	.byte	0
	.byte	1
	.byte	158
	.long	8855
	.byte	2
	.byte	145
	.byte	104
	.byte	5
	.long	Ltmp180
	.long	Ltmp182
	.byte	0
	.byte	31
	.long	5197
	.ascii	 "-[GameEngineLayer dealloc]"
	.byte	0
	.byte	1
	.byte	165
	.byte	1
	.long	Lfunc_begin14
	.long	Lfunc_end14
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	165
	.long	8177
	.byte	2
	.byte	145
	.byte	124
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	165
	.long	5977
	.byte	2
	.byte	145
	.byte	120
	.byte	26
	.long	Ltmp187
	.long	Ltmp189
	.byte	27
	.ascii	 "objc_super"
	.byte	0
	.byte	1
	.byte	167
	.long	8185
	.byte	2
	.byte	145
	.byte	104
	.byte	0
	.byte	0
	.byte	8
	.long	5224
	.byte	16
	.ascii	 "NSArray"
	.byte	0
	.byte	4
	.byte	1
	.byte	7
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	0
	.byte	8
	.long	5258
	.byte	16
	.ascii	 "NSMutableArray"
	.byte	0
	.byte	4
	.byte	1
	.byte	114
	.byte	16
	.long	5197
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	0
	.byte	18
	.long	5224
	.byte	4
	.byte	1
	.byte	0
	.byte	3
	.long	5621
	.ascii	 "+[GameEngineLayer loadIslands]"
	.byte	0
	.byte	1
	.byte	171
	.byte	1
	.long	5258
	.long	Lfunc_begin15
	.long	Lfunc_end15
	.byte	1
	.byte	85
	.byte	4
	.ascii	 "self"
	.byte	0
	.byte	1
	.byte	171
	.long	2221
	.byte	2
	.byte	145
	.byte	116
	.byte	4
	.ascii	 "_cmd"
	.byte	0
	.byte	1
	.byte	171
	.long	5977
	.byte	2
	.byte	145
	.byte	112
	.byte	26
	.long	Ltmp194
	.long	Ltmp210
	.byte	27
	.ascii	 "islandFilePath"
	.byte	0
	.byte	1
	.byte	173
	.long	8891
	.byte	3
	.byte	145
	.byte	128
	.byte	127
	.byte	27
	.ascii	 "islandInputStr"
	.byte	0
	.byte	1
	.byte	174
	.long	8891
	.byte	3
	.byte	145
	.byte	252
	.byte	126
	.byte	27
	.ascii	 "islandData"
	.byte	0
	.byte	1
	.byte	176
	.long	8925
	.byte	3
	.byte	145
	.byte	248
	.byte	126
	.byte	27
	.ascii	 "islandArray"
	.byte	0
	.byte	1
	.byte	177
	.long	8933
	.byte	3
	.byte	145
	.byte	244
	.byte	126
	.byte	27
	.ascii	 "islandsCount"
	.byte	0
	.byte	1
	.byte	179
	.long	947
	.byte	3
	.byte	145
	.byte	240
	.byte	126
	.byte	27
	.ascii	 "n_islands"
	.byte	0
	.byte	1
	.byte	181
	.long	5258
	.byte	3
	.byte	145
	.byte	236
	.byte	126
	.byte	26
	.long	Ltmp200
	.long	Ltmp208
	.byte	27
	.byte	105
	.byte	0
	.byte	1
	.byte	183
	.long	947
	.byte	3
	.byte	145
	.byte	232
	.byte	126
	.byte	26
	.long	Ltmp201
	.long	Ltmp206
	.byte	27
	.ascii	 "currentIslandDict"
	.byte	0
	.byte	1
	.byte	184
	.long	8973
	.byte	3
	.byte	145
	.byte	228
	.byte	126
	.byte	27
	.ascii	 "start"
	.byte	0
	.byte	1
	.byte	185
	.long	469
	.byte	3
	.byte	145
	.byte	216
	.byte	126
	.byte	27
	.ascii	 "end"
	.byte	0
	.byte	1
	.byte	187
	.long	469
	.byte	3
	.byte	145
	.byte	208
	.byte	126
	.byte	27
	.ascii	 "currentIsland"
	.byte	0
	.byte	1
	.byte	190
	.long	8354
	.byte	3
	.byte	145
	.byte	204
	.byte	126
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	8
	.ascii	 "unsigned char"
	.byte	0
	.byte	1
	.byte	10
	.long	5621
	.ascii	 "GLubyte"
	.byte	0
	.byte	1
	.byte	52
	.byte	11
	.long	5709
	.ascii	 "_ccColor3B"
	.byte	0
	.byte	3
	.byte	1
	.byte	45
	.byte	12
	.byte	114
	.byte	0
	.long	5638
	.byte	1
	.byte	46
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.byte	103
	.byte	0
	.long	5638
	.byte	1
	.byte	47
	.byte	2
	.byte	35
	.byte	1
	.byte	12
	.byte	98
	.byte	0
	.long	5638
	.byte	1
	.byte	48
	.byte	2
	.byte	35
	.byte	2
	.byte	0
	.byte	10
	.long	5653
	.ascii	 "ccColor3B"
	.byte	0
	.byte	1
	.byte	49
	.byte	35
	.ascii	 "ccWHITE"
	.byte	0
	.long	5709
	.byte	1
	.byte	60
	.byte	5
	.byte	3
	.long	_ccWHITE
	.byte	35
	.ascii	 "ccYELLOW"
	.byte	0
	.long	5709
	.byte	1
	.byte	62
	.byte	5
	.byte	3
	.long	_ccYELLOW
	.byte	35
	.ascii	 "ccBLUE"
	.byte	0
	.long	5709
	.byte	1
	.byte	64
	.byte	5
	.byte	3
	.long	_ccBLUE
	.byte	35
	.ascii	 "ccGREEN"
	.byte	0
	.long	5709
	.byte	1
	.byte	66
	.byte	5
	.byte	3
	.long	_ccGREEN
	.byte	35
	.ascii	 "ccRED"
	.byte	0
	.long	5709
	.byte	1
	.byte	68
	.byte	5
	.byte	3
	.long	_ccRED
	.byte	35
	.ascii	 "ccMAGENTA"
	.byte	0
	.long	5709
	.byte	1
	.byte	70
	.byte	5
	.byte	3
	.long	_ccMAGENTA
	.byte	35
	.ascii	 "ccBLACK"
	.byte	0
	.long	5709
	.byte	1
	.byte	72
	.byte	5
	.byte	3
	.long	_ccBLACK
	.byte	35
	.ascii	 "ccORANGE"
	.byte	0
	.long	5709
	.byte	1
	.byte	74
	.byte	5
	.byte	3
	.long	_ccORANGE
	.byte	35
	.ascii	 "ccGRAY"
	.byte	0
	.long	5709
	.byte	1
	.byte	76
	.byte	5
	.byte	3
	.long	_ccGRAY
	.byte	35
	.ascii	 "cur_pos_x"
	.byte	0
	.long	144
	.byte	1
	.byte	8
	.byte	5
	.byte	3
	.long	_cur_pos_x
	.byte	35
	.ascii	 "cur_pos_y"
	.byte	0
	.long	144
	.byte	1
	.byte	9
	.byte	5
	.byte	3
	.long	_cur_pos_y
	.byte	6
	.ascii	 "objc_selector"
	.byte	0
	.byte	1
	.byte	18
	.long	5961
	.byte	4
	.byte	1
	.byte	0
	.byte	8
	.long	6076
	.byte	16
	.ascii	 "CCLayer"
	.byte	0
	.byte	236
	.byte	1
	.byte	54
	.byte	16
	.long	2401
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "isTouchEnabled_"
	.byte	0
	.long	499
	.byte	1
	.byte	52
	.byte	3
	.byte	35
	.byte	233
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "isAccelerometerEnabled_"
	.byte	0
	.long	499
	.byte	1
	.byte	53
	.byte	3
	.byte	35
	.byte	234
	.byte	1
	.byte	2
	.byte	0
	.byte	8
	.long	6127
	.byte	16
	.ascii	 "BGLayer"
	.byte	0
	.byte	240
	.byte	1
	.byte	7
	.byte	16
	.long	5985
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "bg_elements"
	.byte	0
	.long	5258
	.byte	1
	.byte	6
	.byte	3
	.byte	35
	.byte	236
	.byte	1
	.byte	2
	.byte	0
	.byte	18
	.long	6076
	.byte	4
	.byte	1
	.byte	0
	.byte	11
	.long	6192
	.ascii	 "_ccVertex3F"
	.byte	0
	.byte	12
	.byte	1
	.byte	150
	.byte	12
	.byte	120
	.byte	0
	.long	700
	.byte	1
	.byte	151
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.byte	121
	.byte	0
	.long	700
	.byte	1
	.byte	152
	.byte	2
	.byte	35
	.byte	4
	.byte	12
	.byte	122
	.byte	0
	.long	700
	.byte	1
	.byte	153
	.byte	2
	.byte	35
	.byte	8
	.byte	0
	.byte	10
	.long	6135
	.ascii	 "ccVertex3F"
	.byte	0
	.byte	1
	.byte	154
	.byte	11
	.long	6278
	.ascii	 "_ccColor4B"
	.byte	0
	.byte	4
	.byte	1
	.byte	82
	.byte	12
	.byte	114
	.byte	0
	.long	5638
	.byte	1
	.byte	83
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.byte	103
	.byte	0
	.long	5638
	.byte	1
	.byte	84
	.byte	2
	.byte	35
	.byte	1
	.byte	12
	.byte	98
	.byte	0
	.long	5638
	.byte	1
	.byte	85
	.byte	2
	.byte	35
	.byte	2
	.byte	12
	.byte	97
	.byte	0
	.long	5638
	.byte	1
	.byte	86
	.byte	2
	.byte	35
	.byte	3
	.byte	0
	.byte	10
	.long	6210
	.ascii	 "ccColor4B"
	.byte	0
	.byte	1
	.byte	87
	.byte	11
	.long	6337
	.ascii	 "_ccTex2F"
	.byte	0
	.byte	8
	.byte	1
	.byte	159
	.byte	12
	.byte	117
	.byte	0
	.long	700
	.byte	1
	.byte	160
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.byte	118
	.byte	0
	.long	700
	.byte	1
	.byte	161
	.byte	2
	.byte	35
	.byte	4
	.byte	0
	.byte	10
	.long	6295
	.ascii	 "ccTex2F"
	.byte	0
	.byte	1
	.byte	162
	.byte	11
	.long	6432
	.ascii	 "_ccV3F_C4B_T2F"
	.byte	0
	.byte	24
	.byte	1
	.byte	229
	.byte	12
	.ascii	 "vertices"
	.byte	0
	.long	6192
	.byte	1
	.byte	231
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.ascii	 "colors"
	.byte	0
	.long	6278
	.byte	1
	.byte	235
	.byte	2
	.byte	35
	.byte	12
	.byte	12
	.ascii	 "texCoords"
	.byte	0
	.long	6337
	.byte	1
	.byte	239
	.byte	2
	.byte	35
	.byte	16
	.byte	0
	.byte	10
	.long	6352
	.ascii	 "ccV3F_C4B_T2F"
	.byte	0
	.byte	1
	.byte	240
	.byte	36
	.long	6539
	.ascii	 "_ccV3F_C4B_T2F_Quad"
	.byte	0
	.byte	96
	.byte	1
	.short	257
	.byte	37
	.ascii	 "tl"
	.byte	0
	.long	6432
	.byte	1
	.short	259
	.byte	2
	.byte	35
	.byte	0
	.byte	37
	.ascii	 "bl"
	.byte	0
	.long	6432
	.byte	1
	.short	261
	.byte	2
	.byte	35
	.byte	24
	.byte	37
	.ascii	 "tr"
	.byte	0
	.long	6432
	.byte	1
	.short	263
	.byte	2
	.byte	35
	.byte	48
	.byte	37
	.ascii	 "br"
	.byte	0
	.long	6432
	.byte	1
	.short	265
	.byte	2
	.byte	35
	.byte	72
	.byte	0
	.byte	22
	.long	6453
	.ascii	 "ccV3F_C4B_T2F_Quad"
	.byte	0
	.byte	1
	.short	266
	.byte	18
	.long	6539
	.byte	4
	.byte	1
	.byte	0
	.byte	2
	.byte	7
	.ascii	 "short unsigned int"
	.byte	0
	.byte	2
	.byte	10
	.long	6574
	.ascii	 "GLushort"
	.byte	0
	.byte	1
	.byte	53
	.byte	18
	.long	6596
	.byte	4
	.byte	1
	.byte	0
	.byte	14
	.long	6636
	.long	1050
	.byte	15
	.long	715
	.byte	1
	.byte	0
	.byte	8
	.long	6813
	.byte	16
	.ascii	 "CCTextureAtlas"
	.byte	0
	.byte	36
	.byte	1
	.byte	54
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "totalQuads_"
	.byte	0
	.long	1064
	.byte	1
	.byte	45
	.byte	2
	.byte	35
	.byte	4
	.byte	2
	.byte	17
	.ascii	 "capacity_"
	.byte	0
	.long	1064
	.byte	1
	.byte	46
	.byte	2
	.byte	35
	.byte	8
	.byte	2
	.byte	17
	.ascii	 "quads_"
	.byte	0
	.long	6566
	.byte	1
	.byte	47
	.byte	2
	.byte	35
	.byte	12
	.byte	2
	.byte	17
	.ascii	 "indices_"
	.byte	0
	.long	6612
	.byte	1
	.byte	48
	.byte	2
	.byte	35
	.byte	16
	.byte	2
	.byte	17
	.ascii	 "texture_"
	.byte	0
	.long	1899
	.byte	1
	.byte	49
	.byte	2
	.byte	35
	.byte	20
	.byte	2
	.byte	17
	.ascii	 "buffersVBO_"
	.byte	0
	.long	6620
	.byte	1
	.byte	51
	.byte	2
	.byte	35
	.byte	24
	.byte	2
	.byte	17
	.ascii	 "dirty_"
	.byte	0
	.long	499
	.byte	1
	.byte	52
	.byte	2
	.byte	35
	.byte	32
	.byte	2
	.byte	0
	.byte	18
	.long	6636
	.byte	4
	.byte	1
	.byte	0
	.byte	10
	.long	1034
	.ascii	 "GLenum"
	.byte	0
	.byte	1
	.byte	45
	.byte	36
	.long	6888
	.ascii	 "_ccBlendFunc"
	.byte	0
	.byte	8
	.byte	1
	.short	283
	.byte	37
	.ascii	 "src"
	.byte	0
	.long	6821
	.byte	1
	.short	285
	.byte	2
	.byte	35
	.byte	0
	.byte	37
	.ascii	 "dst"
	.byte	0
	.long	6821
	.byte	1
	.short	287
	.byte	2
	.byte	35
	.byte	4
	.byte	0
	.byte	22
	.long	6835
	.ascii	 "ccBlendFunc"
	.byte	0
	.byte	1
	.short	288
	.byte	10
	.long	5977
	.ascii	 "SEL"
	.byte	0
	.byte	1
	.byte	42
	.byte	18
	.long	7362
	.byte	4
	.byte	1
	.byte	0
	.byte	18
	.long	954
	.byte	4
	.byte	1
	.byte	0
	.byte	38
	.long	6962
	.byte	1
	.byte	39
	.long	2221
	.byte	39
	.long	6908
	.byte	39
	.long	6919
	.byte	39
	.long	6927
	.byte	0
	.byte	18
	.long	6935
	.byte	4
	.byte	1
	.byte	0
	.byte	40
	.long	7118
	.byte	16
	.ascii	 "CCSpriteBatchNode"
	.byte	0
	.short	256
	.byte	1
	.byte	32
	.byte	16
	.long	2401
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "textureAtlas_"
	.byte	0
	.long	6813
	.byte	1
	.byte	56
	.byte	3
	.byte	35
	.byte	236
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "blendFunc_"
	.byte	0
	.long	6888
	.byte	1
	.byte	57
	.byte	3
	.byte	35
	.byte	240
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "descendants_"
	.byte	0
	.long	2381
	.byte	1
	.byte	60
	.byte	3
	.byte	35
	.byte	248
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "updateAtlasIndexMethod_"
	.byte	0
	.long	6962
	.byte	1
	.byte	64
	.byte	3
	.byte	35
	.byte	252
	.byte	1
	.byte	3
	.byte	0
	.byte	18
	.long	6970
	.byte	4
	.byte	1
	.byte	0
	.byte	19
	.long	7307
	.byte	4
	.byte	1
	.byte	46
	.byte	20
	.ascii	 "CC_HONOR_PARENT_TRANSFORM_TRANSLATE"
	.byte	0
	.byte	1
	.byte	20
	.ascii	 "CC_HONOR_PARENT_TRANSFORM_ROTATE"
	.byte	0
	.byte	2
	.byte	20
	.ascii	 "CC_HONOR_PARENT_TRANSFORM_SCALE"
	.byte	0
	.byte	4
	.byte	20
	.ascii	 "CC_HONOR_PARENT_TRANSFORM_SKEW"
	.byte	0
	.byte	8
	.byte	20
	.ascii	 "CC_HONOR_PARENT_TRANSFORM_ALL"
	.byte	0
	.byte	15
	.byte	0
	.byte	10
	.long	7126
	.ascii	 "ccHonorParentTransform"
	.byte	0
	.byte	1
	.byte	59
	.byte	38
	.long	7354
	.byte	1
	.byte	39
	.long	2221
	.byte	39
	.long	6908
	.byte	0
	.byte	18
	.long	7337
	.byte	4
	.byte	1
	.byte	0
	.byte	40
	.long	7994
	.byte	16
	.ascii	 "CCSprite"
	.byte	0
	.short	440
	.byte	1
	.byte	137
	.byte	16
	.long	2401
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "textureAtlas_"
	.byte	0
	.long	6813
	.byte	1
	.byte	89
	.byte	3
	.byte	35
	.byte	236
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "atlasIndex_"
	.byte	0
	.long	1064
	.byte	1
	.byte	90
	.byte	3
	.byte	35
	.byte	240
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "batchNode_"
	.byte	0
	.long	7118
	.byte	1
	.byte	91
	.byte	3
	.byte	35
	.byte	244
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "honorParentTransform_"
	.byte	0
	.long	7307
	.byte	1
	.byte	92
	.byte	3
	.byte	35
	.byte	248
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "dirty_"
	.byte	0
	.long	499
	.byte	1
	.byte	93
	.byte	3
	.byte	35
	.byte	252
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "recursiveDirty_"
	.byte	0
	.long	499
	.byte	1
	.byte	94
	.byte	3
	.byte	35
	.byte	253
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "hasChildren_"
	.byte	0
	.long	499
	.byte	1
	.byte	95
	.byte	3
	.byte	35
	.byte	254
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "blendFunc_"
	.byte	0
	.long	6888
	.byte	1
	.byte	100
	.byte	3
	.byte	35
	.byte	128
	.byte	2
	.byte	2
	.byte	17
	.ascii	 "texture_"
	.byte	0
	.long	1899
	.byte	1
	.byte	101
	.byte	3
	.byte	35
	.byte	136
	.byte	2
	.byte	2
	.byte	17
	.ascii	 "usesBatchNode_"
	.byte	0
	.long	499
	.byte	1
	.byte	108
	.byte	3
	.byte	35
	.byte	140
	.byte	2
	.byte	2
	.byte	17
	.ascii	 "rect_"
	.byte	0
	.long	3576
	.byte	1
	.byte	111
	.byte	3
	.byte	35
	.byte	144
	.byte	2
	.byte	2
	.byte	17
	.ascii	 "rectInPixels_"
	.byte	0
	.long	3576
	.byte	1
	.byte	112
	.byte	3
	.byte	35
	.byte	160
	.byte	2
	.byte	2
	.byte	17
	.ascii	 "rectRotated_"
	.byte	0
	.long	499
	.byte	1
	.byte	113
	.byte	3
	.byte	35
	.byte	176
	.byte	2
	.byte	2
	.byte	17
	.ascii	 "offsetPositionInPixels_"
	.byte	0
	.long	469
	.byte	1
	.byte	116
	.byte	3
	.byte	35
	.byte	180
	.byte	2
	.byte	2
	.byte	17
	.ascii	 "unflippedOffsetPositionFromCenter_"
	.byte	0
	.long	469
	.byte	1
	.byte	117
	.byte	3
	.byte	35
	.byte	188
	.byte	2
	.byte	2
	.byte	17
	.ascii	 "quad_"
	.byte	0
	.long	6539
	.byte	1
	.byte	120
	.byte	3
	.byte	35
	.byte	196
	.byte	2
	.byte	2
	.byte	17
	.ascii	 "opacity_"
	.byte	0
	.long	5638
	.byte	1
	.byte	123
	.byte	3
	.byte	35
	.byte	164
	.byte	3
	.byte	2
	.byte	17
	.ascii	 "color_"
	.byte	0
	.long	5709
	.byte	1
	.byte	124
	.byte	3
	.byte	35
	.byte	165
	.byte	3
	.byte	2
	.byte	17
	.ascii	 "colorUnmodified_"
	.byte	0
	.long	5709
	.byte	1
	.byte	125
	.byte	3
	.byte	35
	.byte	168
	.byte	3
	.byte	2
	.byte	17
	.ascii	 "opacityModifyRGB_"
	.byte	0
	.long	499
	.byte	1
	.byte	126
	.byte	3
	.byte	35
	.byte	171
	.byte	3
	.byte	2
	.byte	17
	.ascii	 "flipX_"
	.byte	0
	.long	499
	.byte	1
	.byte	129
	.byte	3
	.byte	35
	.byte	172
	.byte	3
	.byte	2
	.byte	17
	.ascii	 "flipY_"
	.byte	0
	.long	499
	.byte	1
	.byte	130
	.byte	3
	.byte	35
	.byte	173
	.byte	3
	.byte	2
	.byte	12
	.ascii	 "updateMethod"
	.byte	0
	.long	7354
	.byte	1
	.byte	134
	.byte	3
	.byte	35
	.byte	176
	.byte	3
	.byte	12
	.ascii	 "sortMethod"
	.byte	0
	.long	7354
	.byte	1
	.byte	135
	.byte	3
	.byte	35
	.byte	180
	.byte	3
	.byte	0
	.byte	40
	.long	8074
	.byte	16
	.ascii	 "Player"
	.byte	0
	.short	452
	.byte	1
	.byte	7
	.byte	16
	.long	7362
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "vx"
	.byte	0
	.long	144
	.byte	1
	.byte	5
	.byte	3
	.byte	35
	.byte	184
	.byte	3
	.byte	2
	.byte	17
	.ascii	 "vy"
	.byte	0
	.long	144
	.byte	1
	.byte	5
	.byte	3
	.byte	35
	.byte	188
	.byte	3
	.byte	2
	.byte	17
	.ascii	 "player_img"
	.byte	0
	.long	6919
	.byte	1
	.byte	6
	.byte	3
	.byte	35
	.byte	192
	.byte	3
	.byte	2
	.byte	0
	.byte	18
	.long	7994
	.byte	4
	.byte	1
	.byte	0
	.byte	8
	.long	8177
	.byte	16
	.ascii	 "GameEngineLayer"
	.byte	0
	.byte	248
	.byte	1
	.byte	22
	.byte	16
	.long	5985
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "islands"
	.byte	0
	.long	5258
	.byte	1
	.byte	19
	.byte	3
	.byte	35
	.byte	236
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "player"
	.byte	0
	.long	8074
	.byte	1
	.byte	20
	.byte	3
	.byte	35
	.byte	240
	.byte	1
	.byte	2
	.byte	17
	.ascii	 "is_touch"
	.byte	0
	.long	499
	.byte	1
	.byte	21
	.byte	3
	.byte	35
	.byte	244
	.byte	1
	.byte	2
	.byte	0
	.byte	18
	.long	8082
	.byte	4
	.byte	1
	.byte	0
	.byte	11
	.long	8255
	.ascii	 "_objc_super"
	.byte	0
	.byte	8
	.byte	1
	.byte	0
	.byte	23
	.ascii	 "self"
	.byte	0
	.long	2221
	.byte	1
	.byte	0
	.byte	0
	.byte	32
	.long	4294967264
	.long	4294967295
	.byte	2
	.byte	35
	.byte	0
	.byte	23
	.ascii	 "cls"
	.byte	0
	.long	356
	.byte	1
	.byte	0
	.byte	0
	.byte	32
	.long	4294967264
	.long	4294967295
	.byte	2
	.byte	35
	.byte	4
	.byte	0
	.byte	40
	.long	8354
	.byte	16
	.ascii	 "Island"
	.byte	0
	.short	456
	.byte	1
	.byte	14
	.byte	16
	.long	7362
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "startX"
	.byte	0
	.long	144
	.byte	1
	.byte	13
	.byte	3
	.byte	35
	.byte	184
	.byte	3
	.byte	2
	.byte	17
	.ascii	 "startY"
	.byte	0
	.long	144
	.byte	1
	.byte	13
	.byte	3
	.byte	35
	.byte	188
	.byte	3
	.byte	2
	.byte	17
	.ascii	 "endX"
	.byte	0
	.long	144
	.byte	1
	.byte	13
	.byte	3
	.byte	35
	.byte	192
	.byte	3
	.byte	2
	.byte	17
	.ascii	 "endY"
	.byte	0
	.long	144
	.byte	1
	.byte	13
	.byte	3
	.byte	35
	.byte	196
	.byte	3
	.byte	2
	.byte	0
	.byte	18
	.long	8255
	.byte	4
	.byte	1
	.byte	0
	.byte	2
	.byte	7
	.ascii	 "long unsigned int"
	.byte	0
	.byte	4
	.byte	2
	.byte	6
	.ascii	 "char"
	.byte	0
	.byte	1
	.byte	18
	.long	8383
	.byte	4
	.byte	1
	.byte	0
	.byte	41
	.long	8562
	.byte	1
	.ascii	 "__block_descriptor_withcopydispose"
	.byte	0
	.byte	24
	.byte	1
	.byte	68
	.byte	12
	.ascii	 "reserved"
	.byte	0
	.long	8362
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.ascii	 "Size"
	.byte	0
	.long	8362
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	4
	.byte	12
	.ascii	 "CopyFuncPtr"
	.byte	0
	.long	2397
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	8
	.byte	12
	.ascii	 "DestroyFuncPtr"
	.byte	0
	.long	2397
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	12
	.byte	12
	.ascii	 "signature"
	.byte	0
	.long	8391
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	16
	.byte	12
	.ascii	 "layout"
	.byte	0
	.long	8391
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	20
	.byte	0
	.byte	18
	.long	8399
	.byte	4
	.byte	1
	.byte	0
	.byte	11
	.long	8710
	.ascii	 "__block_literal_1"
	.byte	0
	.byte	24
	.byte	1
	.byte	68
	.byte	12
	.ascii	 "__isa"
	.byte	0
	.long	2397
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	0
	.byte	12
	.ascii	 "__flags"
	.byte	0
	.long	947
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	4
	.byte	12
	.ascii	 "__reserved"
	.byte	0
	.long	947
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	8
	.byte	12
	.ascii	 "__FuncPtr"
	.byte	0
	.long	2397
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	12
	.byte	12
	.ascii	 "__descriptor"
	.byte	0
	.long	8562
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	16
	.byte	12
	.ascii	 "self"
	.byte	0
	.long	8177
	.byte	1
	.byte	68
	.byte	2
	.byte	35
	.byte	20
	.byte	0
	.byte	18
	.long	8570
	.byte	4
	.byte	1
	.byte	0
	.byte	42
	.long	8177
	.byte	4
	.byte	1
	.byte	0
	.byte	22
	.long	144
	.ascii	 "ccTime"
	.byte	0
	.byte	1
	.short	308
	.byte	8
	.long	8766
	.byte	16
	.ascii	 "NSSet"
	.byte	0
	.byte	4
	.byte	1
	.byte	8
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	0
	.byte	18
	.long	8741
	.byte	4
	.byte	1
	.byte	0
	.byte	2
	.byte	4
	.ascii	 "double"
	.byte	0
	.byte	8
	.byte	10
	.long	8774
	.ascii	 "NSTimeInterval"
	.byte	0
	.byte	1
	.byte	11
	.byte	8
	.long	8855
	.byte	16
	.ascii	 "UIEvent"
	.byte	0
	.byte	12
	.byte	1
	.byte	44
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	17
	.ascii	 "_timestamp"
	.byte	0
	.long	8784
	.byte	1
	.byte	43
	.byte	2
	.byte	35
	.byte	4
	.byte	3
	.byte	0
	.byte	18
	.long	8806
	.byte	4
	.byte	1
	.byte	0
	.byte	8
	.long	8891
	.byte	16
	.ascii	 "NSString"
	.byte	0
	.byte	4
	.byte	1
	.byte	252
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	0
	.byte	18
	.long	8863
	.byte	4
	.byte	1
	.byte	0
	.byte	8
	.long	8925
	.byte	16
	.ascii	 "NSData"
	.byte	0
	.byte	4
	.byte	1
	.byte	10
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	0
	.byte	18
	.long	8899
	.byte	4
	.byte	1
	.byte	0
	.byte	18
	.long	5197
	.byte	4
	.byte	1
	.byte	0
	.byte	8
	.long	8973
	.byte	16
	.ascii	 "NSDictionary"
	.byte	0
	.byte	4
	.byte	1
	.byte	7
	.byte	16
	.long	369
	.byte	2
	.byte	35
	.byte	0
	.byte	1
	.byte	0
	.byte	18
	.long	8941
	.byte	4
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
Linfo_end1:
	.section	__DWARF,__debug_abbrev,regular,debug
Labbrev_begin:
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	8
	.byte	19
	.byte	11
	.byte	3
	.byte	8
	.byte	82
	.byte	1
	.byte	16
	.byte	6
	.byte	27
	.byte	8
	.byte	229
	.byte	127
	.byte	11
	.byte	0
	.byte	0
	.byte	2
	.byte	36
	.byte	0
	.byte	62
	.byte	11
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	3
	.byte	46
	.byte	1
	.byte	1
	.byte	19
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	12
	.byte	73
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.byte	0
	.byte	0
	.byte	4
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	5
	.byte	11
	.byte	0
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	6
	.byte	19
	.byte	0
	.byte	3
	.byte	8
	.byte	60
	.byte	12
	.byte	0
	.byte	0
	.byte	7
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	8
	.byte	19
	.byte	1
	.byte	1
	.byte	19
	.byte	230
	.byte	127
	.byte	11
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	9
	.byte	13
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	11
	.byte	12
	.byte	7
	.byte	56
	.byte	10
	.byte	50
	.byte	12
	.byte	0
	.byte	0
	.byte	10
	.byte	22
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	11
	.byte	19
	.byte	1
	.byte	1
	.byte	19
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	12
	.byte	13
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	56
	.byte	10
	.byte	0
	.byte	0
	.byte	13
	.byte	36
	.byte	0
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	14
	.byte	1
	.byte	1
	.byte	1
	.byte	19
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	15
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	11
	.byte	0
	.byte	0
	.byte	16
	.byte	28
	.byte	0
	.byte	73
	.byte	19
	.byte	56
	.byte	10
	.byte	50
	.byte	12
	.byte	0
	.byte	0
	.byte	17
	.byte	13
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	56
	.byte	10
	.byte	50
	.byte	12
	.byte	0
	.byte	0
	.byte	18
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	19
	.byte	4
	.byte	1
	.byte	1
	.byte	19
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	20
	.byte	40
	.byte	0
	.byte	3
	.byte	8
	.byte	28
	.byte	13
	.byte	0
	.byte	0
	.byte	21
	.byte	4
	.byte	1
	.byte	1
	.byte	19
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	0
	.byte	0
	.byte	22
	.byte	22
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	0
	.byte	0
	.byte	23
	.byte	13
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	11
	.byte	12
	.byte	7
	.byte	56
	.byte	10
	.byte	0
	.byte	0
	.byte	24
	.byte	15
	.byte	0
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	25
	.byte	13
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	11
	.byte	11
	.byte	13
	.byte	11
	.byte	12
	.byte	11
	.byte	56
	.byte	10
	.byte	50
	.byte	12
	.byte	0
	.byte	0
	.byte	26
	.byte	11
	.byte	1
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	27
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	28
	.byte	46
	.byte	1
	.byte	1
	.byte	19
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	39
	.byte	12
	.byte	73
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.byte	0
	.byte	0
	.byte	29
	.byte	5
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	30
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	73
	.byte	19
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	31
	.byte	46
	.byte	1
	.byte	1
	.byte	19
	.byte	3
	.byte	8
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	12
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	64
	.byte	10
	.byte	0
	.byte	0
	.byte	32
	.byte	46
	.byte	0
	.byte	3
	.byte	8
	.byte	39
	.byte	12
	.byte	0
	.byte	0
	.byte	33
	.byte	11
	.byte	1
	.byte	1
	.byte	19
	.byte	85
	.byte	6
	.byte	0
	.byte	0
	.byte	34
	.byte	11
	.byte	1
	.byte	1
	.byte	19
	.byte	17
	.byte	1
	.byte	18
	.byte	1
	.byte	0
	.byte	0
	.byte	35
	.byte	52
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	36
	.byte	19
	.byte	1
	.byte	1
	.byte	19
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	0
	.byte	0
	.byte	37
	.byte	13
	.byte	0
	.byte	3
	.byte	8
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	5
	.byte	56
	.byte	10
	.byte	0
	.byte	0
	.byte	38
	.byte	21
	.byte	1
	.byte	1
	.byte	19
	.byte	39
	.byte	12
	.byte	0
	.byte	0
	.byte	39
	.byte	5
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	40
	.byte	19
	.byte	1
	.byte	1
	.byte	19
	.byte	230
	.byte	127
	.byte	11
	.byte	3
	.byte	8
	.byte	11
	.byte	5
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	41
	.byte	19
	.byte	1
	.byte	1
	.byte	19
	.byte	228
	.byte	127
	.byte	12
	.byte	3
	.byte	8
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	42
	.byte	38
	.byte	0
	.byte	73
	.byte	19
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	0
Labbrev_end:
	.section	__DWARF,__debug_line,regular,debug
Lset145 = Lline_end-Lline_begin
	.long	Lset145
Lline_begin:
	.short	2
Lset146 = Lline_prolog_end-Lline_prolog_begin
	.long	Lset146
Lline_prolog_begin:
	.byte	1
	.byte	1
	.byte	246
	.byte	245
	.byte	10
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.asciz	 "/Users/studentuser/Desktop/GOstritch/Classes"
	.asciz	 "/Developer/Platforms/iPhoneSimulator.platform/Developer/SDKs/iPhoneSimulator4.3.sdk/System/Library/Frameworks/CoreGraphics.framework/Headers"
	.byte	0
	.asciz	 "GameEngineLayer.m"
	.byte	1
	.byte	0
	.byte	0
	.asciz	 "CGGeometry.h"
	.byte	2
	.byte	0
	.byte	0
	.byte	0
Lline_prolog_end:
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp3
	.byte	30
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp4
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp9
	.byte	23
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp10
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp15
	.byte	24
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp16
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp17
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp18
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp19
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp20
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp21
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp26
	.byte	24
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp27
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp28
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp29
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp30
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp31
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp32
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp33
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp34
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp35
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp36
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp38
	.byte	24
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp43
	.byte	4
	.byte	2
	.byte	232
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp44
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp49
	.byte	31
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp50
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp51
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp52
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp57
	.byte	4
	.byte	1
	.byte	3
	.byte	160
	.byte	126
	.byte	1
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp58
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp59
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp60
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp61
	.byte	19
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp62
	.byte	23
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp73
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp74
	.byte	31
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp75
	.byte	10
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp76
	.byte	31
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp81
	.byte	3
	.byte	117
	.byte	1
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp82
	.byte	1
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp83
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp84
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp85
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp86
	.byte	19
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp87
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp88
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp89
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp90
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp91
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp92
	.byte	16
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp97
	.byte	29
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp98
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp99
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp101
	.byte	1
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp102
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp103
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp104
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp105
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp106
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp107
	.byte	23
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp109
	.byte	14
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp111
	.byte	29
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp112
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp113
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp114
	.byte	23
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp115
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp116
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp117
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp118
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp119
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp121
	.byte	15
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp123
	.byte	29
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp124
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp125
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp126
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp127
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp128
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp129
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp130
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp131
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp132
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp133
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp134
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp135
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp136
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp138
	.byte	23
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp139
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp140
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp141
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp142
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp143
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp144
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp145
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp146
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp147
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp148
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp149
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp151
	.byte	15
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp153
	.byte	30
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp154
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp156
	.byte	23
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp157
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp158
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp159
	.byte	23
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp160
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp161
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp166
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp167
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp168
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp173
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp174
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp179
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp180
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp181
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp186
	.byte	25
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp187
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp188
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp193
	.byte	23
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp194
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp195
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp196
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp197
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp198
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp199
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp200
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp201
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp202
	.byte	21
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp203
	.byte	22
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp204
	.byte	25
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp205
	.byte	23
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp207
	.byte	3
	.byte	116
	.byte	1
	.byte	0
	.byte	5
	.byte	2
	.long	Ltmp209
	.byte	35
	.byte	0
	.byte	5
	.byte	2
	.long	Lsection_end1
	.byte	0
	.byte	1
	.byte	1
Lline_end:
	.section	__DWARF,__debug_pubnames,regular,debug
Lset147 = Lpubnames_end1-Lpubnames_begin1
	.long	Lset147
Lpubnames_begin1:
	.short	2
Lset148 = Linfo_begin1-Lsection_info
	.long	Lset148
Lset149 = Linfo_end1-Linfo_begin1
	.long	Lset149
	.long	3845
	.asciz	 "__destroy_helper_block_1"
	.long	248
	.asciz	 "+[GameEngineLayer get_cur_pos_y]"
	.long	4677
	.asciz	 "-[GameEngineLayer ccTouchesBegan:withEvent:]"
	.long	5747
	.asciz	 "ccYELLOW"
	.long	5873
	.asciz	 "ccORANGE"
	.long	3712
	.asciz	 "-[GameEngineLayer loadMap]"
	.long	3443
	.asciz	 "CGPointMake"
	.long	5915
	.asciz	 "cur_pos_x"
	.long	5938
	.asciz	 "cur_pos_y"
	.long	3590
	.asciz	 "CGRectMake"
	.long	5895
	.asciz	 "ccGRAY"
	.long	5266
	.asciz	 "+[GameEngineLayer loadIslands]"
	.long	4816
	.asciz	 "-[GameEngineLayer ccTouchesMoved:withEvent:]"
	.long	153
	.asciz	 "+[GameEngineLayer get_cur_pos_x]"
	.long	5810
	.asciz	 "ccRED"
	.long	5829
	.asciz	 "ccMAGENTA"
	.long	5852
	.asciz	 "ccBLACK"
	.long	4953
	.asciz	 "-[GameEngineLayer ccTouchesEnded:withEvent:]"
	.long	3324
	.asciz	 "-[GameEngineLayer init]"
	.long	3872
	.asciz	 "-[GameEngineLayer sort_islands]"
	.long	5726
	.asciz	 "ccWHITE"
	.long	5090
	.asciz	 "-[GameEngineLayer dealloc]"
	.long	3962
	.asciz	 "__-[GameEngineLayer sort_islands]_block_invoke_1"
	.long	5769
	.asciz	 "ccBLUE"
	.long	4147
	.asciz	 "-[GameEngineLayer update:]"
	.long	3821
	.asciz	 "__copy_helper_block_1"
	.long	5789
	.asciz	 "ccGREEN"
	.long	3186
	.asciz	 "+[GameEngineLayer scene]"
	.long	0
Lpubnames_end1:
	.section	__DWARF,__debug_pubtypes,regular,debug
Lset150 = Lpubtypes_end1-Lpubtypes_begin1
	.long	Lset150
Lpubtypes_begin1:
	.short	2
Lset151 = Linfo_begin1-Lsection_info
	.long	Lset151
Lset152 = Linfo_end1-Linfo_begin1
	.long	Lset152
	.long	8806
	.asciz	 "UIEvent"
	.long	2176
	.asciz	 "objc_object"
	.long	3151
	.asciz	 "CCScene"
	.long	8570
	.asciz	 "__block_literal_1"
	.long	428
	.asciz	 "CGPoint"
	.long	3528
	.asciz	 "CGRect"
	.long	5224
	.asciz	 "NSMutableArray"
	.long	8082
	.asciz	 "GameEngineLayer"
	.long	8741
	.asciz	 "NSSet"
	.long	0
Lpubtypes_end1:
	.section	__DWARF,__debug_aranges,regular,debug
	.section	__DWARF,__debug_ranges,regular,debug
	.long	Ltmp99
	.long	Ltmp100
	.long	Ltmp103
	.long	Ltmp110
	.long	0
	.long	0
	.section	__DWARF,__debug_macinfo,regular,debug
	.section	__DWARF,__debug_inlined,regular,debug
Lset153 = Ldebug_inlined_end1-Ldebug_inlined_begin1
	.long	Lset153
Ldebug_inlined_begin1:
	.short	2
	.byte	4
Ldebug_inlined_end1:
	.weak_reference __NSConcreteStackBlock
	.weak_reference __Block_object_dispose
	.weak_reference __Block_object_assign

	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L__NSConcreteStackBlock$non_lazy_ptr:
.indirect_symbol __NSConcreteStackBlock
	.long	0

.subsections_via_symbols
