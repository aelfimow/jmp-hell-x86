#include <iostream>
#include <cstdlib>
#include <numeric>

#include "cppasm.h"

static void generate_func(size_t max_labels);

int main(int, char *[])
try
{
    section code { ".text" };
    code.start();

    generate_func(1U);
    generate_func(2U);
    generate_func(3U);
    generate_func(4U);
    generate_func(6U);

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

    comment("void " + func_name + "()");

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
