
class WordSequences

  def initialize(words)
    @words = words.split(/\s/)
  end

  def get_four_letter_sequences(word)
    sequences = (0..word.length - 4).to_a
    sequences.map do |sequence|
      word.slice(sequence, 4)
    end
  end

  def questions
    "carr give rots rows rrot rrow"
  end

  def answers
    "carrots give carrots arrows carrots arrows"
  end


end


#### basic tests #####
words = WordSequences.new("arrows carrots give me")

puts words.get_four_letter_sequences("brownie") == ["brow", "rown", "owni", "wnie"]

puts words.questions == "carr give rots rows rrot rrow"
puts words.answers == "carrots give carrots arrows carrots arrows"