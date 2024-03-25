CXXFLAGS += -O2
CXXFLAGS += -Wall
CXXFLAGS += -Wextra
CXXFLAGS += -pedantic
CXXFLAGS += -Weffc++
CXXFLAGS += -std=c++23

ASFLAGS64  = --64
ASFLAGS64 += -march=corei7

ASM_FILE_OBJ  = jmp_func_10.o
ASM_FILE_OBJ += jmp_func_20.o
ASM_FILE_OBJ += jmp_func_30.o
ASM_FILE_OBJ += jmp_func_40.o
ASM_FILE_OBJ += jmp_func_50.o
ASM_FILE_OBJ += jmp_func_60.o
ASM_FILE_OBJ += jmp_func_70.o
ASM_FILE_OBJ += jmp_func_80.o
ASM_FILE_OBJ += jmp_func_90.o

ASM_FILE_OBJ += jmp_func_100.o
ASM_FILE_OBJ += jmp_func_200.o
ASM_FILE_OBJ += jmp_func_300.o
ASM_FILE_OBJ += jmp_func_400.o
ASM_FILE_OBJ += jmp_func_500.o
ASM_FILE_OBJ += jmp_func_600.o
ASM_FILE_OBJ += jmp_func_700.o
ASM_FILE_OBJ += jmp_func_800.o
ASM_FILE_OBJ += jmp_func_900.o

ASM_FILE_OBJ += jmp_func_1000.o
ASM_FILE_OBJ += jmp_func_2000.o
ASM_FILE_OBJ += jmp_func_3000.o
ASM_FILE_OBJ += jmp_func_4000.o
ASM_FILE_OBJ += jmp_func_5000.o
ASM_FILE_OBJ += jmp_func_6000.o
ASM_FILE_OBJ += jmp_func_7000.o
ASM_FILE_OBJ += jmp_func_8000.o
ASM_FILE_OBJ += jmp_func_9000.o

ASM_FILE_OBJ += jmp_func_10000.o
ASM_FILE_OBJ += jmp_func_20000.o
ASM_FILE_OBJ += jmp_func_30000.o
ASM_FILE_OBJ += jmp_func_40000.o
ASM_FILE_OBJ += jmp_func_50000.o
ASM_FILE_OBJ += jmp_func_60000.o
ASM_FILE_OBJ += jmp_func_70000.o
ASM_FILE_OBJ += jmp_func_80000.o
ASM_FILE_OBJ += jmp_func_90000.o

ASM_FILE_OBJ += jmp_func_100000.S


.PHONY: compile
.PHONY: link

all: compile link

compile:
	$(CXX) -c main.cpp -o main.o ${CXXFLAGS}
	$(AS) jmp_func_10.S $(ASFLAGS64) -o jmp_func_10.o
	$(AS) jmp_func_20.S $(ASFLAGS64) -o jmp_func_20.o
	$(AS) jmp_func_30.S $(ASFLAGS64) -o jmp_func_30.o
	$(AS) jmp_func_40.S $(ASFLAGS64) -o jmp_func_40.o
	$(AS) jmp_func_50.S $(ASFLAGS64) -o jmp_func_50.o
	$(AS) jmp_func_60.S $(ASFLAGS64) -o jmp_func_60.o
	$(AS) jmp_func_70.S $(ASFLAGS64) -o jmp_func_70.o
	$(AS) jmp_func_80.S $(ASFLAGS64) -o jmp_func_80.o
	$(AS) jmp_func_90.S $(ASFLAGS64) -o jmp_func_90.o
	$(AS) jmp_func_100.S $(ASFLAGS64) -o jmp_func_100.o
	$(AS) jmp_func_200.S $(ASFLAGS64) -o jmp_func_200.o
	$(AS) jmp_func_300.S $(ASFLAGS64) -o jmp_func_300.o
	$(AS) jmp_func_400.S $(ASFLAGS64) -o jmp_func_400.o
	$(AS) jmp_func_500.S $(ASFLAGS64) -o jmp_func_500.o
	$(AS) jmp_func_600.S $(ASFLAGS64) -o jmp_func_600.o
	$(AS) jmp_func_700.S $(ASFLAGS64) -o jmp_func_700.o
	$(AS) jmp_func_800.S $(ASFLAGS64) -o jmp_func_800.o
	$(AS) jmp_func_900.S $(ASFLAGS64) -o jmp_func_900.o
	$(AS) jmp_func_1000.S $(ASFLAGS64) -o jmp_func_1000.o
	$(AS) jmp_func_2000.S $(ASFLAGS64) -o jmp_func_2000.o
	$(AS) jmp_func_3000.S $(ASFLAGS64) -o jmp_func_3000.o
	$(AS) jmp_func_4000.S $(ASFLAGS64) -o jmp_func_4000.o
	$(AS) jmp_func_5000.S $(ASFLAGS64) -o jmp_func_5000.o
	$(AS) jmp_func_6000.S $(ASFLAGS64) -o jmp_func_6000.o
	$(AS) jmp_func_7000.S $(ASFLAGS64) -o jmp_func_7000.o
	$(AS) jmp_func_8000.S $(ASFLAGS64) -o jmp_func_8000.o
	$(AS) jmp_func_9000.S $(ASFLAGS64) -o jmp_func_9000.o
	$(AS) jmp_func_10000.S $(ASFLAGS64) -o jmp_func_10000.o
	$(AS) jmp_func_20000.S $(ASFLAGS64) -o jmp_func_20000.o
	$(AS) jmp_func_30000.S $(ASFLAGS64) -o jmp_func_30000.o
	$(AS) jmp_func_40000.S $(ASFLAGS64) -o jmp_func_40000.o
	$(AS) jmp_func_50000.S $(ASFLAGS64) -o jmp_func_50000.o
	$(AS) jmp_func_60000.S $(ASFLAGS64) -o jmp_func_60000.o
	$(AS) jmp_func_70000.S $(ASFLAGS64) -o jmp_func_70000.o
	$(AS) jmp_func_80000.S $(ASFLAGS64) -o jmp_func_80000.o
	$(AS) jmp_func_90000.S $(ASFLAGS64) -o jmp_func_90000.o
	$(AS) jmp_func_100000.S $(ASFLAGS64) -o jmp_func_100000.o

link:
	$(CXX) main.o $(ASM_FILE_OBJ) -o jmp_hell.exe ${CXXFLAGS}
