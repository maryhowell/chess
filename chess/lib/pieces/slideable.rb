module Slideable
  HORIZONTAL_DELTAS = [[1, 0], [0, 1], [-1, 0], [0, -1]]
  DIAGONAL_DELTAS = [[1, 1], [-1, -1], [-1, 1], [1, -1]]

  def moves#set
    moves = []
    move_dirs.each do |delta|
      moves += grow_unblocked_moves_in_dir(delta)
    end
  end

  def horizontal_dirs
    HORIZONTAL_DELTAS
  end

  def diagonal_dirs
    DIAGONAL_DELTAS
  end

  private

  def out_of_bounds?(dx, dy)
    dx > 7 || dy > 7 || dx < 0 || dy < 0
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    origin = @location #in Piece class
    positions = []
    origin[0] += dx
    origin[1] += dy
    until out_of_bounds?(origin) || !@board[origin].empty?
      positions << origin
      origin[0] += dx
      origin[1] += dy
    end
    positions
  end

  def move_dirs
    raise 'Not defined in slideable class instance'
    #will return possible movement directions
  end
end
