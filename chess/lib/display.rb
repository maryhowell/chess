# require 'color'
require_relative 'board'
require_relative 'cursor'
require 'colorize'

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
        row << " #{@board[[i,j]].symbol} |" unless [i, j] == @cursor.cursor_pos
        row << " #{@board[[i,j]].symbol.red} |" if [i, j] == @cursor.cursor_pos
      end
      rendered << row << "\n"
    end
    puts rendered
  end

end
