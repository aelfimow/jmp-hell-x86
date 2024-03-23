#include <iostream>
#include <cstdlib>
#include <vector>
#include <numeric>

#include "cppasm.h"

static void generate_func(size_t max_labels);

int main(int, char *[])
try
{
    section code { ".text" };
    code.start();

    std::vector<size_t> const all_max_labels
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

    for (size_t max_labels: all_max_labels)
    {
        generate_func(max_labels);
    }

    return EXIT_SUCCESS;
}
catch (...)
{
    std::cerr << "Error, exception" << std::endl;

    return EXIT_FAILURE;
}

static void generate_func(size_t max_labels)
{
    std::string func_name { "jmp_hell" };

    func_name.append("_");
    func_name.append(std::to_string(max_labels));

    comment(func_name + " jumps forth and back " + std::to_string(max_labels) + " times");
    comment("and returns timestamp counter after that");
    comment("uint64_t " + func_name + "()");

    global(func_name);

    label(func_name);

    auto compute_retcnt = [&max_labels]() -> size_t
    {
        bool const is_even = (0U == (max_labels % 2U));

        if (is_even)
        {
            size_t const result = (max_labels / 2U);
            return result;
        }

        size_t const result = ((max_labels + 1U) / 2U);
        return result;
    };

    size_t const retcnt = compute_retcnt();

    auto labelstr = [&func_name](size_t index) -> std::string
    {
        std::string str = func_name;

        str.append("_label_");
        str.append(std::to_string(index));

        return str;
    };

    size_t labelcnt = max_labels;
    {
        std::string tmpstr = labelstr(labelcnt);
        JMP(tmpstr);
    }

    for (size_t i = 0U, cnt = 1U; i < max_labels; ++i, ++cnt)
    {
        {
            std::string tmpstr = labelstr(cnt);
            label(tmpstr);
        }

        bool const generate_ret = (cnt == retcnt);

        if (generate_ret)
        {
            // Get time stamp counter
            RDTSC();

            imm8 bits_to_shift { 32 };
            bits_to_shift.dec();        // generate it as a decimal value

            SHL(RDX, bits_to_shift);

            OR(RAX, RDX);

            RET();
        }
        else
        {
            --labelcnt;
            std::string tmpstr = labelstr(labelcnt);
            JMP(tmpstr);
        }
    }
}
