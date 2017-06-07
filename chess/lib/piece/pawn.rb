require_relative 'piece'

class Pawn < Piece

  def initialize(location, board, side)
    super(location, board, side)
    @symbol = side == :white ? "♙" : "♟"
  end

  def symbol
    @symbol
  end

  def moves

  end

  private

  def at_start_row?

  end

  def forward_dir

  end

  def forward_steps
    at_start_row? ? [0, 2] : [0, 1]
  end

  def side_attacks

  end
end
