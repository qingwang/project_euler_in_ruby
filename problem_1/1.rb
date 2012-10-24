# Add all the natural numbers below one thousand that are multiples of 3 or 5.
#
# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

class ProjectEuler
  def sum_of_multiples(upper_limit, multiple_1, multiple_2)
    sum = 0
    (1...upper_limit).each do |n|
      sum += n if n % multiple_1 == 0 || n % multiple_2 == 0
    end
    sum
  end
end

solver = ProjectEuler.new
puts solver.sum_of_multiples(1000, 3, 5)
