#include "deposit.h"
#include "ctest.h"

CTEST(srok, fore) {
    int result = chooseSrok(254);
    int expected = 4;
    ASSERT_EQUAL(expected, result);
}

CTEST(srok, three) {
    int result = chooseSrok(186);
    int expected = 3;
    ASSERT_EQUAL(expected, result);
}

CTEST(srok, one) {
    int result = chooseSrok(10);
    int expected = 1;
    ASSERT_EQUAL(expected, result);
}
