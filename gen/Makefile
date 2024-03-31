CXXFLAGS += -O2
CXXFLAGS += -Wall
CXXFLAGS += -Wextra
CXXFLAGS += -pedantic
CXXFLAGS += -Weffc++
CXXFLAGS += -std=c++23

ASFLAGS64  = --64

CPPASM_INC = ../../cppasm/src
CPPASM_OBJ = ../../cppasm/src/obj/*.o

ASM_FILE_RDTSC = ../src/rdtsc_func.S

ASM_FILE_10 = ../src/jmp_func_10.S
ASM_FILE_20 = ../src/jmp_func_20.S
ASM_FILE_30 = ../src/jmp_func_30.S
ASM_FILE_40 = ../src/jmp_func_40.S
ASM_FILE_50 = ../src/jmp_func_50.S
ASM_FILE_60 = ../src/jmp_func_60.S
ASM_FILE_70 = ../src/jmp_func_70.S
ASM_FILE_80 = ../src/jmp_func_80.S
ASM_FILE_90 = ../src/jmp_func_90.S

ASM_FILE_100 = ../src/jmp_func_100.S
ASM_FILE_200 = ../src/jmp_func_200.S
ASM_FILE_300 = ../src/jmp_func_300.S
ASM_FILE_400 = ../src/jmp_func_400.S
ASM_FILE_500 = ../src/jmp_func_500.S
ASM_FILE_600 = ../src/jmp_func_600.S
ASM_FILE_700 = ../src/jmp_func_700.S
ASM_FILE_800 = ../src/jmp_func_800.S
ASM_FILE_900 = ../src/jmp_func_900.S

ASM_FILE_1000 = ../src/jmp_func_1000.S
ASM_FILE_2000 = ../src/jmp_func_2000.S
ASM_FILE_3000 = ../src/jmp_func_3000.S
ASM_FILE_4000 = ../src/jmp_func_4000.S
ASM_FILE_5000 = ../src/jmp_func_5000.S
ASM_FILE_6000 = ../src/jmp_func_6000.S
ASM_FILE_7000 = ../src/jmp_func_7000.S
ASM_FILE_8000 = ../src/jmp_func_8000.S
ASM_FILE_9000 = ../src/jmp_func_9000.S

ASM_FILE_10000 = ../src/jmp_func_10000.S
ASM_FILE_20000 = ../src/jmp_func_20000.S
ASM_FILE_30000 = ../src/jmp_func_30000.S
ASM_FILE_40000 = ../src/jmp_func_40000.S
ASM_FILE_50000 = ../src/jmp_func_50000.S
ASM_FILE_60000 = ../src/jmp_func_60000.S
ASM_FILE_70000 = ../src/jmp_func_70000.S
ASM_FILE_80000 = ../src/jmp_func_80000.S
ASM_FILE_90000 = ../src/jmp_func_90000.S

ASM_FILE_100000 = ../src/jmp_func_100000.S

.PHONY: compile
.PHONY: link
.PHONY: generate
.PHONY: check

all: compile link generate check
	@echo "No errors"

compile:
	$(CXX) -c generate.cpp -o generate.o -I$(CPPASM_INC) $(CXXFLAGS)

link:
	$(CXX) generate.o $(CPPASM_OBJ) -o generate.exe $(CXXFLAGS)

generate:
	./generate.exe rdtsc > $(ASM_FILE_RDTSC)
	./generate.exe 10 > $(ASM_FILE_10)
	./generate.exe 20 > $(ASM_FILE_20)
	./generate.exe 30 > $(ASM_FILE_30)
	./generate.exe 40 > $(ASM_FILE_40)
	./generate.exe 50 > $(ASM_FILE_50)
	./generate.exe 60 > $(ASM_FILE_60)
	./generate.exe 70 > $(ASM_FILE_70)
	./generate.exe 80 > $(ASM_FILE_80)
	./generate.exe 90 > $(ASM_FILE_90)
	./generate.exe 100 > $(ASM_FILE_100)
	./generate.exe 200 > $(ASM_FILE_200)
	./generate.exe 300 > $(ASM_FILE_300)
	./generate.exe 400 > $(ASM_FILE_400)
	./generate.exe 500 > $(ASM_FILE_500)
	./generate.exe 600 > $(ASM_FILE_600)
	./generate.exe 700 > $(ASM_FILE_700)
	./generate.exe 800 > $(ASM_FILE_800)
	./generate.exe 900 > $(ASM_FILE_900)
	./generate.exe 1000 > $(ASM_FILE_1000)
	./generate.exe 2000 > $(ASM_FILE_2000)
	./generate.exe 3000 > $(ASM_FILE_3000)
	./generate.exe 4000 > $(ASM_FILE_4000)
	./generate.exe 5000 > $(ASM_FILE_5000)
	./generate.exe 6000 > $(ASM_FILE_6000)
	./generate.exe 7000 > $(ASM_FILE_7000)
	./generate.exe 8000 > $(ASM_FILE_8000)
	./generate.exe 9000 > $(ASM_FILE_9000)
	./generate.exe 10000 > $(ASM_FILE_10000)
	./generate.exe 20000 > $(ASM_FILE_20000)
	./generate.exe 30000 > $(ASM_FILE_30000)
	./generate.exe 40000 > $(ASM_FILE_40000)
	./generate.exe 50000 > $(ASM_FILE_50000)
	./generate.exe 60000 > $(ASM_FILE_60000)
	./generate.exe 70000 > $(ASM_FILE_70000)
	./generate.exe 80000 > $(ASM_FILE_80000)
	./generate.exe 90000 > $(ASM_FILE_90000)
	./generate.exe 100000 > $(ASM_FILE_100000)

check:
	$(AS) $(ASM_FILE_RDTSC) $(ASFLAGS64) -o rdtsc_func.o
	$(AS) $(ASM_FILE_10) $(ASFLAGS64) -o jmp_func_10.o
	$(AS) $(ASM_FILE_20) $(ASFLAGS64) -o jmp_func_20.o
	$(AS) $(ASM_FILE_30) $(ASFLAGS64) -o jmp_func_30.o
	$(AS) $(ASM_FILE_40) $(ASFLAGS64) -o jmp_func_40.o
	$(AS) $(ASM_FILE_50) $(ASFLAGS64) -o jmp_func_50.o
	$(AS) $(ASM_FILE_60) $(ASFLAGS64) -o jmp_func_60.o
	$(AS) $(ASM_FILE_70) $(ASFLAGS64) -o jmp_func_70.o
	$(AS) $(ASM_FILE_80) $(ASFLAGS64) -o jmp_func_80.o
	$(AS) $(ASM_FILE_90) $(ASFLAGS64) -o jmp_func_90.o
	$(AS) $(ASM_FILE_100) $(ASFLAGS64) -o jmp_func_100.o
	$(AS) $(ASM_FILE_200) $(ASFLAGS64) -o jmp_func_200.o
	$(AS) $(ASM_FILE_300) $(ASFLAGS64) -o jmp_func_300.o
	$(AS) $(ASM_FILE_400) $(ASFLAGS64) -o jmp_func_400.o
	$(AS) $(ASM_FILE_500) $(ASFLAGS64) -o jmp_func_500.o
	$(AS) $(ASM_FILE_600) $(ASFLAGS64) -o jmp_func_600.o
	$(AS) $(ASM_FILE_700) $(ASFLAGS64) -o jmp_func_700.o
	$(AS) $(ASM_FILE_800) $(ASFLAGS64) -o jmp_func_800.o
	$(AS) $(ASM_FILE_900) $(ASFLAGS64) -o jmp_func_900.o
	$(AS) $(ASM_FILE_1000) $(ASFLAGS64) -o jmp_func_1000.o
	$(AS) $(ASM_FILE_2000) $(ASFLAGS64) -o jmp_func_2000.o
	$(AS) $(ASM_FILE_3000) $(ASFLAGS64) -o jmp_func_3000.o
	$(AS) $(ASM_FILE_4000) $(ASFLAGS64) -o jmp_func_4000.o
	$(AS) $(ASM_FILE_5000) $(ASFLAGS64) -o jmp_func_5000.o
	$(AS) $(ASM_FILE_6000) $(ASFLAGS64) -o jmp_func_6000.o
	$(AS) $(ASM_FILE_7000) $(ASFLAGS64) -o jmp_func_7000.o
	$(AS) $(ASM_FILE_8000) $(ASFLAGS64) -o jmp_func_8000.o
	$(AS) $(ASM_FILE_9000) $(ASFLAGS64) -o jmp_func_9000.o
	$(AS) $(ASM_FILE_10000) $(ASFLAGS64) -o jmp_func_10000.o
	$(AS) $(ASM_FILE_20000) $(ASFLAGS64) -o jmp_func_20000.o
	$(AS) $(ASM_FILE_30000) $(ASFLAGS64) -o jmp_func_30000.o
	$(AS) $(ASM_FILE_40000) $(ASFLAGS64) -o jmp_func_40000.o
	$(AS) $(ASM_FILE_50000) $(ASFLAGS64) -o jmp_func_50000.o
	$(AS) $(ASM_FILE_60000) $(ASFLAGS64) -o jmp_func_60000.o
	$(AS) $(ASM_FILE_70000) $(ASFLAGS64) -o jmp_func_70000.o
	$(AS) $(ASM_FILE_80000) $(ASFLAGS64) -o jmp_func_80000.o
	$(AS) $(ASM_FILE_90000) $(ASFLAGS64) -o jmp_func_90000.o
	$(AS) $(ASM_FILE_100000) $(ASFLAGS64) -o jmp_func_100000.o
