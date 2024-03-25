.section .text
# jmp_hell_10 jumps forth and back 10 times
# and returns timestamp counter after that
# uint64_t jmp_hell_10()
.global jmp_hell_10
jmp_hell_10:
	jmp jmp_hell_10_label_10
jmp_hell_10_label_1:
	jmp jmp_hell_10_label_9
jmp_hell_10_label_2:
	jmp jmp_hell_10_label_8
jmp_hell_10_label_3:
	jmp jmp_hell_10_label_7
jmp_hell_10_label_4:
	jmp jmp_hell_10_label_6
jmp_hell_10_label_5:
	rdtsc
	shl $32, %rdx
	or %rdx, %rax
	ret
jmp_hell_10_label_6:
	jmp jmp_hell_10_label_5
jmp_hell_10_label_7:
	jmp jmp_hell_10_label_4
jmp_hell_10_label_8:
	jmp jmp_hell_10_label_3
jmp_hell_10_label_9:
	jmp jmp_hell_10_label_2
jmp_hell_10_label_10:
	jmp jmp_hell_10_label_1
