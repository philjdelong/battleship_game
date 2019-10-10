require 'minitest/autorun'
require 'minitest/pride'
require '.lib/ship'
require '.lib/cell'
require '.lib/board'
require 'pry'

class BoardTest < Minitest::Test

  def setup
    @cells = Cell.new{
      'A1',
      'A2',
      'A3',
      'A4',
      'B1',
      'B2',
      'B3',
      'B4',
      'C1',
      'C2',
      'C3',
      'C4',
      'D1',
      'D2',
      'D3',
      'D4'
    }
    @board = Board.new()

  end

  def test_it_exists
    skip
    assert_instance_of Board, board
  end

  def test_
    skip
    assert_equal
  end

  def test_
    skip
    assert_equal
  end

end
