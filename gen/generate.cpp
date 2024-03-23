#include <iostream>
#include <cstdlib>
#include <numeric>

#include "cppasm.h"

static void generate_func(size_t max_labels);

int main(int argc, char *argv[])
try
{
    generate_func(10U);

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

    section code { ".text" };
    code.start();

    label(func_name);

    size_t cnt = 0U;
    size_t const maxcnt = max_labels;
    size_t const retcnt = (max_labels / 2U);

    auto labelstr = [](size_t index) -> std::string
    {
        std::string str = "label_";

        str.append(std::to_string(index));

        return str;
    };

    JMP(labelstr(maxcnt - cnt));

    while (maxcnt > cnt)
    {
        ++cnt;

        label(labelstr(cnt));

        bool const generate_ret = (cnt == retcnt);

        if (generate_ret)
        {
            RET();
        }
        else
        {
            JMP(labelstr(maxcnt - cnt));
        }
    }
}
