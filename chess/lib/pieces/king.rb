require_relative 'piece'
require_relative 'stepable'

class King < Piece
  include Stepable

  def initialize(location, board, side)
    super(location, board)
    @symbol = side == :white ? "♔" : "♚"
  end

  def symbol
    @symbol
  end

  protected

  def move_diffs
    HORIZONTAL_DELTAS + DIAGONAL_DELTAS
  end
end
