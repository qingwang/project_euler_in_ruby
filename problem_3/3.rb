# Find the largest prime factor of a composite number.
#
# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

class ProjectEuler
  def find_max_prime_factor_for(a_big_number)
    larger_factor  = a_big_number
    smaller_factor = 2

    while smaller_factor < larger_factor / smaller_factor
      if larger_factor % smaller_factor == 0
        larger_factor /= smaller_factor
      else
        smaller_factor +=1
      end
    end
    larger_factor
  end
end

solver = ProjectEuler.new
puts solver.find_max_prime_factor_for(600851475143)
