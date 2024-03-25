.section .text
# jmp_hell_60 jumps forth and back 60 times
# and returns timestamp counter after that
# uint64_t jmp_hell_60()
.global jmp_hell_60
jmp_hell_60:
	jmp jmp_hell_60_label_60
jmp_hell_60_label_1:
	jmp jmp_hell_60_label_59
jmp_hell_60_label_2:
	jmp jmp_hell_60_label_58
jmp_hell_60_label_3:
	jmp jmp_hell_60_label_57
jmp_hell_60_label_4:
	jmp jmp_hell_60_label_56
jmp_hell_60_label_5:
	jmp jmp_hell_60_label_55
jmp_hell_60_label_6:
	jmp jmp_hell_60_label_54
jmp_hell_60_label_7:
	jmp jmp_hell_60_label_53
jmp_hell_60_label_8:
	jmp jmp_hell_60_label_52
jmp_hell_60_label_9:
	jmp jmp_hell_60_label_51
jmp_hell_60_label_10:
	jmp jmp_hell_60_label_50
jmp_hell_60_label_11:
	jmp jmp_hell_60_label_49
jmp_hell_60_label_12:
	jmp jmp_hell_60_label_48
jmp_hell_60_label_13:
	jmp jmp_hell_60_label_47
jmp_hell_60_label_14:
	jmp jmp_hell_60_label_46
jmp_hell_60_label_15:
	jmp jmp_hell_60_label_45
jmp_hell_60_label_16:
	jmp jmp_hell_60_label_44
jmp_hell_60_label_17:
	jmp jmp_hell_60_label_43
jmp_hell_60_label_18:
	jmp jmp_hell_60_label_42
jmp_hell_60_label_19:
	jmp jmp_hell_60_label_41
jmp_hell_60_label_20:
	jmp jmp_hell_60_label_40
jmp_hell_60_label_21:
	jmp jmp_hell_60_label_39
jmp_hell_60_label_22:
	jmp jmp_hell_60_label_38
jmp_hell_60_label_23:
	jmp jmp_hell_60_label_37
jmp_hell_60_label_24:
	jmp jmp_hell_60_label_36
jmp_hell_60_label_25:
	jmp jmp_hell_60_label_35
jmp_hell_60_label_26:
	jmp jmp_hell_60_label_34
jmp_hell_60_label_27:
	jmp jmp_hell_60_label_33
jmp_hell_60_label_28:
	jmp jmp_hell_60_label_32
jmp_hell_60_label_29:
	jmp jmp_hell_60_label_31
jmp_hell_60_label_30:
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
	ret
jmp_hell_60_label_31:
	jmp jmp_hell_60_label_30
jmp_hell_60_label_32:
	jmp jmp_hell_60_label_29
jmp_hell_60_label_33:
	jmp jmp_hell_60_label_28
jmp_hell_60_label_34:
	jmp jmp_hell_60_label_27
jmp_hell_60_label_35:
	jmp jmp_hell_60_label_26
jmp_hell_60_label_36:
	jmp jmp_hell_60_label_25
jmp_hell_60_label_37:
	jmp jmp_hell_60_label_24
jmp_hell_60_label_38:
	jmp jmp_hell_60_label_23
jmp_hell_60_label_39:
	jmp jmp_hell_60_label_22
jmp_hell_60_label_40:
	jmp jmp_hell_60_label_21
jmp_hell_60_label_41:
	jmp jmp_hell_60_label_20
jmp_hell_60_label_42:
	jmp jmp_hell_60_label_19
jmp_hell_60_label_43:
	jmp jmp_hell_60_label_18
jmp_hell_60_label_44:
	jmp jmp_hell_60_label_17
jmp_hell_60_label_45:
	jmp jmp_hell_60_label_16
jmp_hell_60_label_46:
	jmp jmp_hell_60_label_15
jmp_hell_60_label_47:
	jmp jmp_hell_60_label_14
jmp_hell_60_label_48:
	jmp jmp_hell_60_label_13
jmp_hell_60_label_49:
	jmp jmp_hell_60_label_12
jmp_hell_60_label_50:
	jmp jmp_hell_60_label_11
jmp_hell_60_label_51:
	jmp jmp_hell_60_label_10
jmp_hell_60_label_52:
	jmp jmp_hell_60_label_9
jmp_hell_60_label_53:
	jmp jmp_hell_60_label_8
jmp_hell_60_label_54:
	jmp jmp_hell_60_label_7
jmp_hell_60_label_55:
	jmp jmp_hell_60_label_6
jmp_hell_60_label_56:
	jmp jmp_hell_60_label_5
jmp_hell_60_label_57:
	jmp jmp_hell_60_label_4
jmp_hell_60_label_58:
	jmp jmp_hell_60_label_3
jmp_hell_60_label_59:
	jmp jmp_hell_60_label_2
jmp_hell_60_label_60:
	jmp jmp_hell_60_label_1
