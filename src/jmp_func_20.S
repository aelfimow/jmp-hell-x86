.section .text
# jmp_hell_20 jumps forth and back 20 times
# and returns timestamp counter after that
# uint64_t jmp_hell_20()
.global jmp_hell_20
jmp_hell_20:
	jmp jmp_hell_20_label_20
jmp_hell_20_label_1:
	jmp jmp_hell_20_label_19
jmp_hell_20_label_2:
	jmp jmp_hell_20_label_18
jmp_hell_20_label_3:
	jmp jmp_hell_20_label_17
jmp_hell_20_label_4:
	jmp jmp_hell_20_label_16
jmp_hell_20_label_5:
	jmp jmp_hell_20_label_15
jmp_hell_20_label_6:
	jmp jmp_hell_20_label_14
jmp_hell_20_label_7:
	jmp jmp_hell_20_label_13
jmp_hell_20_label_8:
	jmp jmp_hell_20_label_12
jmp_hell_20_label_9:
	jmp jmp_hell_20_label_11
jmp_hell_20_label_10:
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
	ret
jmp_hell_20_label_11:
	jmp jmp_hell_20_label_10
jmp_hell_20_label_12:
	jmp jmp_hell_20_label_9
jmp_hell_20_label_13:
	jmp jmp_hell_20_label_8
jmp_hell_20_label_14:
	jmp jmp_hell_20_label_7
jmp_hell_20_label_15:
	jmp jmp_hell_20_label_6
jmp_hell_20_label_16:
	jmp jmp_hell_20_label_5
jmp_hell_20_label_17:
	jmp jmp_hell_20_label_4
jmp_hell_20_label_18:
	jmp jmp_hell_20_label_3
jmp_hell_20_label_19:
	jmp jmp_hell_20_label_2
jmp_hell_20_label_20:
	jmp jmp_hell_20_label_1
