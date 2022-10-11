require_relative '../lib/word_counter'

describe "the word counter" do
    it "have to return that:" do
      expect(word_counter("below",dictionnary)).to eq({"below"=>1, "low"=>1})
      expect(word_counter("Howdy partner, sit down! How's it going?",dictionnary)).to eq({"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1})
    end
end