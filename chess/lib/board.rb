class Board

  def initalize
    @board = Array.new(8) { Array.new(8) }
  end

  def move_piece(start_pos, end_pos)
    raise "Not a Piece" unless @board[start_pos].is_a?(Piece)
    raise "Invalid Move" if @board[start_pos].valid_moves.include?(end_pos)
  end

  def [](pos)
  end

  def []=(pos, piece)
  end

  def dup
  end

  def move_piece(color, from_pos, to_pos)
  end

  def move_piece!(from_pos, to_pos)
  end

  def checkmate?
  end

  protected

  def make_starting_grid()
  end

  def find_king(color)
  end
end
