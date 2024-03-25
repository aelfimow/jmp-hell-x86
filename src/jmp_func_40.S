.section .text
# jmp_hell_40 jumps forth and back 40 times
# and returns timestamp counter after that
# uint64_t jmp_hell_40()
.global jmp_hell_40
jmp_hell_40:
	jmp jmp_hell_40_label_40
jmp_hell_40_label_1:
	jmp jmp_hell_40_label_39
jmp_hell_40_label_2:
	jmp jmp_hell_40_label_38
jmp_hell_40_label_3:
	jmp jmp_hell_40_label_37
jmp_hell_40_label_4:
	jmp jmp_hell_40_label_36
jmp_hell_40_label_5:
	jmp jmp_hell_40_label_35
jmp_hell_40_label_6:
	jmp jmp_hell_40_label_34
jmp_hell_40_label_7:
	jmp jmp_hell_40_label_33
jmp_hell_40_label_8:
	jmp jmp_hell_40_label_32
jmp_hell_40_label_9:
	jmp jmp_hell_40_label_31
jmp_hell_40_label_10:
	jmp jmp_hell_40_label_30
jmp_hell_40_label_11:
	jmp jmp_hell_40_label_29
jmp_hell_40_label_12:
	jmp jmp_hell_40_label_28
jmp_hell_40_label_13:
	jmp jmp_hell_40_label_27
jmp_hell_40_label_14:
	jmp jmp_hell_40_label_26
jmp_hell_40_label_15:
	jmp jmp_hell_40_label_25
jmp_hell_40_label_16:
	jmp jmp_hell_40_label_24
jmp_hell_40_label_17:
	jmp jmp_hell_40_label_23
jmp_hell_40_label_18:
	jmp jmp_hell_40_label_22
jmp_hell_40_label_19:
	jmp jmp_hell_40_label_21
jmp_hell_40_label_20:
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
	ret
jmp_hell_40_label_21:
	jmp jmp_hell_40_label_20
jmp_hell_40_label_22:
	jmp jmp_hell_40_label_19
jmp_hell_40_label_23:
	jmp jmp_hell_40_label_18
jmp_hell_40_label_24:
	jmp jmp_hell_40_label_17
jmp_hell_40_label_25:
	jmp jmp_hell_40_label_16
jmp_hell_40_label_26:
	jmp jmp_hell_40_label_15
jmp_hell_40_label_27:
	jmp jmp_hell_40_label_14
jmp_hell_40_label_28:
	jmp jmp_hell_40_label_13
jmp_hell_40_label_29:
	jmp jmp_hell_40_label_12
jmp_hell_40_label_30:
	jmp jmp_hell_40_label_11
jmp_hell_40_label_31:
	jmp jmp_hell_40_label_10
jmp_hell_40_label_32:
	jmp jmp_hell_40_label_9
jmp_hell_40_label_33:
	jmp jmp_hell_40_label_8
jmp_hell_40_label_34:
	jmp jmp_hell_40_label_7
jmp_hell_40_label_35:
	jmp jmp_hell_40_label_6
jmp_hell_40_label_36:
	jmp jmp_hell_40_label_5
jmp_hell_40_label_37:
	jmp jmp_hell_40_label_4
jmp_hell_40_label_38:
	jmp jmp_hell_40_label_3
jmp_hell_40_label_39:
	jmp jmp_hell_40_label_2
jmp_hell_40_label_40:
	jmp jmp_hell_40_label_1
