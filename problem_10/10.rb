# Calculate the sum of all the primes below two million.
#
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

class ProjectEuler
  def find_primes_sum_below(n)

    primes = Array.new
    primes[0] = 2

    (3..n).each do |i|
      is_prime = true
      primes.each { |prime| is_prime = false if i % prime == 0 }
      primes << i if is_prime ==  true
    end
    primes.inject(:+)
  end
end

solver = ProjectEuler.new
puts solver.find_primes_sum_below(2000000)
