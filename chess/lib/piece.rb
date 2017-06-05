class Piece

  def initalize
    @location = nil
  end

  def to_s()
  end

  def empty?()
  end

  def symbol()
  end

  def valid_moves()
  end

  private

  def move_into_check(to_pos)
  end
end


class NullPiece < Piece

end
