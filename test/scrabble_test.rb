gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
attr_reader  :game

  def setup
    @game     = Scrabble.new
  end

  def test_it_can_score_a_single_letter
    assert_equal 1, game.score("a")
    assert_equal 4, game.score("f")
  end

  def test_can_score_two_letters
    assert_equal 2, game.score("aa")
  end

  def test_empty_word_is_zero
    assert_equal 0, game.score("")
  end

  def test_can_score_nil
    assert_equal 0, game.score(nil)
  end

  def test_can_score_word
    assert_equal 8, game.score("hello")
  end
end
