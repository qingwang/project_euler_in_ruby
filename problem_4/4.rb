# Find the largest palindrome made from the product of two 3-digit numbers.
#
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

class ProjectEuler
  def find_largest_palindrome_made_from_two_3_digit_numbers
    pool = Array.new

    999.downto(100) do |i|
      i.downto(100) do |j|
        pool << i * j if (i * j).to_s == (i * j).to_s.reverse
      end
    end
    pool.max
  end
end

solver = ProjectEuler.new
puts solver.find_largest_palindrome_made_from_two_3_digit_numbers
