# require 'color'
require_relative 'board'
require_relative 'cursor'

class Display

  def initialize (board)
    @board = board
    @cursor = Cursor.new([0,0], board)
  end

  def move(new_pos)
  end

  def render()
    rendered = ''
    @board.grid.length.times do |i|
      row = ''
      @board.grid.length.times do |j|
        row << "| #{@board[[i,j]].symbol} |"
      end
      rendered << row << "\n"
    end
  end

end
