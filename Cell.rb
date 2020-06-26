class Cell
  attr_reader :position_x, :position_y
  attr_accessor :value, :neighbors

  def initialize(position_x, position_y, value, neighbors)
    @position_x = position_x
    @position_y = position_y
    @value = value
    @neighbors = neighbors
  end

  def next_state
    new_state = (@neighbors >= 4 || @neighbors <= 1) ? 0 : 1
    new_state = (@neighbors == 2) ? @value : new_state
  end
end
