class Triangle
  

  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

    def kind
      validate_triangle
      if first.to_f == second.to_f && second.to_f == third.to_f
        :equilateral

      elsif first.to_f == second.to_f || second.to_f == third.to_f || first.to_f == third.to_f
        :isosceles

      else first.to_f != second.to_f && second.to_f != third.to_f
        :scalene
      end
    end

    def validate_triangle
      if first.to_f <= 0 || second.to_f <= 0 || first.to_f <= 0
        raise TriangleError

      elsif first.to_f + second.to_f <= third.to_f || second.to_f + third.to_f <= first.to_f || first.to_f + third.to_f <= second.to_f
        raise TriangleError
      end
    end
      
    

  class TriangleError < StandardError
  end
end