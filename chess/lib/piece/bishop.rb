require_relative 'piece'
require_relative 'slideable'

class Bishop < Piece
  include Slideable

  def initialize(location, board, side)
    super(location, board, side)
    @symbol = side == :white ? "♗" : "♝"
  end

  def symbol
    @symbol
  end

  protected

  def move_dirs
    diagonal_dirs
  end

end
