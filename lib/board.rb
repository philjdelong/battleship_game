class Board

  attr_reader :cells

  def initialize(cells)
    @cells = cells
  end

  def valid_coordinate?(coordinate)
    @cells.include?(coordinate)
  end

  def valid_placement?(ship, coordinates)
    ship.length == coordinates.count
    #need methods for consecutive and non-diagonal cordinates
  end

end
