import unittest
from swapper import swap

class SwapperTestCase(unittest.TestCase):

    def test_swapping(self):
        first_variable = "haystack"
        #       012345678901234567890123456789
        line = "if (in_array($haystack, $a)) {"
        # cursor wasy on "y" in "haystack"
        column = 16
        result = swap(first_variable, line, column)

        expected = "if (in_array($a, $haystack)) {"
        self.assertEqual(expected, result)

if __name__ == '__main__':
    unittest.main()
