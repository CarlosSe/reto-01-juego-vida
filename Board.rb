require_relative 'Cell'
class Board

  def self.create(size)
    board = Array.new(size)
    size.times do |i|
      row = Array.new(size)
      size.times do |j|
        row[j] = Cell.new(j, i, rand(0..1), 0)
      end
      board[i] = row
    end
    board
  end

  def self.print_board(board)
    board.each do |row|
      row.each do |cell|
        print "#{cell.value} "
      end
      print "\n"
    end
  end
end
