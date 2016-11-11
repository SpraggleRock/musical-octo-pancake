gem 'minitest', '~> 5.4'
require 'minitest/autorun'
require_relative '../lib/word_sequences'
class WordSequencesTest < Minitest::Test

  def test_the_word_sequences
    words = WordSequences.new('test/test_words.txt')
    expected = ["brow", "rown", "owni", "wnie"]
    word_sequences = words.get_four_letter_sequences("brownie")
    assert_equal expected, word_sequences
  end

  def test_the_word_hash
    words = WordSequences.new('test/test_words.txt')
    expected = {"appl"=>"apple", "pple"=>"apple", "oran"=>"orange", "rang"=>"orange", "ange"=>"orange", "bana"=>"banana", "anan"=>"banana", "nana"=>"banana", "carr"=>"carrot", "arro"=>"carrot", "rrot"=>"carrot", "burr"=>"burrito", "urri"=>"burrito", "rrit"=>"burrito", "rito"=>"burrito"}
    assert_equal expected, words.word_hash
  end

  def test_the_questions_output
    words = WordSequences.new('test/test_words.txt')
    expected = ["anan", "ange", "appl", "arro", "bana", "burr", "carr", "nana", "oran", "pple", "rang", "rito", "rrit", "rrot", "urri"]
    assert_equal  words.questions, expected
  end

  def test_the_answers_output
    words = WordSequences.new('test/test_words.txt')
    expected = ["banana", "orange", "apple", "carrot", "banana", "burrito", "carrot", "banana", "orange", "apple", "orange", "burrito", "burrito", "carrot", "burrito"]
    assert_equal words.answers, expected
  end

end