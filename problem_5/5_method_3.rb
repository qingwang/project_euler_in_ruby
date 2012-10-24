# What is the smallest number divisible by each of the numbers 1 to 20?
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class ProjectEuler
  def find_smallest_divisble_by_1_to_n(n)
    (1..n).reduce(:lcm)
  end
end

solver = ProjectEuler.new
puts solver.find_smallest_divisble_by_1_to_n(20)
