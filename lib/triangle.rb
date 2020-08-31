require 'pry'

class Triangle
  # write code here
  attr_accessor :first, :second, :third

  def initialize(first, second, third)
    @first = first
    @second = second 
    @third = third
  end

  def kind
    triangle_type = nil

    if first <= 0 || second <= 0 || third <= 0
      raise TriangleError
    elsif first + second <= third || first + third <= second || second + third <= first
      raise TriangleError
    end

    if first == second && second == third
      triangle_type = :equilateral
    elsif first != second && second != third && first != third
      triangle_type = :scalene
    else
      triangle_type = :isosceles
    end

    triangle_type
  end

  class TriangleError < StandardError
    # triangle error code
  end
end
