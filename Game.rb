require_relative 'Board'
require_relative 'Neighbors'
class Game
  SIZE = 6

  def start
    board = Board.create(SIZE)
    while true
      system("clear")
      next_position(board)
      Board.print_board(board)
      sleep(3)
    end
  end

  def next_position(board)
    board.each do |row|
      row.each do |cell|
        cell.neighbors = Neighbors.search(board, cell.position_x, cell.position_y)
        cell.value = cell.next_state
      end
    end
  end
end

game = Game.new
game.start()
