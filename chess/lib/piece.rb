require 'singleton'

class Piece

  def initialize
    @location = nil
  end

  def to_s()
  end

  def empty?()
  end

  def symbol()
  end

  def valid_moves()
    []
  end

  private

  def move_into_check(to_pos)
  end
end
