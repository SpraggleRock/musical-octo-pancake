require_relative 'lib/word_sequences'

words = WordSequences.new(ARGV[0])

words.questions_file("tmp/questions.txt")

puts words.answers_file("tmp/answers.txt")