class Shape
  def name
  end

  def sqr
    0
  end
end

class SquareException < Exception
end

class Square < Shape
  attr_accessor :side_a, :side_b
  attr_accessor :name

  def initialize(side_a: 0, side_b: 0)
    fail SquareException.new 'can not be less 0' if side_a < 0 || side_b < 0
    @side_a = side_a
    @side_b = side_b
    @name = ''
  end

  def surface
    side_a * side_b
  end

  def circuit
    2 * side_a + 2 * side_b
  end

  def diagonal
    Math.sqrt(side_a * side_a + side_b * side_b)
  end

end
