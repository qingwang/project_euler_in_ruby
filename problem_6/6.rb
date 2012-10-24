# What is the difference between the sum of the squares and the square of the sums?
#
# The sum of the squares of the first ten natural numbers is,
#   square(1)  + ... + square(10) = 385
# The square of the sum of the first ten natural numbers is,
#   square(1 + 2 + ... + 10) = square(552) = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 - 385 = 2640.
# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

class ProjectEuler
  def diff_between_sum_of_sqr_and_sqr_sum_of_first_n_numbers(n)
    sum_of_sqr = (1..n).inject { |memo, i| memo + i*i }
    sqr_sum    = ((1 + n) * n / 2) * ((1 + n) * n / 2)
    sqr_sum - sum_of_sqr
  end
end

solver = ProjectEuler.new
puts solver.diff_between_sum_of_sqr_and_sqr_sum_of_first_n_numbers(100)
