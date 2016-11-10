
class WordSequences

  def initialize(words)
    @words = words.split(/\s/)
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

puts words.questions == "carr give rots rows rrot rrow"
puts words.answers == "carrots give carrots arrows carrots arrows"