class WordSequences

  attr_accessor :words, :word_hash

  def initialize(filepath)
    parse_input_file(filepath)
    @word_hash = chunk_words
  end

  def parse_input_file(filepath)
    File.open(filepath).each_line do |word|
      collect_words(word.chomp)
    end
  end

  def collect_words(word)
    @words || @words = []
    @words << word
  end

  def chunk_words
    @words.reduce({}) do |word_list, word|
      word_chunks = get_letter_sequences(word)
      word_chunks.each do |chunk|
        if word_list[chunk]
          word_list.delete(chunk)
          next
        else
          word_list[chunk] = word
        end 
      end
      word_list
    end
  end

  def get_letter_sequences(word)
    start_positions = (0..word.length - 4).to_a
    start_positions.map do |start|
      word.slice(start, 4)
    end
  end

  def questions
    @word_hash.keys.sort
  end

  def answers
    self.questions.map{|q| @word_hash[q]}
  end

  def questions_file(filepath)
    File.open(filepath, 'w+'){|f| f.write(self.questions.join("\n"))}
  end

  def answers_file(filepath)
    File.open(filepath, 'w+'){|f| f.write(self.answers.join("\n"))}
  end

end