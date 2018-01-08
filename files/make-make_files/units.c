#include <criterion/criterion.h>

//IF YOU USE THESE TESTS, REMEMBER TO PUT YOUR main FUNCTION ALONE IN A main.c FILE !!

/* Tests examples:
Values:
cr_assert_eq(actual, expected); -> Passes if actual == expected
cr_assert_neq(actual, expected); -> The opposite
cr_assert(condition) -> Passes if condition is true
cr_assert_not(condition) -> The opposite

Pointers:
cr_assert_null(value) -> Passes if value is NULL
cr_assert_not_null(value) -> The opposite

Strings:
cr_assert_str_eq(actual, expected) -> Passes if actual is the same as expected
cr_assert_str_neq(actual, expected) -> The opposite

Arrays:
cr_assert_arr_eq(actual, expected) -> Passes if actual and expected are the same
cr_assert_arr_neq(actual, expected) -> The opposite

For more: http://criterion.readthedocs.io/en/master/assert.html#array-assertions

To display log messages :
cr_log_info|warn|error(message);*/

Test(Suite, Name)
{
	//Things
}
