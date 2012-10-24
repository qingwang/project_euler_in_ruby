# What is the smallest number divisible by each of the numbers 1 to 20?
#
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

class ProjectEuler
  def find_smallest_divisble_by_1_to_n(n)
    all_multiplied = (1..n).inject { |memo, n| memo * n }
    pool = (1..n).to_a.map { |i| all_multiplied / i }

    while pool.size > 1
      pool = pool.map { |i| i == pool.min ? i : i % pool.min }
      pool.delete(0)
    end
    all_multiplied / pool[0]
  end
end

solver = ProjectEuler.new
puts solver.find_smallest_divisble_by_1_to_n(20)
