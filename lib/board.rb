class Board

  attr_reader :cells

  def initialize(cells)
    @cells = cells
  end

  def valid_coordinate?(coordinate)
    @cells.include?(coordinate)
  end

  def valid_placement?(ship, coordinates)
    # vertical = (coordinates[0].split('')[0] == coordinates[1].split('')[0])
    # horizontal = (coordinates[0].split('')[1] == coordinates[1].split('')[1])
    #length validation
    length = ship.length == coordinates.count
    #consecutive validation
    length && (vertical || horizontal)
    # binding.pry

    # coordinates.each do |coordinate|
    #   if coordinate.split('')[0].succ ==
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
