# Starting in the top left corner of a 2 * 2 grid, there are 6 routes (without backtracking) to the bottom right corner.
#
# How many routes are there through a 20 * 20 grid?

class ProjectEuler
  def route_count(grid_side_length)
    path_diagonals = [[1, 0]]

    1.upto(grid_side_length * 2) do
      next_diagonal = Array.new

      path_diagonals.last.each_with_index do |a, i|
        next_diagonal[i] = i == 0 ? 1 : path_diagonals.last[i] + path_diagonals.last[i - 1]
      end

      path_diagonals << (next_diagonal << 0)

    end

    p path_diagonals.last.max
  end
end

solver = ProjectEuler.new
solver.route_count(20)

#                         1   0
#                       1   1   0
#                     1   2   1   0
#                   1   3   3   1   0
#                 1   4   6   4   1   0
#               .......
