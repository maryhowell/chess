require_relative 'piece'
require_relative 'slideable'

class Rook < Piece
  include Slideable

  def initialize(location, board, side)
    super(location, board)
    @symbol = side == :white ? "♖" : "♜"
  end

  def symbol
    @symbol
  end

  protected

  def move_dirs
    horizontal_dirs
  end
end
