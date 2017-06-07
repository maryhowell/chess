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
        if [i, j] == @cursor.cursor_pos
          row << "#{@board[[i,j]].symbol.red} ".colorize(:background => :magenta)
        elsif (i+j) % 2 != 0
          row << "#{@board[[i,j]].symbol} ".colorize(:background => :white)
        else
          row << "#{@board[[i,j]].symbol} ".colorize(:background => :light_black)
        end

      end
      rendered << row << "\n"
    end
    puts rendered
  end

end
