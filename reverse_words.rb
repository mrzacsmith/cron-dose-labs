# Dec 21, 2016 Crondose

require 'rspec'

# str = "light than faster run we"
# p str.split.reverse.join(" ")


def sentence_reverser str
  str.split.reverse.join(" ")
end

describe "Sentence reverser" do
  it "reverse the words in a sentence" do
    test_sentence = "backwards am I"
    expect(sentence_reverser(test_sentence)).to eq('I am backwards')
  end
end
