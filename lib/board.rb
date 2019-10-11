class Board

  attr_reader :cells

  def initialize(cells)
    @cells = cells
  end

  def valid_coordinate?(coordinate)
    @cells.include?(coordinate)
  end

  def valid_placement?(ship, coordinates)
    length && (vertical || horizontal)
    #length validation
    length = ship.length == coordinates.count
    vertical = [coordinates[0].split('')[0] == coordinates[1].split('')[0]]
    horizontal = [coordinates[0].split('')[1] == coordinates[1].split('')[1]]

    #consecutive validation
    # if coordinates[0].split('')[0] == coordinates[1].split('')[0]
    #   true
    #   else if coordinates[0].split('')[1] == coordinates[1].split('')[1]
    #     true
    #   else
    #     false
    # end
  end

end
