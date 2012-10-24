# What is the smallest number divisible by each of the numbers 1 to 20?
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class ProjectEuler
  def find_smallest_divisble_by_1_to_n(n)
    num = n * (n - 1)
    while true
      return num if divisble_by_all(num, n)
      num += 1
    end
  end

  def divisble_by_all(i, n)
    divisble = true
    (1..n).each do |j|
      divisble = false if i % j != 0
    end
    divisble
  end
end

solver = ProjectEuler.new
puts solver.find_smallest_divisble_by_1_to_n(20)
