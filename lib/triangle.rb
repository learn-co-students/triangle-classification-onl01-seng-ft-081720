class Triangle
  
  def initialize(a, b, c)
    @a = a 
    @b = b 
    @c = c
  end

  def kind
    if @a <= 0 || @b <= 0 || @c <= 0
      raise TriangleError
    end
    if (@a + @b) <= @c || (@c + @b) <= @a || (@c + @a) <= @b
      raise TriangleError
    end
      if @a == @b && @a == @c
        :equilateral 
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
  end

  class TriangleError < StandardError
  end
end
