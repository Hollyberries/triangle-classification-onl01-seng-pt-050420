class Triangle
  
  attr_reader :x, :y, :z
  
  
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end
  
  def kind
    if x == y && y == z
      :equilateral
      elsif x == y // y == z // x == z
      :isosceles
    else
      :scalene
  end
end

def valid_triangle
  triangle = [(x + y > z), (x + z > y), (y + z > x)]
  [x, y, z].each do |side|
  triangle << false if side <= 0 
  raise TriangleError if triangle.include?(false)
  end
end

class TriangleError < StandardError
end

  
end