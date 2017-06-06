require 'color'
require_relative 'board'

class Display

  def initialize (board)
    @cursor = Cursor.new([0,0], board)
  end

  def move(new_pos)
  end

  def render()
  end

end
