require_relative 'piece'
require_relative 'slideable'

class Queen < Piece
  include Slideable

  def initialize(location, board, side)
    super(location, board)
    @symbol = side == :white ? "♕" : "♛"
  end

  def symbol
    @symbol
  end

  protected

  def move_dirs
    diagonal_dirs + horizontal_dirs
  end
end
