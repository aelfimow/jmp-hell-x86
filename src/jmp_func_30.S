.section .text
# jmp_hell_30 jumps forth and back 30 times
# and returns timestamp counter after that
# uint64_t jmp_hell_30()
.global jmp_hell_30
jmp_hell_30:
	jmp jmp_hell_30_label_30
jmp_hell_30_label_1:
	jmp jmp_hell_30_label_29
jmp_hell_30_label_2:
	jmp jmp_hell_30_label_28
jmp_hell_30_label_3:
	jmp jmp_hell_30_label_27
jmp_hell_30_label_4:
	jmp jmp_hell_30_label_26
jmp_hell_30_label_5:
	jmp jmp_hell_30_label_25
jmp_hell_30_label_6:
	jmp jmp_hell_30_label_24
jmp_hell_30_label_7:
	jmp jmp_hell_30_label_23
jmp_hell_30_label_8:
	jmp jmp_hell_30_label_22
jmp_hell_30_label_9:
	jmp jmp_hell_30_label_21
jmp_hell_30_label_10:
	jmp jmp_hell_30_label_20
jmp_hell_30_label_11:
	jmp jmp_hell_30_label_19
jmp_hell_30_label_12:
	jmp jmp_hell_30_label_18
jmp_hell_30_label_13:
	jmp jmp_hell_30_label_17
jmp_hell_30_label_14:
	jmp jmp_hell_30_label_16
jmp_hell_30_label_15:
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
	ret
jmp_hell_30_label_16:
	jmp jmp_hell_30_label_15
jmp_hell_30_label_17:
	jmp jmp_hell_30_label_14
jmp_hell_30_label_18:
	jmp jmp_hell_30_label_13
jmp_hell_30_label_19:
	jmp jmp_hell_30_label_12
jmp_hell_30_label_20:
	jmp jmp_hell_30_label_11
jmp_hell_30_label_21:
	jmp jmp_hell_30_label_10
jmp_hell_30_label_22:
	jmp jmp_hell_30_label_9
jmp_hell_30_label_23:
	jmp jmp_hell_30_label_8
jmp_hell_30_label_24:
	jmp jmp_hell_30_label_7
jmp_hell_30_label_25:
	jmp jmp_hell_30_label_6
jmp_hell_30_label_26:
	jmp jmp_hell_30_label_5
jmp_hell_30_label_27:
	jmp jmp_hell_30_label_4
jmp_hell_30_label_28:
	jmp jmp_hell_30_label_3
jmp_hell_30_label_29:
	jmp jmp_hell_30_label_2
jmp_hell_30_label_30:
	jmp jmp_hell_30_label_1
