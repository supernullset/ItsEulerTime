#include <stdio.h>

/*********************************************************************/
/* If we list all the natural numbers below 10 that are multiples of */
/* 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.   */
/*                                                                   */
/* Find the sum of all the multiples of 3 or 5 below 1000.           */
/*********************************************************************/


int main(void)
{
  // Ensure this is appropriately initialized rather than being a garbage number
  int sum = 0;

  // Brute force search - there is an additonal perf improvement that
  // we could hit here by some basic math about what numbers are
  // possible candidates 2021-01-20:14:48

  // Q: Can I improve upon this by prime factorization somehow?
  for (int i = 0; i < 1000; ++i) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }

  printf("%i\n", sum);
  return 0;
}
