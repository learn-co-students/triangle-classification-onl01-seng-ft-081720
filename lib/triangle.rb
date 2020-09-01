class Triangle
  attr_accessor :a, :b, :c
  
  @sides = []
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    triangle_kind = nil

    if a <= 0 || b <= 0 || c <= 0
      raise TriangleError
    elsif a + b <= c || a + c <= b || b + c <= a
      raise TriangleError
    end

    if a == b && b == c
      triangle_kind = :equilateral
    elsif a != b && b != c && a != c
      triangle_kind = :scalene
    else
      triangle_kind = :isosceles
    end
    triangle_kind
  end

  class TriangleError < StandardError
  end
end
