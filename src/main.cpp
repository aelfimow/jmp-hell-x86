#include <iostream>
#include <cstdlib>
#include <valarray>
#include <functional>
#include <stdexcept>

#include "jmp_func.h"

struct jmp_hell_func
{
    uint64_t (* const func)();
    size_t const jmp_count;
    size_t min;
    size_t max;
};

int main(int, char *[])
try
{
    std::vector<jmp_hell_func> all_functions
    {
        { jmp_hell_10, 10U, 0U, 0U },
        { jmp_hell_20, 20U, 0U, 0U },
        { jmp_hell_30, 30U, 0U, 0U },
        { jmp_hell_40, 40U, 0U, 0U },
        { jmp_hell_50, 50U, 0U, 0U },
        { jmp_hell_60, 60U, 0U, 0U },
        { jmp_hell_70, 70U, 0U, 0U },
        { jmp_hell_80, 80U, 0U, 0U },
        { jmp_hell_90, 90U, 0U, 0U },
        { jmp_hell_100, 100U, 0U, 0U },
        { jmp_hell_200, 200U, 0U, 0U },
        { jmp_hell_300, 300U, 0U, 0U },
        { jmp_hell_400, 400U, 0U, 0U },
        { jmp_hell_500, 500U, 0U, 0U },
        { jmp_hell_600, 600U, 0U, 0U },
        { jmp_hell_700, 700U, 0U, 0U },
        { jmp_hell_800, 800U, 0U, 0U },
        { jmp_hell_900, 900U, 0U, 0U },
        { jmp_hell_1000, 1000U, 0U, 0U },
        { jmp_hell_2000, 2000U, 0U, 0U },
        { jmp_hell_3000, 3000U, 0U, 0U },
        { jmp_hell_4000, 4000U, 0U, 0U },
        { jmp_hell_5000, 5000U, 0U, 0U },
        { jmp_hell_6000, 6000U, 0U, 0U },
        { jmp_hell_7000, 7000U, 0U, 0U },
        { jmp_hell_8000, 8000U, 0U, 0U },
        { jmp_hell_9000, 9000U, 0U, 0U },
        { jmp_hell_10000, 10000U, 0U, 0U },
        { jmp_hell_20000, 20000U, 0U, 0U },
        { jmp_hell_30000, 30000U, 0U, 0U },
        { jmp_hell_40000, 40000U, 0U, 0U },
        { jmp_hell_50000, 50000U, 0U, 0U },
        { jmp_hell_60000, 60000U, 0U, 0U },
        { jmp_hell_70000, 70000U, 0U, 0U },
        { jmp_hell_80000, 80000U, 0U, 0U },
        { jmp_hell_90000, 90000U, 0U, 0U },
        { jmp_hell_100000, 100000U, 0U, 0U }
    };

    // First run to initialize min and max
    {
        uint64_t T0 = jmp_hell_10();

        for (auto &function: all_functions)
        {
            uint64_t const T1 = function.func();

            uint64_t const diff = (T1 - T0);

            function.min = diff;
            function.max = diff;

            T0 = T1;
        }
    }

    for (size_t step = 0U; step < 1000U; ++step)
    {
        uint64_t T0 = jmp_hell_10();

        for (auto &function: all_functions)
        {
            uint64_t const T1 = function.func();

            uint64_t const diff = (T1 - T0);

            if (diff < function.min)
            {
                function.min = diff;
            }

            if (diff > function.max)
            {
                function.max = diff;
            }

            T0 = T1;
        }
    }


    for (auto const &function: all_functions)
    {
        auto const &jmp_count = function.jmp_count;
        auto const &min = function.min;
        auto const &max = function.max;

        std::cout << jmp_count << ": " << min << "; " << max << std::endl;
    }

    return EXIT_SUCCESS;
}
catch (std::exception &exc)
{
    std::cerr << "Exception: " << exc.what() << std::endl;
    return EXIT_FAILURE;
}
catch (...)
{
    std::cerr << "Error, exception" << std::endl;
    return EXIT_FAILURE;
}
