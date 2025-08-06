	.build_version macos, 15, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_minz_add_numbers               ; -- Begin function minz_add_numbers
	.p2align	2
_minz_add_numbers:                      ; @minz_add_numbers
	.cfi_startproc
; %bb.0:                                ; %entry
	add	w0, w0, w1
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_minz_main                      ; -- Begin function minz_main
	.p2align	2
_minz_main:                             ; @minz_main
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	w8, #42                         ; =0x2a
	mov	w9, #13                         ; =0xd
	mov	w0, #42                         ; =0x2a
	mov	w1, #13                         ; =0xd
	strb	w8, [sp, #15]
	strb	w9, [sp, #14]
	bl	_minz_add_numbers
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	strb	w0, [sp, #13]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x29, x30, [sp, #-16]!           ; 16-byte Folded Spill
	.cfi_def_cfa_offset 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	bl	_minz_main
	and	w0, w0, #0xff
	ldp	x29, x30, [sp], #16             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
