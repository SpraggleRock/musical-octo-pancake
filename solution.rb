require_relative 'lib/word_sequences'

words = WordSequences.new(ARGV[0] || 'words.txt')

file_timestamp = Time.now.strftime('%Y%m%d%H%M%s')
words.questions_file("tmp/questions_#{file_timestamp}.txt")

words.answers_file("tmp/answers_#{file_timestamp}.txt")