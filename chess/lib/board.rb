require_relative 'piece/piece'
require_relative 'piece/null'
require_relative 'piece/bishop'
require_relative 'piece/king'
require_relative 'piece/knight'
require_relative 'piece/pawn'
require_relative 'piece/queen'
require_relative 'piece/rook'


class Board
  attr_reader :grid
  def initialize
    NullPiece.instance
    @grid = make_starting_grid(true )
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
    # debugger
    x, y = pos
    @grid[x][y] = piece
  end

  def dup
  end

  def add_piece(piece, pos)
    self[pos] = piece
  end

  # def move_piece(color, from_pos, to_pos)
  # end

  def move_piece!(from_pos, to_pos)
  end

  def checkmate?
  end

  protected

  def make_starting_grid(fill_board)
    @grid = Array.new(8) { Array.new(8, NullPiece.instance) }
    #  return unless fill_board
    [:white, :black].each do |color|
       back_row(color)
       front_row(color)
    end
    @grid
   end

  def find_king(color)
  end

  def front_row(color)
    i = (color == :white) ? 6 : 1
    8.times { |j| Pawn.new([i,j], self, color)}
  end

  def back_row(color)
    back_pieces = [ Rook, Knight, Bishop, Queen, King, Bishop, Knight, Rook]

    i = (color == :white) ? 7 : 0
    back_pieces.each_with_index do |piece_class, j|
      piece_class.new([i, j], self, color)
    end
  end
end
