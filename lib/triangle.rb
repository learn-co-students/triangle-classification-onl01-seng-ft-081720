class Triangle
  # write code here
  attr_accessor :adjacent, :opposite, :hypotenuse, :sides
  def initialize(adjacent, opposite, hypotenuse)
    @adjacent = :adjacent
    @opposite = :opposite
    @hypotenuse = :hypotenuse
    @sides = [adjacent, opposite, hypotenuse].sort
  end
  def kind
    if invalid_triangle?
      #if its an invalid triangle raise the Triangle error
     raise TriangleError
     #if only one side is unique then its equilateral
    elsif sides.uniq.length == 1
      #knows that equilateral triangles have equal sides
      #knows that larger equilateral triangles also have equal sides
     :equilateral
     #if two sides are unique then its isosceles
    elsif sides.uniq.length == 2
  #     knows that isosceles triangles have last two sides equal
  # knows that isosceles triangles have first and last sides equal
  # knows that isosceles triangles have two first sides equal
  # knows that isosceles triangles have in fact exactly two sides equal
      :isosceles
    else #otherwise its a scalene triangle
  #     knows that scalene triangles have no equal sides
  # knows that scalene triangles have no equal sides at a larger scale too
  # knows that scalene triangles have no equal sides in descending order either
      :scalene
    end
  end
  def invalid_triangle?
  #   knows that very small triangles are legal
  # knows that triangles with no size are illegal
  # knows that triangles with negative sides are illegal
  # knows that triangles violating triangle inequality are illegal
  # knows that triangles violating triangle inequality are illegal 2
  # knows that triangles violating triangle inequality are illegal 3
    sides.any? { |side| side <= 0 } || sides[0] + sides[1] <= sides[2]
  end
    class TriangleError < StandardError
      # triangle error code
      #This error message is printed when the triangle doesn't match any triangle
      def message
        "That's no triangle. Of that I'm sure."
      end
    end
end
