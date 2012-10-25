# Calculate the sum of all the primes below two million.
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

require 'prime'
puts Prime.take_while { |prime| prime < 2000000 }.inject(:+)
