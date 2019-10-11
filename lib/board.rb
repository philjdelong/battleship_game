
class Board
    attr_reader :cells

  def initialize
    @cells = {}
    @width = ("A".."D")
    @height = 1..4
    populate_cells
  end

  def populate_cells
    @width.each do |letter|
      @height.each do |number|
        cell_coords = "#{letter}#{number}"
        @cells[cell_coords] = Cell.new(cell_coords)
      end
    end
  end

  def valid_coordinate?(coord)
    @cells.key?(coord)
  end

  def valid_placement?(ship, coords)
    ship.length == coords.length
  end

  def vertical
    (coordinates[0].split('')[0] == coordinates[1].split('')[0])
    # coordinates.each do |coordinate|
        coordinate.split('')[0].succ
  end

  def horizontal
    horizontal = (coordinates[0].split('')[1] == coordinates[1].split('')[1])
  end

end
