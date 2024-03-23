CXXFLAGS += -O2
CXXFLAGS += -Wall
CXXFLAGS += -Wextra
CXXFLAGS += -pedantic
CXXFLAGS += -Weffc++
CXXFLAGS += -std=c++23

ASFLAGS64  = --64
ASFLAGS64 += -march=corei7

.PHONY: compile
.PHONY: link

all: compile link

compile:
	$(CXX) -c main.cpp -o main.o ${CXXFLAGS}
	$(AS) jmp_hell.S ${ASFLAGS64} -o jmp_hell.o

link:
	$(CXX) main.o jmp_hell.o -o jmp_hell.exe ${CXXFLAGS}
