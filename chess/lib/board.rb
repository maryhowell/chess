require_relative 'pieces'
require_relative 'null_piece'


class Board
  attr_reader :grid
  def initialize
    NullPiece.instance
    @grid = make_starting_grid
  end

  def move_piece(start_pos, end_pos)
    raise "Not a Piece" unless self[start_pos].is_a?(Piece)
    raise "Invalid Move" if self[start_pos].valid_moves.include?(end_pos)
  end

  def [](pos)
    x, y = pos
    @grid[x][y]
  end

  def []=(pos, piece)
    x, y = pos
    @grid[x][y] = piece
  end

  def dup
  end

  # def move_piece(color, from_pos, to_pos)
  # end

  def move_piece!(from_pos, to_pos)
  end

  def checkmate?
  end

  protected

  def make_starting_grid
    whiteside = Array.new(2) { Array.new(8, Piece.new) } #TODO: replace pieces with actual chess ppl
    midsection = Array.new(4) { Array.new(8, NullPiece.instance) }
    darkside = Array.new(2) { Array.new(8, Piece.new) } #TODO: replace pieces with actual chess ppl
    whiteside + midsection + darkside
  end

  def find_king(color)
  end
end
