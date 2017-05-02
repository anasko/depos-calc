#include "../thirdparty/ctest.h"

CTEST(suite2, test1) {
    float result = calc(1000, 3);
    float expected = 1060;
    ASSERT_EQUAL(expected, result);
}

CTEST(suite2, test2) {
    float result = calc(2430, 4);
    float expected = 2721.6;
    ASSERT_EQUAL(expected, result);
}

CTEST(suite2, test3) {
    float result = calc(1150, 1);
    float expected = 1035;
    ASSERT_EQUAL(expected, result);
}
