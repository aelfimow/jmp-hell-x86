#include <iostream>
#include <cstdlib>
#include <functional>

#include "jmp_func.h"


int main(int, char *[])
try
{
    std::vector<std::function<uint64_t ()> const all_functions
    {
        jmp_hell_10,
        jmp_hell_20,
        jmp_hell_30,
        jmp_hell_40,
        jmp_hell_50,
        jmp_hell_60,
        jmp_hell_70,
        jmp_hell_80,
        jmp_hell_90,
        jmp_hell_100,
        jmp_hell_200,
        jmp_hell_300,
        jmp_hell_400,
        jmp_hell_500,
        jmp_hell_600,
        jmp_hell_700,
        jmp_hell_800,
        jmp_hell_900,
        jmp_hell_1000,
        jmp_hell_2000,
        jmp_hell_3000,
        jmp_hell_4000,
        jmp_hell_5000,
        jmp_hell_6000,
        jmp_hell_7000,
        jmp_hell_8000,
        jmp_hell_9000,
        jmp_hell_10000,
        jmp_hell_20000,
        jmp_hell_30000,
        jmp_hell_40000,
        jmp_hell_50000,
        jmp_hell_60000,
        jmp_hell_70000,
        jmp_hell_80000,
        jmp_hell_90000,
        jmp_hell_100000
    };

    for (auto function: all_functions)
    {
        uint64_t timestamp = function();

        std::cout << timestamp << std::endl;
    }

    return EXIT_SUCCESS;
}
catch (...)
{
    std::cerr << "Error, exception" << std::endl;
    return EXIT_FAILURE;
}
