# Find the 10001st prime.
#
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10001st prime number?

class ProjectEuler
  def find_the_Nth_prime_number(n)

    primes    = Array.new
    primes[0] = 2
    iterater  = 3

    while primes[n-1] == nil
      is_prime = true
      primes.each { |prime| is_prime = false if iterater % prime == 0 }
      primes << iterater if is_prime == true
      iterater += 2
    end
    primes.last
  end
end

solver = ProjectEuler.new
puts solver.find_the_Nth_prime_number(10001)
