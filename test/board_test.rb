require 'minitest/autorun'
require 'minitest/pride'
require '.lib/ship'
require '.lib/cell'
require '.lib/board'
require 'pry'

class BoardTest < Minitest::Test

  def setup
    @board = Board.new()

  end

  def test_it_exists
    skip
    assert_instance_of Board, board
  end

  def test_it_
    skip
    assert_equal '', board.''
  end

  def test_it_
    skip
    assert_equal '', board.''
  end

end
