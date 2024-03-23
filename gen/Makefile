CXXFLAGS += -O2
CXXFLAGS += -Wall
CXXFLAGS += -Wextra
CXXFLAGS += -pedantic
CXXFLAGS += -Weffc++
CXXFLAGS += -std=c++23

ASFLAGS64  = --64

CPPASM_INC = ../../cppasm/src
CPPASM_OBJ = ../../cppasm/src/obj/*.o

ASM_FILE = ../src/jmp_func.S

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
	./generate.exe > $(ASM_FILE)

check:
	$(AS) $(ASM_FILE) ${ASFLAGS64} -o jmp_func.o
