require_relative '../Cell'

RSpec.describe Cell do
  describe Cell.new(1, 1, 0, 0) do
    it { is_expected.to have_attributes(:position_x => 1) }
    it { is_expected.to have_attributes(:position_y => 1) }
    it { is_expected.to have_attributes(:value => 0) }
    it { is_expected.to have_attributes(:neighbors => 0) }
  end

  describe "A cell change of state" do
    it "Returns the new state of the cell" do
      expect(Cell.new(1, 1, 0, 4).next_state).to eq(0)
      expect(Cell.new(1, 1, 0, 1).next_state).to eq(0)
      expect(Cell.new(1, 1, 0, 2).next_state).to eq(0)
      expect(Cell.new(1, 1, 0, 3).next_state).to eq(1)
    end
  end
end
