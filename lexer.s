	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	_get_err_str                    ; -- Begin function get_err_str
	.p2align	2
_get_err_str:                           ; @get_err_str
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	add	w8, w8, #5
	mov	w8, w8
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	subs	x8, x8, #5
	cset	w8, hi
	tbnz	w8, #0, LBB0_8
; %bb.1:
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	adrp	x10, lJTI0_0@PAGE
	add	x10, x10, lJTI0_0@PAGEOFF
Ltmp1:
	adr	x8, Ltmp1
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB0_2:
	adrp	x8, l_.str@PAGE
	add	x8, x8, l_.str@PAGEOFF
	str	x8, [sp, #24]
	b	LBB0_9
LBB0_3:
	adrp	x8, l_.str.1@PAGE
	add	x8, x8, l_.str.1@PAGEOFF
	str	x8, [sp, #24]
	b	LBB0_9
LBB0_4:
	adrp	x8, l_.str.2@PAGE
	add	x8, x8, l_.str.2@PAGEOFF
	str	x8, [sp, #24]
	b	LBB0_9
LBB0_5:
	adrp	x8, l_.str.3@PAGE
	add	x8, x8, l_.str.3@PAGEOFF
	str	x8, [sp, #24]
	b	LBB0_9
LBB0_6:
	adrp	x8, l_.str.4@PAGE
	add	x8, x8, l_.str.4@PAGEOFF
	str	x8, [sp, #24]
	b	LBB0_9
LBB0_7:
	adrp	x8, l_.str.5@PAGE
	add	x8, x8, l_.str.5@PAGEOFF
	str	x8, [sp, #24]
	b	LBB0_9
LBB0_8:
	adrp	x8, l_.str.6@PAGE
	add	x8, x8, l_.str.6@PAGEOFF
	str	x8, [sp, #24]
	b	LBB0_9
LBB0_9:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
	.p2align	2
lJTI0_0:
	.long	LBB0_7-Ltmp1
	.long	LBB0_3-Ltmp1
	.long	LBB0_4-Ltmp1
	.long	LBB0_5-Ltmp1
	.long	LBB0_6-Ltmp1
	.long	LBB0_2-Ltmp1
                                        ; -- End function
	.globl	_get_lex_str                    ; -- Begin function get_lex_str
	.p2align	2
_get_lex_str:                           ; @get_lex_str
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	w0, [sp, #20]
	ldr	w8, [sp, #20]
	add	w8, w8, #5
	mov	w8, w8
                                        ; kill: def $x8 killed $w8
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	subs	x8, x8, #50
	cset	w8, hi
	tbnz	w8, #0, LBB1_53
; %bb.1:
	ldr	x11, [sp, #8]                   ; 8-byte Folded Reload
	adrp	x10, lJTI1_0@PAGE
	add	x10, x10, lJTI1_0@PAGEOFF
Ltmp3:
	adr	x8, Ltmp3
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB1_2:
	adrp	x8, l_.str.7@PAGE
	add	x8, x8, l_.str.7@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_3:
	adrp	x8, l_.str.8@PAGE
	add	x8, x8, l_.str.8@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_4:
	adrp	x8, l_.str.9@PAGE
	add	x8, x8, l_.str.9@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_5:
	adrp	x8, l_.str.10@PAGE
	add	x8, x8, l_.str.10@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_6:
	adrp	x8, l_.str.11@PAGE
	add	x8, x8, l_.str.11@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_7:
	adrp	x8, l_.str.12@PAGE
	add	x8, x8, l_.str.12@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_8:
	adrp	x8, l_.str.13@PAGE
	add	x8, x8, l_.str.13@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_9:
	adrp	x8, l_.str.14@PAGE
	add	x8, x8, l_.str.14@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_10:
	adrp	x8, l_.str.15@PAGE
	add	x8, x8, l_.str.15@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_11:
	adrp	x8, l_.str.16@PAGE
	add	x8, x8, l_.str.16@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_12:
	adrp	x8, l_.str.17@PAGE
	add	x8, x8, l_.str.17@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_13:
	adrp	x8, l_.str.18@PAGE
	add	x8, x8, l_.str.18@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_14:
	adrp	x8, l_.str.19@PAGE
	add	x8, x8, l_.str.19@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_15:
	adrp	x8, l_.str.20@PAGE
	add	x8, x8, l_.str.20@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_16:
	adrp	x8, l_.str.21@PAGE
	add	x8, x8, l_.str.21@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_17:
	adrp	x8, l_.str.22@PAGE
	add	x8, x8, l_.str.22@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_18:
	adrp	x8, l_.str.23@PAGE
	add	x8, x8, l_.str.23@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_19:
	adrp	x8, l_.str.24@PAGE
	add	x8, x8, l_.str.24@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_20:
	adrp	x8, l_.str.25@PAGE
	add	x8, x8, l_.str.25@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_21:
	adrp	x8, l_.str.26@PAGE
	add	x8, x8, l_.str.26@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_22:
	adrp	x8, l_.str.27@PAGE
	add	x8, x8, l_.str.27@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_23:
	adrp	x8, l_.str.28@PAGE
	add	x8, x8, l_.str.28@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_24:
	adrp	x8, l_.str.29@PAGE
	add	x8, x8, l_.str.29@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_25:
	adrp	x8, l_.str.30@PAGE
	add	x8, x8, l_.str.30@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_26:
	adrp	x8, l_.str.31@PAGE
	add	x8, x8, l_.str.31@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_27:
	adrp	x8, l_.str.32@PAGE
	add	x8, x8, l_.str.32@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_28:
	adrp	x8, l_.str.33@PAGE
	add	x8, x8, l_.str.33@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_29:
	adrp	x8, l_.str.34@PAGE
	add	x8, x8, l_.str.34@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_30:
	adrp	x8, l_.str.35@PAGE
	add	x8, x8, l_.str.35@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_31:
	adrp	x8, l_.str.36@PAGE
	add	x8, x8, l_.str.36@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_32:
	adrp	x8, l_.str.37@PAGE
	add	x8, x8, l_.str.37@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_33:
	adrp	x8, l_.str.38@PAGE
	add	x8, x8, l_.str.38@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_34:
	adrp	x8, l_.str.39@PAGE
	add	x8, x8, l_.str.39@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_35:
	adrp	x8, l_.str.40@PAGE
	add	x8, x8, l_.str.40@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_36:
	adrp	x8, l_.str.41@PAGE
	add	x8, x8, l_.str.41@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_37:
	adrp	x8, l_.str.42@PAGE
	add	x8, x8, l_.str.42@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_38:
	adrp	x8, l_.str.43@PAGE
	add	x8, x8, l_.str.43@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_39:
	adrp	x8, l_.str.44@PAGE
	add	x8, x8, l_.str.44@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_40:
	adrp	x8, l_.str.45@PAGE
	add	x8, x8, l_.str.45@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_41:
	adrp	x8, l_.str.46@PAGE
	add	x8, x8, l_.str.46@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_42:
	adrp	x8, l_.str.47@PAGE
	add	x8, x8, l_.str.47@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_43:
	adrp	x8, l_.str.48@PAGE
	add	x8, x8, l_.str.48@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_44:
	adrp	x8, l_.str.49@PAGE
	add	x8, x8, l_.str.49@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_45:
	adrp	x8, l_.str.50@PAGE
	add	x8, x8, l_.str.50@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_46:
	adrp	x8, l_.str.51@PAGE
	add	x8, x8, l_.str.51@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_47:
	adrp	x8, l_.str.52@PAGE
	add	x8, x8, l_.str.52@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_48:
	adrp	x8, l_.str.53@PAGE
	add	x8, x8, l_.str.53@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_49:
	adrp	x8, l_.str.54@PAGE
	add	x8, x8, l_.str.54@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_50:
	adrp	x8, l_.str.55@PAGE
	add	x8, x8, l_.str.55@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_51:
	adrp	x8, l_.str.56@PAGE
	add	x8, x8, l_.str.56@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_52:
	adrp	x8, l_.str.57@PAGE
	add	x8, x8, l_.str.57@PAGEOFF
	str	x8, [sp, #24]
	b	LBB1_53
LBB1_53:
	ldr	x0, [sp, #24]
	add	sp, sp, #32
	ret
	.cfi_endproc
	.p2align	2
lJTI1_0:
	.long	LBB1_47-Ltmp3
	.long	LBB1_48-Ltmp3
	.long	LBB1_49-Ltmp3
	.long	LBB1_50-Ltmp3
	.long	LBB1_51-Ltmp3
	.long	LBB1_52-Ltmp3
	.long	LBB1_2-Ltmp3
	.long	LBB1_3-Ltmp3
	.long	LBB1_4-Ltmp3
	.long	LBB1_31-Ltmp3
	.long	LBB1_32-Ltmp3
	.long	LBB1_33-Ltmp3
	.long	LBB1_34-Ltmp3
	.long	LBB1_35-Ltmp3
	.long	LBB1_36-Ltmp3
	.long	LBB1_37-Ltmp3
	.long	LBB1_38-Ltmp3
	.long	LBB1_39-Ltmp3
	.long	LBB1_40-Ltmp3
	.long	LBB1_41-Ltmp3
	.long	LBB1_42-Ltmp3
	.long	LBB1_43-Ltmp3
	.long	LBB1_44-Ltmp3
	.long	LBB1_45-Ltmp3
	.long	LBB1_46-Ltmp3
	.long	LBB1_5-Ltmp3
	.long	LBB1_6-Ltmp3
	.long	LBB1_7-Ltmp3
	.long	LBB1_8-Ltmp3
	.long	LBB1_9-Ltmp3
	.long	LBB1_10-Ltmp3
	.long	LBB1_11-Ltmp3
	.long	LBB1_12-Ltmp3
	.long	LBB1_13-Ltmp3
	.long	LBB1_14-Ltmp3
	.long	LBB1_15-Ltmp3
	.long	LBB1_16-Ltmp3
	.long	LBB1_17-Ltmp3
	.long	LBB1_18-Ltmp3
	.long	LBB1_19-Ltmp3
	.long	LBB1_20-Ltmp3
	.long	LBB1_21-Ltmp3
	.long	LBB1_22-Ltmp3
	.long	LBB1_23-Ltmp3
	.long	LBB1_24-Ltmp3
	.long	LBB1_25-Ltmp3
	.long	LBB1_26-Ltmp3
	.long	LBB1_27-Ltmp3
	.long	LBB1_28-Ltmp3
	.long	LBB1_29-Ltmp3
	.long	LBB1_30-Ltmp3
                                        ; -- End function
	.globl	_error_check                    ; -- Begin function error_check
	.p2align	2
_error_check:                           ; @error_check
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	str	x1, [sp, #16]
	ldr	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	blr	x8
	str	w0, [sp, #12]
	ldr	w8, [sp, #12]
	subs	w8, w8, #0
	cset	w8, eq
	tbnz	w8, #0, LBB2_2
	b	LBB2_1
LBB2_1:
	ldur	x9, [x29, #-8]
	mov	w8, #1                          ; =0x1
	strb	w8, [x9, #48]
	ldur	x8, [x29, #-8]
	add	x0, x8, #40
	mov	x1, #40                         ; =0x28
	bl	__vec_push_get
	str	x0, [sp]
	ldr	w8, [sp, #12]
	ldr	x9, [sp]
	str	w8, [x9, #32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x9, [sp]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x9, [sp]
	str	x8, [x9, #24]
	b	LBB2_2
LBB2_2:
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_special                        ; -- Begin function special
	.p2align	2
_special:                               ; @special
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #44
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_1
LBB3_1:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #46
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_2
LBB3_2:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #35
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_3
LBB3_3:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #40
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_4
LBB3_4:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #41
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_5
LBB3_5:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #123
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_6
LBB3_6:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #125
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_7
LBB3_7:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #91
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_8
LBB3_8:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #93
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_9
LBB3_9:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #61
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_10
LBB3_10:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #62
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_11
LBB3_11:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #60
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_12
LBB3_12:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #58
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_13
LBB3_13:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #59
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_14
LBB3_14:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #64
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_15
LBB3_15:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #45
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_16
LBB3_16:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #42
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_17
LBB3_17:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #43
	cset	w8, eq
	mov	w9, #1                          ; =0x1
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB3_19
	b	LBB3_18
LBB3_18:
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #47
	cset	w8, eq
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB3_19
LBB3_19:
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	and	w0, w8, #0x1
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ch                             ; -- Begin function ch
	.p2align	2
_ch:                                    ; @ch
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	bl	_adv
	ldur	x8, [x29, #-8]
	add	x0, x8, #40
	mov	x1, #40                         ; =0x28
	bl	__vec_push_get
	str	x0, [sp, #8]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	str	w8, [x9, #32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_skip_comm                      ; -- Begin function skip_comm
	.p2align	2
_skip_comm:                             ; @skip_comm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #16
	.cfi_def_cfa_offset 16
	str	x0, [sp, #8]
	b	LBB5_1
LBB5_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, hs
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB5_4
	b	LBB5_2
LBB5_2:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	x10, [sp, #8]
	ldr	x8, [x10, #16]
	add	x9, x8, #1
	str	x9, [x10, #16]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #4]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB5_4
	b	LBB5_3
LBB5_3:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x11, [sp, #8]
	ldr	x9, [x11, #32]
	add	x10, x9, #1
	str	x10, [x11, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #10
	cset	w8, ne
	str	w8, [sp, #4]                    ; 4-byte Folded Spill
	b	LBB5_4
LBB5_4:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #4]                    ; 4-byte Folded Reload
	tbz	w8, #0, LBB5_6
	b	LBB5_5
LBB5_5:                                 ;   in Loop: Header=BB5_1 Depth=1
	b	LBB5_1
LBB5_6:
	add	sp, sp, #16
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_comp                           ; -- Begin function comp
	.p2align	2
_comp:                                  ; @comp
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x0, [x29, #-8]
	bl	_adv
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB6_9
	b	LBB6_1
LBB6_1:
	ldur	w8, [x29, #-12]
	subs	w8, w8, #30
	cset	w8, ne
	tbnz	w8, #0, LBB6_5
	b	LBB6_2
LBB6_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #61
	cset	w8, ne
	tbnz	w8, #0, LBB6_4
	b	LBB6_3
LBB6_3:
	ldur	x0, [x29, #-8]
	mov	w1, #31                         ; =0x1f
	bl	_ch
	b	LBB6_4
LBB6_4:
	b	LBB6_8
LBB6_5:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #61
	cset	w8, ne
	tbnz	w8, #0, LBB6_7
	b	LBB6_6
LBB6_6:
	ldur	x0, [x29, #-8]
	mov	w1, #33                         ; =0x21
	bl	_ch
	b	LBB6_7
LBB6_7:
	b	LBB6_8
LBB6_8:
	b	LBB6_9
LBB6_9:
	ldur	x8, [x29, #-8]
	add	x0, x8, #40
	mov	x1, #40                         ; =0x28
	bl	__vec_push_get
	str	x0, [sp, #8]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #8]
	str	w8, [x9, #32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #8]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #8]
	str	x8, [x9, #24]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_mut                            ; -- Begin function mut
	.p2align	2
_mut:                                   ; @mut
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #16]
	ldr	x0, [sp, #16]
	mov	w1, #22                         ; =0x16
	bl	_ch
	ldr	x8, [sp, #16]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB7_5
	b	LBB7_1
LBB7_1:
	ldr	x8, [sp, #16]
	ldr	x8, [x8]
	ldr	x9, [sp, #16]
	ldr	x9, [x9, #32]
	add	x8, x8, x9
	ldrb	w8, [x8]
	strb	w8, [sp, #15]
	ldrsb	w8, [sp, #15]
	subs	w8, w8, #91
	cset	w8, eq
	tbnz	w8, #0, LBB7_4
	b	LBB7_2
LBB7_2:
	ldrsb	w8, [sp, #15]
	subs	w8, w8, #34
	cset	w8, eq
	tbnz	w8, #0, LBB7_4
	b	LBB7_3
LBB7_3:
	mov	w8, #-4                         ; =0xfffffffc
	stur	w8, [x29, #-4]
	b	LBB7_6
LBB7_4:
	stur	wzr, [x29, #-4]
	b	LBB7_6
LBB7_5:
	mov	w8, #-4                         ; =0xfffffffc
	stur	w8, [x29, #-4]
	b	LBB7_6
LBB7_6:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_num_or_float                   ; -- Begin function num_or_float
	.p2align	2
_num_or_float:                          ; @num_or_float
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	stur	x8, [x29, #-24]
	b	LBB8_1
LBB8_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, hs
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB8_4
	b	LBB8_2
LBB8_2:                                 ;   in Loop: Header=BB8_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldrsb	w9, [x8, x9]
	mov	w8, #48                         ; =0x30
	subs	w8, w8, w9
	cset	w8, gt
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB8_4
	b	LBB8_3
LBB8_3:                                 ;   in Loop: Header=BB8_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #57
	cset	w8, le
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB8_4
LBB8_4:                                 ;   in Loop: Header=BB8_1 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB8_6
	b	LBB8_5
LBB8_5:                                 ;   in Loop: Header=BB8_1 Depth=1
	ldur	x0, [x29, #-16]
	bl	_adv
	b	LBB8_1
LBB8_6:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #46
	cset	w8, ne
	tbnz	w8, #0, LBB8_24
	b	LBB8_7
LBB8_7:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	stur	x8, [x29, #-32]
	b	LBB8_8
LBB8_8:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x0, [x29, #-16]
	bl	_adv
	b	LBB8_9
LBB8_9:                                 ;   in Loop: Header=BB8_8 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, hs
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #8]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB8_12
	b	LBB8_10
LBB8_10:                                ;   in Loop: Header=BB8_8 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldrsb	w9, [x8, x9]
	mov	w8, #48                         ; =0x30
	subs	w8, w8, w9
	cset	w8, gt
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #8]                    ; 4-byte Folded Spill
	tbnz	w8, #0, LBB8_12
	b	LBB8_11
LBB8_11:                                ;   in Loop: Header=BB8_8 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #57
	cset	w8, le
	str	w8, [sp, #8]                    ; 4-byte Folded Spill
	b	LBB8_12
LBB8_12:                                ;   in Loop: Header=BB8_8 Depth=1
	ldr	w8, [sp, #8]                    ; 4-byte Folded Reload
	tbnz	w8, #0, LBB8_8
	b	LBB8_13
LBB8_13:
	movi	d0, #0000000000000000
	stur	d0, [x29, #-40]
	stur	d0, [x29, #-48]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #56]
	b	LBB8_14
LBB8_14:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #56]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB8_17
	b	LBB8_15
LBB8_15:                                ;   in Loop: Header=BB8_14 Depth=1
	ldur	d0, [x29, #-40]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x9, [sp, #56]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #48
	scvtf	d2, w8
	fmov	d1, #10.00000000
	fmadd	d0, d0, d1, d2
	stur	d0, [x29, #-40]
	b	LBB8_16
LBB8_16:                                ;   in Loop: Header=BB8_14 Depth=1
	ldr	x8, [sp, #56]
	add	x8, x8, #1
	str	x8, [sp, #56]
	b	LBB8_14
LBB8_17:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	subs	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB8_23
	b	LBB8_18
LBB8_18:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	subs	x8, x8, #1
	str	x8, [sp, #48]
	b	LBB8_19
LBB8_19:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #48]
	ldur	x9, [x29, #-32]
	subs	x8, x8, x9
	cset	w8, ls
	tbnz	w8, #0, LBB8_22
	b	LBB8_20
LBB8_20:                                ;   in Loop: Header=BB8_19 Depth=1
	ldur	d0, [x29, #-48]
	fmov	d1, #10.00000000
	fdiv	d0, d0, d1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x9, [sp, #48]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #48
	scvtf	d1, w8
	fadd	d0, d0, d1
	stur	d0, [x29, #-48]
	b	LBB8_21
LBB8_21:                                ;   in Loop: Header=BB8_19 Depth=1
	ldr	x8, [sp, #48]
	subs	x8, x8, #1
	str	x8, [sp, #48]
	b	LBB8_19
LBB8_22:
	b	LBB8_23
LBB8_23:
	ldur	d0, [x29, #-48]
	fmov	d1, #10.00000000
	fdiv	d1, d0, d1
	ldur	d0, [x29, #-40]
	fadd	d0, d0, d1
	stur	d0, [x29, #-40]
	ldur	x8, [x29, #-16]
	add	x0, x8, #40
	mov	x1, #40                         ; =0x28
	bl	__vec_push_get
	str	x0, [sp, #40]
	ldr	x9, [sp, #40]
	mov	w8, #45                         ; =0x2d
	str	w8, [x9, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #40]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #40]
	str	x8, [x9, #24]
	ldur	d0, [x29, #-40]
	ldr	x8, [sp, #40]
	str	d0, [x8]
	stur	wzr, [x29, #-4]
	b	LBB8_29
LBB8_24:
	str	xzr, [sp, #32]
	ldur	x8, [x29, #-24]
	str	x8, [sp, #24]
	b	LBB8_25
LBB8_25:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #24]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB8_28
	b	LBB8_26
LBB8_26:                                ;   in Loop: Header=BB8_25 Depth=1
	ldr	x8, [sp, #32]
	mov	x9, #10                         ; =0xa
	mul	x8, x8, x9
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	ldr	x10, [sp, #24]
	ldrsb	w9, [x9, x10]
	subs	w9, w9, #48
	add	x8, x8, w9, sxtw
	str	x8, [sp, #32]
	b	LBB8_27
LBB8_27:                                ;   in Loop: Header=BB8_25 Depth=1
	ldr	x8, [sp, #24]
	add	x8, x8, #1
	str	x8, [sp, #24]
	b	LBB8_25
LBB8_28:
	ldur	x8, [x29, #-16]
	add	x0, x8, #40
	mov	x1, #40                         ; =0x28
	bl	__vec_push_get
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	mov	w8, #44                         ; =0x2c
	str	w8, [x9, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #16]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #16]
	str	x8, [x9, #24]
	ldr	x8, [sp, #32]
	ldr	x9, [sp, #16]
	str	x8, [x9]
	stur	wzr, [x29, #-4]
	b	LBB8_29
LBB8_29:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_str_til_spc                    ; -- Begin function str_til_spc
	.p2align	2
_str_til_spc:                           ; @str_til_spc
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	w1, [x29, #-12]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	stur	x8, [x29, #-24]
	b	LBB9_1
LBB9_1:                                 ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, hs
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB9_4
	b	LBB9_2
LBB9_2:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #32]
	ldrsb	w0, [x8, x9]
	bl	_isspace
	subs	w8, w0, #0
	cset	w8, ne
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB9_4
	b	LBB9_3
LBB9_3:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	_special
	eor	w8, w0, #0x1
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB9_4
LBB9_4:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB9_6
	b	LBB9_5
LBB9_5:                                 ;   in Loop: Header=BB9_1 Depth=1
	ldur	x0, [x29, #-8]
	bl	_adv
	b	LBB9_1
LBB9_6:
	ldur	x8, [x29, #-8]
	add	x0, x8, #40
	mov	x1, #40                         ; =0x28
	bl	__vec_push_get
	str	x0, [sp, #32]
	ldur	w8, [x29, #-12]
	ldr	x9, [sp, #32]
	str	w8, [x9, #32]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #32]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #32]
	str	x8, [x9, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	str	x9, [sp, #16]
	ldur	x9, [x29, #-8]
	ldr	x9, [x9, #32]
	str	x9, [sp, #24]
	ldr	q0, [sp, #16]
	str	q0, [x8]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_str_til_strend                 ; -- Begin function str_til_strend
	.p2align	2
_str_til_strend:                        ; @str_til_strend
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x9, [x29, #-16]
	ldr	x8, [x9, #32]
	add	x8, x8, #1
	str	x8, [x9, #32]
	stur	x8, [x29, #-24]
	b	LBB10_1
LBB10_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, lo
	tbnz	w8, #0, LBB10_3
	b	LBB10_2
LBB10_2:
	mov	w8, #-2                         ; =0xfffffffe
	stur	w8, [x29, #-4]
	b	LBB10_8
LBB10_3:                                ;   in Loop: Header=BB10_1 Depth=1
	b	LBB10_4
LBB10_4:                                ;   in Loop: Header=BB10_1 Depth=1
	ldur	x10, [x29, #-16]
	ldr	x8, [x10, #16]
	add	x9, x8, #1
	str	x9, [x10, #16]
	subs	x8, x8, #0
	cset	w8, eq
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB10_6
	b	LBB10_5
LBB10_5:                                ;   in Loop: Header=BB10_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x11, [x29, #-16]
	ldr	x9, [x11, #32]
	add	x10, x9, #1
	str	x10, [x11, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #34
	cset	w8, ne
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB10_6
LBB10_6:                                ;   in Loop: Header=BB10_1 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbnz	w8, #0, LBB10_1
	b	LBB10_7
LBB10_7:
	ldur	x8, [x29, #-16]
	add	x0, x8, #40
	mov	x1, #40                         ; =0x28
	bl	__vec_push_get
	str	x0, [sp, #32]
	ldr	x9, [sp, #32]
	mov	w8, #20                         ; =0x14
	str	w8, [x9, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #32]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #32]
	str	x8, [x9, #24]
	ldr	x8, [sp, #32]
	ldur	x9, [x29, #-24]
	str	x9, [sp, #16]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	subs	x9, x9, #1
	str	x9, [sp, #24]
	ldr	q0, [sp, #16]
	str	q0, [x8]
	stur	wzr, [x29, #-4]
	b	LBB10_8
LBB10_8:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_ch_til_chend                   ; -- Begin function ch_til_chend
	.p2align	2
_ch_til_chend:                          ; @ch_til_chend
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-16]
	ldur	x9, [x29, #-16]
	ldr	x8, [x9, #32]
	add	x8, x8, #1
	str	x8, [x9, #32]
	str	x8, [sp, #24]
	b	LBB11_1
LBB11_1:                                ; =>This Inner Loop Header: Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, hs
	mov	w9, #0                          ; =0x0
	str	w9, [sp, #12]                   ; 4-byte Folded Spill
	tbnz	w8, #0, LBB11_3
	b	LBB11_2
LBB11_2:                                ;   in Loop: Header=BB11_1 Depth=1
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9, #32]
	ldrsb	w0, [x8, x9]
	bl	_isspace
	subs	w8, w0, #0
	cset	w8, eq
	str	w8, [sp, #12]                   ; 4-byte Folded Spill
	b	LBB11_3
LBB11_3:                                ;   in Loop: Header=BB11_1 Depth=1
	ldr	w8, [sp, #12]                   ; 4-byte Folded Reload
	tbz	w8, #0, LBB11_5
	b	LBB11_4
LBB11_4:                                ;   in Loop: Header=BB11_1 Depth=1
	ldur	x0, [x29, #-16]
	bl	_adv
	b	LBB11_1
LBB11_5:
	ldur	x8, [x29, #-16]
	add	x0, x8, #40
	mov	x1, #40                         ; =0x28
	bl	__vec_push_get
	str	x0, [sp, #16]
	ldr	x9, [sp, #16]
	mov	w8, #21                         ; =0x15
	str	w8, [x9, #32]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #24]
	ldr	x9, [sp, #16]
	str	x8, [x9, #16]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #16]
	ldr	x9, [sp, #16]
	str	x8, [x9, #24]
	ldur	x8, [x29, #-16]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #24]
	subs	x8, x8, x9
	str	x8, [sp]                        ; 8-byte Folded Spill
	subs	x8, x8, #1
	cset	w8, eq
	tbnz	w8, #0, LBB11_8
	b	LBB11_6
LBB11_6:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	subs	x8, x8, #3
	cset	w8, eq
	tbnz	w8, #0, LBB11_9
	b	LBB11_7
LBB11_7:
	ldr	x8, [sp]                        ; 8-byte Folded Reload
	subs	x8, x8, #5
	cset	w8, eq
	tbnz	w8, #0, LBB11_12
	b	LBB11_15
LBB11_8:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	add	x8, x8, x9
	ldrb	w8, [x8]
	ldr	x9, [sp, #16]
	strb	w8, [x9]
	b	LBB11_16
LBB11_9:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	add	x0, x8, x9
	adrp	x1, l_.str.58@PAGE
	add	x1, x1, l_.str.58@PAGEOFF
	mov	x2, #3                          ; =0x3
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB11_11
	b	LBB11_10
LBB11_10:
	ldr	x9, [sp, #16]
	mov	w8, #32                         ; =0x20
	strb	w8, [x9]
	b	LBB11_16
LBB11_11:
	b	LBB11_12
LBB11_12:
	ldur	x8, [x29, #-16]
	ldr	x8, [x8]
	ldr	x9, [sp, #24]
	add	x0, x8, x9
	adrp	x1, l_.str.59@PAGE
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x2, #5                          ; =0x5
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB11_14
	b	LBB11_13
LBB11_13:
	ldr	x9, [sp, #16]
	mov	w8, #32                         ; =0x20
	strb	w8, [x9]
	b	LBB11_16
LBB11_14:
	b	LBB11_15
LBB11_15:
	mov	w8, #-5                         ; =0xfffffffb
	stur	w8, [x29, #-4]
	b	LBB11_17
LBB11_16:
	stur	wzr, [x29, #-4]
	b	LBB11_17
LBB11_17:
	ldur	w0, [x29, #-4]
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_id_or_key                      ; -- Begin function id_or_key
	.p2align	2
_id_or_key:                             ; @id_or_key
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #64
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	ldur	x0, [x29, #-8]
	mov	w1, #3                          ; =0x3
	bl	_str_til_spc
	ldur	x8, [x29, #-8]
	mov	x9, #40                         ; =0x28
	str	x9, [sp]                        ; 8-byte Folded Spill
	ldr	x8, [x8, #40]
	str	x8, [sp, #8]                    ; 8-byte Folded Spill
	ldur	x8, [x29, #-8]
	ldr	x0, [x8, #40]
	bl	_vec_len
	ldr	x10, [sp]                       ; 8-byte Folded Reload
	ldr	x8, [sp, #8]                    ; 8-byte Folded Reload
	subs	x9, x0, #1
	mul	x9, x9, x10
	add	x8, x8, x9
	stur	x8, [x29, #-16]
	ldur	x8, [x29, #-8]
	ldr	x8, [x8, #32]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	subs	x8, x8, x9
	str	x8, [sp, #24]
	ldr	x8, [sp, #24]
	subs	x8, x8, #2
	str	x8, [sp, #16]                   ; 8-byte Folded Spill
	subs	x8, x8, #3
	cset	w8, hi
	tbnz	w8, #0, LBB12_50
; %bb.1:
	ldr	x11, [sp, #16]                  ; 8-byte Folded Reload
	adrp	x10, lJTI12_0@PAGE
	add	x10, x10, lJTI12_0@PAGEOFF
Ltmp6:
	adr	x8, Ltmp6
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB12_2:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.60@PAGE
	add	x1, x1, l_.str.60@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_4
	b	LBB12_3
LBB12_3:
	ldur	x9, [x29, #-16]
	mov	w8, #13                         ; =0xd
	str	w8, [x9, #32]
	b	LBB12_4
LBB12_4:
	b	LBB12_51
LBB12_5:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.61@PAGE
	add	x1, x1, l_.str.61@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_7
	b	LBB12_6
LBB12_6:
	ldur	x9, [x29, #-16]
	mov	w8, #4                          ; =0x4
	str	w8, [x9, #32]
	b	LBB12_22
LBB12_7:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.62@PAGE
	add	x1, x1, l_.str.62@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_9
	b	LBB12_8
LBB12_8:
	ldur	x9, [x29, #-16]
	mov	w8, #5                          ; =0x5
	str	w8, [x9, #32]
	b	LBB12_21
LBB12_9:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.63@PAGE
	add	x1, x1, l_.str.63@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_11
	b	LBB12_10
LBB12_10:
	ldur	x9, [x29, #-16]
	mov	w8, #6                          ; =0x6
	str	w8, [x9, #32]
	b	LBB12_20
LBB12_11:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.64@PAGE
	add	x1, x1, l_.str.64@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_13
	b	LBB12_12
LBB12_12:
	ldur	x9, [x29, #-16]
	mov	w8, #7                          ; =0x7
	str	w8, [x9, #32]
	b	LBB12_19
LBB12_13:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.65@PAGE
	add	x1, x1, l_.str.65@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_15
	b	LBB12_14
LBB12_14:
	ldur	x9, [x29, #-16]
	mov	w8, #8                          ; =0x8
	str	w8, [x9, #32]
	b	LBB12_18
LBB12_15:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.66@PAGE
	add	x1, x1, l_.str.66@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_17
	b	LBB12_16
LBB12_16:
	ldur	x9, [x29, #-16]
	mov	w8, #19                         ; =0x13
	str	w8, [x9, #32]
	b	LBB12_17
LBB12_17:
	b	LBB12_18
LBB12_18:
	b	LBB12_19
LBB12_19:
	b	LBB12_20
LBB12_20:
	b	LBB12_21
LBB12_21:
	b	LBB12_22
LBB12_22:
	b	LBB12_51
LBB12_23:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.67@PAGE
	add	x1, x1, l_.str.67@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_25
	b	LBB12_24
LBB12_24:
	ldur	x9, [x29, #-16]
	mov	w8, #9                          ; =0x9
	str	w8, [x9, #32]
	b	LBB12_37
LBB12_25:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.68@PAGE
	add	x1, x1, l_.str.68@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_27
	b	LBB12_26
LBB12_26:
	ldur	x9, [x29, #-16]
	mov	w8, #11                         ; =0xb
	str	w8, [x9, #32]
	b	LBB12_36
LBB12_27:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.69@PAGE
	add	x1, x1, l_.str.69@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_29
	b	LBB12_28
LBB12_28:
	ldur	x9, [x29, #-16]
	mov	w8, #14                         ; =0xe
	str	w8, [x9, #32]
	b	LBB12_35
LBB12_29:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.70@PAGE
	add	x1, x1, l_.str.70@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_31
	b	LBB12_30
LBB12_30:
	ldur	x9, [x29, #-16]
	mov	w8, #15                         ; =0xf
	str	w8, [x9, #32]
	b	LBB12_34
LBB12_31:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.71@PAGE
	add	x1, x1, l_.str.71@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_33
	b	LBB12_32
LBB12_32:
	ldur	x9, [x29, #-16]
	mov	w8, #16                         ; =0x10
	str	w8, [x9, #32]
	b	LBB12_33
LBB12_33:
	b	LBB12_34
LBB12_34:
	b	LBB12_35
LBB12_35:
	b	LBB12_36
LBB12_36:
	b	LBB12_37
LBB12_37:
	b	LBB12_51
LBB12_38:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.72@PAGE
	add	x1, x1, l_.str.72@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_40
	b	LBB12_39
LBB12_39:
	ldur	x9, [x29, #-16]
	mov	w8, #10                         ; =0xa
	str	w8, [x9, #32]
	b	LBB12_49
LBB12_40:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.73@PAGE
	add	x1, x1, l_.str.73@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_42
	b	LBB12_41
LBB12_41:
	ldur	x9, [x29, #-16]
	mov	w8, #12                         ; =0xc
	str	w8, [x9, #32]
	b	LBB12_48
LBB12_42:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.74@PAGE
	add	x1, x1, l_.str.74@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_44
	b	LBB12_43
LBB12_43:
	ldur	x9, [x29, #-16]
	mov	w8, #18                         ; =0x12
	str	w8, [x9, #32]
	b	LBB12_47
LBB12_44:
	ldur	x8, [x29, #-8]
	ldr	x8, [x8]
	ldur	x9, [x29, #-16]
	ldr	x9, [x9]
	add	x0, x8, x9
	ldr	x2, [sp, #24]
	adrp	x1, l_.str.75@PAGE
	add	x1, x1, l_.str.75@PAGEOFF
	bl	_strncmp
	subs	w8, w0, #0
	cset	w8, ne
	tbnz	w8, #0, LBB12_46
	b	LBB12_45
LBB12_45:
	ldur	x9, [x29, #-16]
	mov	w8, #17                         ; =0x11
	str	w8, [x9, #32]
	b	LBB12_46
LBB12_46:
	b	LBB12_47
LBB12_47:
	b	LBB12_48
LBB12_48:
	b	LBB12_49
LBB12_49:
	b	LBB12_51
LBB12_50:
	b	LBB12_51
LBB12_51:
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #64
	ret
	.cfi_endproc
	.p2align	2
lJTI12_0:
	.long	LBB12_2-Ltmp6
	.long	LBB12_5-Ltmp6
	.long	LBB12_23-Ltmp6
	.long	LBB12_38-Ltmp6
                                        ; -- End function
	.globl	_all                            ; -- Begin function all
	.p2align	2
_all:                                   ; @all
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	str	x0, [sp, #8]
	b	LBB13_1
LBB13_1:                                ; =>This Inner Loop Header: Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB13_40
	b	LBB13_2
LBB13_2:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #9
	mov	w8, w8
                                        ; kill: def $x8 killed $w8
	str	x8, [sp]                        ; 8-byte Folded Spill
	subs	x8, x8, #116
	cset	w8, hi
	tbnz	w8, #0, LBB13_38
; %bb.3:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	x11, [sp]                       ; 8-byte Folded Reload
	adrp	x10, lJTI13_0@PAGE
	add	x10, x10, lJTI13_0@PAGEOFF
Ltmp7:
	adr	x8, Ltmp7
	ldrsw	x9, [x10, x11, lsl #2]
	add	x8, x8, x9
	br	x8
LBB13_4:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	adrp	x1, _num_or_float@PAGE
	add	x1, x1, _num_or_float@PAGEOFF
	bl	_error_check
	b	LBB13_39
LBB13_5:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #25                         ; =0x19
	bl	_ch
	b	LBB13_39
LBB13_6:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	add	x8, x8, #1
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB13_9
	b	LBB13_7
LBB13_7:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	add	x9, x9, #1
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #62
	cset	w8, ne
	tbnz	w8, #0, LBB13_9
	b	LBB13_8
LBB13_8:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	bl	_adv
	ldr	x0, [sp, #8]
	mov	w1, #43                         ; =0x2b
	bl	_ch
	b	LBB13_10
LBB13_9:                                ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #26                         ; =0x1a
	bl	_ch
	b	LBB13_10
LBB13_10:                               ;   in Loop: Header=BB13_1 Depth=1
	b	LBB13_39
LBB13_11:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #27                         ; =0x1b
	bl	_ch
	b	LBB13_39
LBB13_12:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8, #32]
	add	x8, x8, #1
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #8]
	subs	x8, x8, x9
	cset	w8, hs
	tbnz	w8, #0, LBB13_15
	b	LBB13_13
LBB13_13:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x8, [sp, #8]
	ldr	x8, [x8]
	ldr	x9, [sp, #8]
	ldr	x9, [x9, #32]
	add	x9, x9, #1
	ldrsb	w8, [x8, x9]
	subs	w8, w8, #47
	cset	w8, ne
	tbnz	w8, #0, LBB13_15
	b	LBB13_14
LBB13_14:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #32]
	add	x8, x8, #2
	str	x8, [x9, #32]
	ldr	x0, [sp, #8]
	bl	_skip_comm
	b	LBB13_16
LBB13_15:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #28                         ; =0x1c
	bl	_ch
	b	LBB13_16
LBB13_16:                               ;   in Loop: Header=BB13_1 Depth=1
	b	LBB13_39
LBB13_17:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #23                         ; =0x17
	bl	_ch
	b	LBB13_39
LBB13_18:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #24                         ; =0x18
	bl	_ch
	b	LBB13_39
LBB13_19:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #36                         ; =0x24
	bl	_ch
	b	LBB13_39
LBB13_20:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #35                         ; =0x23
	bl	_ch
	b	LBB13_39
LBB13_21:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #34                         ; =0x22
	bl	_ch
	b	LBB13_39
LBB13_22:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #29                         ; =0x1d
	bl	_ch
	b	LBB13_39
LBB13_23:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #30                         ; =0x1e
	bl	_comp
	b	LBB13_39
LBB13_24:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #32                         ; =0x20
	bl	_comp
	b	LBB13_39
LBB13_25:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	adrp	x1, _mut@PAGE
	add	x1, x1, _mut@PAGEOFF
	bl	_error_check
	b	LBB13_39
LBB13_26:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #39                         ; =0x27
	bl	_ch
	b	LBB13_39
LBB13_27:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #40                         ; =0x28
	bl	_ch
	b	LBB13_39
LBB13_28:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #41                         ; =0x29
	bl	_ch
	b	LBB13_39
LBB13_29:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #42                         ; =0x2a
	bl	_ch
	b	LBB13_39
LBB13_30:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #37                         ; =0x25
	bl	_ch
	b	LBB13_39
LBB13_31:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	mov	w1, #38                         ; =0x26
	bl	_ch
	b	LBB13_39
LBB13_32:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	adrp	x1, _str_til_strend@PAGE
	add	x1, x1, _str_til_strend@PAGEOFF
	bl	_error_check
	b	LBB13_39
LBB13_33:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	adrp	x1, _ch_til_chend@PAGE
	add	x1, x1, _ch_til_chend@PAGEOFF
	bl	_error_check
	b	LBB13_39
LBB13_34:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	bl	_adv
	b	LBB13_39
LBB13_35:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #32]
	add	x8, x8, #1
	str	x8, [x9, #32]
	b	LBB13_39
LBB13_36:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #32]
	add	x8, x8, #1
	str	x8, [x9, #32]
	ldr	x8, [sp, #8]
	str	xzr, [x8, #16]
	ldr	x9, [sp, #8]
	ldr	x8, [x9, #24]
	add	x8, x8, #1
	str	x8, [x9, #24]
	b	LBB13_39
LBB13_37:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	bl	_adv
	ldr	x0, [sp, #8]
	mov	w1, #2                          ; =0x2
	bl	_str_til_spc
	b	LBB13_39
LBB13_38:                               ;   in Loop: Header=BB13_1 Depth=1
	ldr	x0, [sp, #8]
	bl	_id_or_key
	b	LBB13_39
LBB13_39:                               ;   in Loop: Header=BB13_1 Depth=1
	b	LBB13_1
LBB13_40:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
	.p2align	2
lJTI13_0:
	.long	LBB13_34-Ltmp7
	.long	LBB13_36-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_35-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_34-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_32-Ltmp7
	.long	LBB13_37-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_33-Ltmp7
	.long	LBB13_28-Ltmp7
	.long	LBB13_29-Ltmp7
	.long	LBB13_11-Ltmp7
	.long	LBB13_5-Ltmp7
	.long	LBB13_19-Ltmp7
	.long	LBB13_6-Ltmp7
	.long	LBB13_18-Ltmp7
	.long	LBB13_12-Ltmp7
	.long	LBB13_4-Ltmp7
	.long	LBB13_4-Ltmp7
	.long	LBB13_4-Ltmp7
	.long	LBB13_4-Ltmp7
	.long	LBB13_4-Ltmp7
	.long	LBB13_4-Ltmp7
	.long	LBB13_4-Ltmp7
	.long	LBB13_4-Ltmp7
	.long	LBB13_4-Ltmp7
	.long	LBB13_4-Ltmp7
	.long	LBB13_21-Ltmp7
	.long	LBB13_20-Ltmp7
	.long	LBB13_24-Ltmp7
	.long	LBB13_22-Ltmp7
	.long	LBB13_23-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_25-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_26-Ltmp7
	.long	LBB13_17-Ltmp7
	.long	LBB13_27-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_30-Ltmp7
	.long	LBB13_38-Ltmp7
	.long	LBB13_31-Ltmp7
                                        ; -- End function
	.globl	_lex                            ; -- Begin function lex
	.p2align	2
_lex:                                   ; @lex
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	x0, [x29, #-8]
	stur	x1, [x29, #-16]
	ldur	x8, [x29, #-8]
	add	x9, sp, #8
	str	x9, [sp]                        ; 8-byte Folded Spill
	str	x8, [sp, #8]
	ldur	x8, [x29, #-16]
	str	x8, [sp, #16]
	mov	x8, #1                          ; =0x1
	str	x8, [sp, #24]
	str	x8, [sp, #32]
	str	xzr, [sp, #40]
	bl	_vec_create
	mov	x8, x0
	ldr	x0, [sp]                        ; 8-byte Folded Reload
	str	x8, [sp, #48]
	strb	wzr, [sp, #56]
	bl	_all
	ldr	x8, [sp, #48]
	ldrb	w9, [sp, #56]
                                        ; kill: def $x9 killed $w9
	and	x9, x9, #0x1
	orr	x0, x8, x9
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"Successful operation."

l_.str.1:                               ; @.str.1
	.asciz	"Improper application of the mutable symbol @."

l_.str.2:                               ; @.str.2
	.asciz	"Improper number declaration."

l_.str.3:                               ; @.str.3
	.asciz	"EOF before the end of string."

l_.str.4:                               ; @.str.4
	.asciz	"EOF before the end of char."

l_.str.5:                               ; @.str.5
	.asciz	"Such char does not exist."

l_.str.6:                               ; @.str.6
	.asciz	"Not an Error"

l_.str.7:                               ; @.str.7
	.asciz	"SpanTok"

l_.str.8:                               ; @.str.8
	.asciz	"DirvTok"

l_.str.9:                               ; @.str.9
	.asciz	"IdTok"

l_.str.10:                              ; @.str.10
	.asciz	"StrTok"

l_.str.11:                              ; @.str.11
	.asciz	"ChrTok"

l_.str.12:                              ; @.str.12
	.asciz	"MutTok"

l_.str.13:                              ; @.str.13
	.asciz	"LambTok"

l_.str.14:                              ; @.str.14
	.asciz	"DotTok"

l_.str.15:                              ; @.str.15
	.asciz	"PlusTok"

l_.str.16:                              ; @.str.16
	.asciz	"MinusTok"

l_.str.17:                              ; @.str.17
	.asciz	"StarTok"

l_.str.18:                              ; @.str.18
	.asciz	"DivTok"

l_.str.19:                              ; @.str.19
	.asciz	"EqTok"

l_.str.20:                              ; @.str.20
	.asciz	"GtTok"

l_.str.21:                              ; @.str.21
	.asciz	"GteTok"

l_.str.22:                              ; @.str.22
	.asciz	"LtTok"

l_.str.23:                              ; @.str.23
	.asciz	"LteTok"

l_.str.24:                              ; @.str.24
	.asciz	"ColonTok"

l_.str.25:                              ; @.str.25
	.asciz	"SemiColonTok"

l_.str.26:                              ; @.str.26
	.asciz	"CommaTok"

l_.str.27:                              ; @.str.27
	.asciz	"LBrackTok"

l_.str.28:                              ; @.str.28
	.asciz	"RBrackTok"

l_.str.29:                              ; @.str.29
	.asciz	"LSqBrackTok"

l_.str.30:                              ; @.str.30
	.asciz	"RSqBrackTok"

l_.str.31:                              ; @.str.31
	.asciz	"LParenTok"

l_.str.32:                              ; @.str.32
	.asciz	"RParenTok"

l_.str.33:                              ; @.str.33
	.asciz	"RArrowTok"

l_.str.34:                              ; @.str.34
	.asciz	"NumTok"

l_.str.35:                              ; @.str.35
	.asciz	"FloatTok"

l_.str.36:                              ; @.str.36
	.asciz	"ModTok"

l_.str.37:                              ; @.str.37
	.asciz	"PubTok"

l_.str.38:                              ; @.str.38
	.asciz	"SigTok"

l_.str.39:                              ; @.str.39
	.asciz	"FunTok"

l_.str.40:                              ; @.str.40
	.asciz	"LetTok"

l_.str.41:                              ; @.str.41
	.asciz	"TypeTok"

l_.str.42:                              ; @.str.42
	.asciz	"TraitTok"

l_.str.43:                              ; @.str.43
	.asciz	"EnumTok"

l_.str.44:                              ; @.str.44
	.asciz	"DeferTok"

l_.str.45:                              ; @.str.45
	.asciz	"IfTok"

l_.str.46:                              ; @.str.46
	.asciz	"ThenTok"

l_.str.47:                              ; @.str.47
	.asciz	"ElseTok"

l_.str.48:                              ; @.str.48
	.asciz	"TrueTok"

l_.str.49:                              ; @.str.49
	.asciz	"FalseTok"

l_.str.50:                              ; @.str.50
	.asciz	"WhileTok"

l_.str.51:                              ; @.str.51
	.asciz	"ForTok"

l_.str.52:                              ; @.str.52
	.asciz	"Err:UnknownChar"

l_.str.53:                              ; @.str.53
	.asciz	"Err:ImproperMutable"

l_.str.54:                              ; @.str.54
	.asciz	"Err:ImproperNumber"

l_.str.55:                              ; @.str.55
	.asciz	"Err:UnfinishedStr"

l_.str.56:                              ; @.str.56
	.asciz	"Err:UnfinishedChar"

l_.str.57:                              ; @.str.57
	.asciz	"??Success??"

l_.str.58:                              ; @.str.58
	.asciz	"tab"

l_.str.59:                              ; @.str.59
	.asciz	"space"

l_.str.60:                              ; @.str.60
	.asciz	"if"

l_.str.61:                              ; @.str.61
	.asciz	"mod"

l_.str.62:                              ; @.str.62
	.asciz	"pub"

l_.str.63:                              ; @.str.63
	.asciz	"sig"

l_.str.64:                              ; @.str.64
	.asciz	"fun"

l_.str.65:                              ; @.str.65
	.asciz	"let"

l_.str.66:                              ; @.str.66
	.asciz	"for"

l_.str.67:                              ; @.str.67
	.asciz	"type"

l_.str.68:                              ; @.str.68
	.asciz	"enum"

l_.str.69:                              ; @.str.69
	.asciz	"then"

l_.str.70:                              ; @.str.70
	.asciz	"else"

l_.str.71:                              ; @.str.71
	.asciz	"true"

l_.str.72:                              ; @.str.72
	.asciz	"trait"

l_.str.73:                              ; @.str.73
	.asciz	"defer"

l_.str.74:                              ; @.str.74
	.asciz	"while"

l_.str.75:                              ; @.str.75
	.asciz	"false"

.subsections_via_symbols
