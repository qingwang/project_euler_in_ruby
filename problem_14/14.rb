# Find the longest sequence using a starting number under one million.
#
# The following iterative sequence is defined for the set of positive integers:
#   n -> n/2 (n is even)
#   n -> 3n + 1 (n is odd)
# Using the rule above and starting with 13, we generate the following sequence:
#   13 -> 40 -> 20 -> 10 -> 5 -> 16 -> 8 -> 4 -> 2 -> 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
# Which starting number, under one million, produces the longest chain?
# NOTE: Once the chain starts the terms are allowed to go above one million.

class ProjectEuler
  def find_longest_sequence_under(n)

    current_max    = 0
    appeared_terms = Array.new
    i = 0

    loop do
      i += 1
      next  if appeared_terms.include?(i)
      break if i >= n

      term_count   = 1
      j            = i

      while j > 1
        j = j % 2 == 0 ? j / 2 : j * 3 + 1
        term_count += 1
        appeared_terms << j
      end

      current_max = term_count if term_count > current_max
    end
    current_max
  end
end

solver = ProjectEuler.new
puts solver.find_longest_sequence_under(1000000)
