require_relative '../Neighbors'
require_relative '../Board'

RSpec.describe Neighbors do
  describe ".search" do
    context "Sum of the number of neighbors"
    it "Returns a number always less than 8" do
      game = Board.create(6)
      expect(Neighbors.search(game, 2, 2)).to be <= 8
    end
  end

  describe '.valid_position' do
    context 'Validate if the position is inside board' do
      it 'returns a boolean expresion' do
        expect(Neighbors.valid_position(0, 5)).to be_truthy
        expect(Neighbors.valid_position(1, 9)).to be_truthy
        expect(Neighbors.valid_position(1, 5)).to be_truthy
        expect(Neighbors.valid_position(-1, 0)).to be_falsey
        expect(Neighbors.valid_position(-1, 7)).to be_falsey
        expect(Neighbors.valid_position(-1, 2)).to be_falsey
      end
    end
  end
end