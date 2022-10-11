require_relative '../lib/caesar_cipher'

describe "the caesar cipher" do
    it "caesar cipher code return" do
      expect(caesar_cipher("textE",3)).to eq("whawH")
      expect(caesar_cipher("texte",5)).to eq("yjcyj")
      expect(caesar_cipher("GruDu8",1)).to eq("HsvEv8")
      expect(caesar_cipher("Gr!Du8",2)).to eq("It!Fw8")
    end
end

