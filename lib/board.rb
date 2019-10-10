class Board
  attr_reader :cells

  def initialize(cells)
    @cells = cells
  end

  def valid_coordinate?(coordinate)
    @cells.include?(coordinate)
  end

end
