require_relative '../Board'

RSpec.describe Board do
  describe ".create" do
    it "Returns an array of arrays with size given" do
      expect(Board.create(6).length).to eq(6)
    end
  end
end
