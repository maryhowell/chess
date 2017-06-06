
require_relative 'piece'
require_relative 'stepable'

class Knight < Piece
  include Stepable

  def initialize(location, board, side)
    super(location, board)
    @symbol = side == :white ? "♘" : "♞"
  end

  def symbol
    @symbol
  end

  protected

  def move_diffs
    KNIGHT_DELTAS
  end
end
