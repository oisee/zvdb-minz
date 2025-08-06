	.build_version macos, 15, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_minz_add_numbers               ; -- Begin function minz_add_numbers
	.p2align	2
_minz_add_numbers:                      ; @minz_add_numbers
	.cfi_startproc
; %bb.0:                                ; %entry
	sub	sp, sp, #48
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 48
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	mov	w19, w1
	mov	w20, w0
Lloh0:
	adrp	x0, l_.str.1@PAGE
Lloh1:
	add	x0, x0, l_.str.1@PAGEOFF
	and	x8, x19, #0xff
	and	x9, x20, #0xff
	stp	x9, x8, [sp]
	bl	_printf
	add	w19, w20, w19
Lloh2:
	adrp	x0, l_.str.2@PAGE
Lloh3:
	add	x0, x0, l_.str.2@PAGEOFF
	and	x8, x19, #0xff
	str	x8, [sp]
	bl	_printf
	mov	w0, w19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:                                ; %entry
	stp	x20, x19, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	.cfi_def_cfa_offset 32
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh4:
	adrp	x0, l_.str@PAGE
Lloh5:
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	w0, #42                         ; =0x2a
	mov	w1, #13                         ; =0xd
	bl	_minz_add_numbers
	mov	w19, w0
Lloh6:
	adrp	x0, l_.str.3@PAGE
Lloh7:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	and	w0, w19, #0xff
	ldp	x20, x19, [sp], #32             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
	.p2align	4, 0x0                          ; @.str
l_.str:
	.asciz	"MinZ via LLVM on Mac ARM64!\n"

	.p2align	4, 0x0                          ; @.str.1
l_.str.1:
	.asciz	"Computing %d + %d\n"

l_.str.2:                               ; @.str.2
	.asciz	"Result: %d\n"

	.p2align	4, 0x0                          ; @.str.3
l_.str.3:
	.asciz	"Success: MinZ to LLVM to Native!\n"

.subsections_via_symbols
