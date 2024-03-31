#ifdef RDTSC_FUNC_H
#error Already included
#else

#define RDTSC_FUNC_H    1

extern "C"
{
    uint64_t rdtsc_func();
}

#endif
