module ToyRobot
  class Robot
    attr_reader :east, :north, :direction
    DIRECTIONS = ["NORTH", "EAST", "SOUTH", "WEST"]

    def initialize(east = 0, north = 0, direction = "NORTH")
      @east = east
      @north = north
      @direction = direction
    end

    def move_east
      @east += 1
    end

    def move_west
      @east -= 1
    end

    def move_north
      @north += 1
    end

    def move_south
      @north -= 1
    end

    def move
      send("move_#{@direction.downcase}")
    end

    def turn_left
      # turn(:left)
      @direction = DIRECTIONS[DIRECTIONS.index(@direction) - 1]
    end

    def turn_right
      # turn(:right)
      index = DIRECTIONS.index(@direction)
      @direction = DIRECTIONS.rotate(1)[index]
    end

    def position
      @position
    end
  end

  private

  def turn(turn_direction)
    index = DIRECTIONS.index(@direction)
    rotations = turn_diretion == :right ? 1 : -1
    @direction = DIRECTIONS.rotate(rotations)[index]
  end
end
