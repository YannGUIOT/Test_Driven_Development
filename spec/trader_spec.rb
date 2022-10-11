require_relative '../lib/trader'

describe "the trader program for Jean-Mi" do
    it "....." do
      expect(day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eq([7,8])
      expect(day_trader([14, 3, 6, 1, 16, 8, 6, 2, 7])).to eq([3,4])
      expect(day_trader([8, 5, 6, 19, 2, 7, 3, 18, 9])).to eq([4,7])
      expect(day_trader([7, 3, 6, 2, 5, 8, 16, 4, 10])).to eq([3,6])
    end
end