

module Stepable
  HORIZONTAL_DELTAS = [[1, 0], [0, 1], [-1, 0], [0, -1]]
  DIAGONAL_DELTAS = [[1, 1], [-1, -1], [-1, 1], [1, -1]]
  KNIGHT_DELTAS = [[1, 2], [-1, 2], [-2, 1], [2, 1], [-2, -1], [2, -1], [-1, -2], [1, -2]]

  def moves
    new_moves = move_diffs.map do |direction|
                x = direction[0] + @location[0]
                y = direction[1] + @location[1]
                [x, y]
    end
    new_moves.delete_if do |new_move|
      out_of_bounds?(new_move) || !@board[new_move].empty?
    end
  end

  def out_of_bounds?(dx, dy)
    dx > 7 || dy > 7 || dx < 0 || dy < 0
  end

  private

  def move_diffs
    raise 'Not defined for steppable class instance'
  end
end
