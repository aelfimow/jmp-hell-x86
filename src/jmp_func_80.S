.section .text
# jmp_hell_80 jumps forth and back 80 times
# and returns timestamp counter after that
# uint64_t jmp_hell_80()
.global jmp_hell_80
jmp_hell_80:
	jmp jmp_hell_80_label_80
jmp_hell_80_label_1:
	jmp jmp_hell_80_label_79
jmp_hell_80_label_2:
	jmp jmp_hell_80_label_78
jmp_hell_80_label_3:
	jmp jmp_hell_80_label_77
jmp_hell_80_label_4:
	jmp jmp_hell_80_label_76
jmp_hell_80_label_5:
	jmp jmp_hell_80_label_75
jmp_hell_80_label_6:
	jmp jmp_hell_80_label_74
jmp_hell_80_label_7:
	jmp jmp_hell_80_label_73
jmp_hell_80_label_8:
	jmp jmp_hell_80_label_72
jmp_hell_80_label_9:
	jmp jmp_hell_80_label_71
jmp_hell_80_label_10:
	jmp jmp_hell_80_label_70
jmp_hell_80_label_11:
	jmp jmp_hell_80_label_69
jmp_hell_80_label_12:
	jmp jmp_hell_80_label_68
jmp_hell_80_label_13:
	jmp jmp_hell_80_label_67
jmp_hell_80_label_14:
	jmp jmp_hell_80_label_66
jmp_hell_80_label_15:
	jmp jmp_hell_80_label_65
jmp_hell_80_label_16:
	jmp jmp_hell_80_label_64
jmp_hell_80_label_17:
	jmp jmp_hell_80_label_63
jmp_hell_80_label_18:
	jmp jmp_hell_80_label_62
jmp_hell_80_label_19:
	jmp jmp_hell_80_label_61
jmp_hell_80_label_20:
	jmp jmp_hell_80_label_60
jmp_hell_80_label_21:
	jmp jmp_hell_80_label_59
jmp_hell_80_label_22:
	jmp jmp_hell_80_label_58
jmp_hell_80_label_23:
	jmp jmp_hell_80_label_57
jmp_hell_80_label_24:
	jmp jmp_hell_80_label_56
jmp_hell_80_label_25:
	jmp jmp_hell_80_label_55
jmp_hell_80_label_26:
	jmp jmp_hell_80_label_54
jmp_hell_80_label_27:
	jmp jmp_hell_80_label_53
jmp_hell_80_label_28:
	jmp jmp_hell_80_label_52
jmp_hell_80_label_29:
	jmp jmp_hell_80_label_51
jmp_hell_80_label_30:
	jmp jmp_hell_80_label_50
jmp_hell_80_label_31:
	jmp jmp_hell_80_label_49
jmp_hell_80_label_32:
	jmp jmp_hell_80_label_48
jmp_hell_80_label_33:
	jmp jmp_hell_80_label_47
jmp_hell_80_label_34:
	jmp jmp_hell_80_label_46
jmp_hell_80_label_35:
	jmp jmp_hell_80_label_45
jmp_hell_80_label_36:
	jmp jmp_hell_80_label_44
jmp_hell_80_label_37:
	jmp jmp_hell_80_label_43
jmp_hell_80_label_38:
	jmp jmp_hell_80_label_42
jmp_hell_80_label_39:
	jmp jmp_hell_80_label_41
jmp_hell_80_label_40:
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
	ret
jmp_hell_80_label_41:
	jmp jmp_hell_80_label_40
jmp_hell_80_label_42:
	jmp jmp_hell_80_label_39
jmp_hell_80_label_43:
	jmp jmp_hell_80_label_38
jmp_hell_80_label_44:
	jmp jmp_hell_80_label_37
jmp_hell_80_label_45:
	jmp jmp_hell_80_label_36
jmp_hell_80_label_46:
	jmp jmp_hell_80_label_35
jmp_hell_80_label_47:
	jmp jmp_hell_80_label_34
jmp_hell_80_label_48:
	jmp jmp_hell_80_label_33
jmp_hell_80_label_49:
	jmp jmp_hell_80_label_32
jmp_hell_80_label_50:
	jmp jmp_hell_80_label_31
jmp_hell_80_label_51:
	jmp jmp_hell_80_label_30
jmp_hell_80_label_52:
	jmp jmp_hell_80_label_29
jmp_hell_80_label_53:
	jmp jmp_hell_80_label_28
jmp_hell_80_label_54:
	jmp jmp_hell_80_label_27
jmp_hell_80_label_55:
	jmp jmp_hell_80_label_26
jmp_hell_80_label_56:
	jmp jmp_hell_80_label_25
jmp_hell_80_label_57:
	jmp jmp_hell_80_label_24
jmp_hell_80_label_58:
	jmp jmp_hell_80_label_23
jmp_hell_80_label_59:
	jmp jmp_hell_80_label_22
jmp_hell_80_label_60:
	jmp jmp_hell_80_label_21
jmp_hell_80_label_61:
	jmp jmp_hell_80_label_20
jmp_hell_80_label_62:
	jmp jmp_hell_80_label_19
jmp_hell_80_label_63:
	jmp jmp_hell_80_label_18
jmp_hell_80_label_64:
	jmp jmp_hell_80_label_17
jmp_hell_80_label_65:
	jmp jmp_hell_80_label_16
jmp_hell_80_label_66:
	jmp jmp_hell_80_label_15
jmp_hell_80_label_67:
	jmp jmp_hell_80_label_14
jmp_hell_80_label_68:
	jmp jmp_hell_80_label_13
jmp_hell_80_label_69:
	jmp jmp_hell_80_label_12
jmp_hell_80_label_70:
	jmp jmp_hell_80_label_11
jmp_hell_80_label_71:
	jmp jmp_hell_80_label_10
jmp_hell_80_label_72:
	jmp jmp_hell_80_label_9
jmp_hell_80_label_73:
	jmp jmp_hell_80_label_8
jmp_hell_80_label_74:
	jmp jmp_hell_80_label_7
jmp_hell_80_label_75:
	jmp jmp_hell_80_label_6
jmp_hell_80_label_76:
	jmp jmp_hell_80_label_5
jmp_hell_80_label_77:
	jmp jmp_hell_80_label_4
jmp_hell_80_label_78:
	jmp jmp_hell_80_label_3
jmp_hell_80_label_79:
	jmp jmp_hell_80_label_2
jmp_hell_80_label_80:
	jmp jmp_hell_80_label_1
