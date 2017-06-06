require 'singleton'

class Piece

  def initialize(location, board)
    @location = location
    @board = board
    @symbol = '@'
  end

  def to_s()
  end

  def empty?
    self.is_a?(NullPiece) ? true : false
  end

  def symbol()
    return @symbol
  end

  def valid_moves()
    []
  end

  private

  def move_into_check(to_pos)
  end
end
