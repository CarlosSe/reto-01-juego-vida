class Neighbors
  
  def self.search(game, position_x, position_y)
    contador = 0
    limit = game.length
    for i in (position_y - 1)..(position_y + 1)
      for j in (position_x - 1)..(position_x + 1)
        next if i == position_y && j == position_x
        valid_x = valid_position(i, limit)
        valid_y = valid_position(j, limit)
        (valid_x && valid_y) ? contador += game[i][j].value : next
      end
    end
    contador
  end

  def self.valid_position(position, limit)
    true if position >= 0 && position < limit
  end
end
