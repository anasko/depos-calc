#include "../thirdparty/ctest.h"

CTEST(suite1, test1) {
    int result = chooseSrok(254);
    int expected = 4;
    ASSERT_EQUAL(expected, result);
}

CTEST(suite1, test2) {
    int result = chooseSrok(186);
    int expected = 3;
    ASSERT_EQUAL(expected, result);
}

CTEST(suite1, test3) {
    int result = chooseSrok(10);
    int expected = 1;
    ASSERT_EQUAL(expected, result);
}
