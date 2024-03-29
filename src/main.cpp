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
    std::vector<std::function<uint64_t ()>> const all_functions
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

    std::valarray<uint64_t> diff_min(all_functions.size());
    std::valarray<uint64_t> diff_max(all_functions.size());

    std::vector<size_t> const index_values
    {
        10U,
        20U,
        30U,
        40U,
        50U,
        60U,
        70U,
        80U,
        90U,
        100U,
        200U,
        300U,
        400U,
        500U,
        600U,
        700U,
        800U,
        900U,
        1000U,
        2000U,
        3000U,
        4000U,
        5000U,
        6000U,
        7000U,
        8000U,
        9000U,
        10000U,
        20000U,
        30000U,
        40000U,
        50000U,
        60000U,
        70000U,
        80000U,
        90000U,
        100000U
    };

    std::vector<bool> const checks
    {
        (diff_min.size() == diff_max.size()),
        (index_values.size() == diff_max.size()),
        (index_values.size() == diff_min.size())
    };

    if (not std::all_of(checks.cbegin(), checks.cend(), [](bool flag) { return flag; }))
    {
        const std::string size_check { "Size check failed" };
        throw std::invalid_argument(size_check);
    }

    // First run to initialize diff_min and diff_max
    {
        size_t cnt = 0U;

        uint64_t T0 = jmp_hell_100000();

        for (auto function: all_functions)
        {
            uint64_t const T1 = function();

            uint64_t const diff = (T1 - T0);

            diff_min[cnt] = diff;
            diff_max[cnt] = diff;

            ++cnt;

            T0 = T1;
        }
    }

    for (size_t step = 0U; step < 100000U; ++step)
    {
        size_t cnt = 0U;

        uint64_t T0 = jmp_hell_100000();

        for (auto function: all_functions)
        {
            uint64_t const T1 = function();

            uint64_t const diff = (T1 - T0);

            diff_min[cnt] = std::min(diff_min[cnt], diff);
            diff_max[cnt] = std::max(diff_max[cnt], diff);

            ++cnt;

            T0 = T1;
        }
    }

    for (size_t i = 0U; i < diff_min.size(); ++i)
    {
        std::cout << index_values[i] << ": " << diff_min[i] << " ... " << diff_max[i] << std::endl;
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
