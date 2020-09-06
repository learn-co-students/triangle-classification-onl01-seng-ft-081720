class Triangle

  attr_accessor :x, :y, :z

  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  if x == y && x == z && y == z
     equilateral
  elsif x != y && x != z && y != z
     isosceles
  else
     scalene
  end
  # write code here
end
