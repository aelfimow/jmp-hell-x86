#include <iostream>
#include <cstdlib>
#include <vector>
#include <numeric>
#include <sstream>
#include <stdexcept>

#include "cppasm.h"

static void generate_func(size_t max_labels);
static void generate_rdtsc();

int main(int argc, char *argv[])
try
{
    if (argc != 2)
    {
        std::cout << "Usage: generate max_labels" << std::endl;
        std::cout << "Usage: generate rdtsc" << std::endl;
        throw std::invalid_argument("Wrong usage");
    }

    {
        std::string const argv_str { argv[1] };

        bool const generate = (argv_str == "rdtsc");

        if (generate)
        {
            generate_rdtsc();
            return EXIT_SUCCESS;
        }
    }

    size_t max_labels = 0U;
    {
        std::stringstream ss { argv[1] };
        ss >> max_labels;
    }

    section code { ".text" };
    code.start();

    generate_func(max_labels);

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

static void generate_rdtsc()
{
    // Function name to be generated
    const std::string func_name { "rdtsc_func" };
    comment("uint64_t " + func_name + "(void)");

    global(func_name);

    section code { ".text" };
    code.start();

    label(func_name);

    // Synchronize the execution pipeline calling CPUID
    {
        r64 &reg_to_save { RBX };

        PUSH(reg_to_save);
        XOR(RAX, RAX);
        CPUID();
        POP(reg_to_save);
    }

    // Get time stamp counter
    RDTSC();

    imm8 bits_to_shift { 32 };
    bits_to_shift.dec();        // generate it as a decimal value
    SHL(RDX, bits_to_shift);

    OR(RAX, RDX);

    RET();
}
