#include "deposit.h"
#include "ctest.h"

CTEST(money, onetwoone_twoforezero) {
    float result = calc(1000, 3);
    float expected = 1060;
    ASSERT_EQUAL(expected, result);
}

CTEST(money, twoforeone_threesixfive) {
    float result = calc(2430, 4);
    float expected = 2721.6;
    ASSERT_EQUAL(expected, result);
}

CTEST(money, less_threezero) {
    float result = calc(1150, 1);
    float expected = 1035;
    ASSERT_EQUAL(expected, result);
}
