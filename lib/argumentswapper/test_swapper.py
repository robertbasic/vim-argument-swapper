import unittest
from swapper import swap

class SwapperTestCase(unittest.TestCase):

    def test_swapping(self):
        #       012345678901234567890123456789
        line = "if (in_array($haystack, $a)) {"
        # cursor was on "y" in "haystack"
        column = 16
        result = swap(line, column)

        expected = "if (in_array($a, $haystack)) {"
        self.assertEqual(expected, result)

    def test_swapping_complex(self):
        # The \\ is an escaped \
        #       012345678901234567890123456789012345678901234567890123 456789012345678901
        line = 'public function __construct(array $an_array = [], Some\\Namespace $order)'
        # cursor was on "r" of "array" type hint
        column = 30

        result = swap(line, column)

        expected = 'public function __construct(Some\\Namespace $order, array $an_array = [])'
        self.assertEqual(expected, result)

    def test_swapping_with_multiple_variables(self):
        #       0123456789091234567890
        line = "$x = func($b, $a, $c);"
        column = 10

        result = swap(line, column)

        expected = "$x = func($a, $b, $c);"
        self.assertEqual(expected, result)

    def test_swapping_with_multiple_variables_second_and_third(self):
        #       0123456789091234567890
        line = "$x = func($a, $c, $b);"
        column = 14

        result = swap(line, column)

        expected = "$x = func($a, $b, $c);"
        self.assertEqual(expected, result)

if __name__ == '__main__':
    unittest.main()
