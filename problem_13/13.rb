# Find the first ten digits of the sum of one-hundred 50-digit numbers.
#
# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.
# The numbers are in 'numbers.txt'

class ProjectEuler
  def first_10_digits_of_sum_in(number_list_file)

    file = File.open(number_list_file)
    sum  = file.each_line.inject { |memo, line| memo.to_i + line.to_i }
    sum.to_s.slice(0, 10)
  end
end

solver = ProjectEuler.new
puts solver.first_10_digits_of_sum_in('numbers.txt')
