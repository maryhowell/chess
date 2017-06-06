require 'singleton'

class Piece

  def initialize
    @location = nil
    @symbol = '@'
  end

  def to_s()
  end

  def empty?()
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
