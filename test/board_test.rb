require'minitest/pride'
require'./lib/ship'
require'./lib/cell'
require'pry'


class CellTest < Minitest::Test	class CellTest < Minitest::Test


  def setup
    @cell_1 = Cell.new("B4")
    @cell_2 = Cell.new("C3")
    @cruiser = Ship.new("Cruiser", 3)
  end

  def test_it_exists
    skip
    assert_instance_of Cell, @cell_1
  end

  def test_it_has_a_coordinate
    skip
    assert_equal "B4", @cell_1.coordinate
  end

  def test_it_has_a_ship
    skip
    @cell_1.place_ship(@cruiser)
    assert_equal @cruiser, @cell_1.ship
  end

  def test_it_is_empty
    skip
    @cell_1.place_ship(@cruiser)
    assert_equal false, @cell_1.empty?
  end

  def test_it_can_place_ship
    skip
    assert_equal @cruiser, @cell_1.place_ship(@cruiser)
  end

  def test_it_is_empty
    skip
    @cell_1.fire_upon
    assert_equal 2, @cell_1.ship.health
    assert_equal true, @cell_1.fired_upon?
  end

  #fire_upon testing
  def test_has_it_been_fired_upon
    skip
    assert_equal false, @cell.fired_upon?
  end

  def test_it_can_be_fired_upon
    skip
    @cell.fire_upon
    assert_equal 2, @cell.health
    assert_equal true, @cell.fired_upon?
  end

  def test_it_has_render_ship_with_optional_argument
    skip
    @cell_2.place_ship(@cruiser)
    assert_equal '.', @cell_2.render
    assert_equal 'S', @cell_2.render(true)
  end


  #render testing
  def test_it_has_a_render
    skip
    assert_equal '.', @cell_1.render
  end

  def test_it_can_render_hit
    skip
    @cell_2.fire_upon
    assert_equal 'H', @cell_2.render
  end

  def test_it_has_render_sunk
    skip
    @cell_2.place_ship(@cruiser)
    @cruiser.hit
    @cruiser.hit
    @cruiser.hit
    assert_equal 'X', @cell_2.render
  end

end
