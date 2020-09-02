require 'pry'
class Triangle
  attr_accessor :total
  attr_reader :kind

  def initialize(side_1, side_2, side_3)
    @sides = [side_1, side_2, side_3]
    @total = side_1 + side_2 + side_3
  end

  def sides
    @sides
  end

  def kind
      if sides.any? {|side| side <= 0} || sides.any? {|side| side >= @total - side}
        begin
          raise TriangleError
          end
      end
    if self.sides.uniq.count == 3
      @kind = :scalene
    elsif self.sides.uniq.count == 2
      @kind = :isosceles
    else
      @kind = :equilateral
    end
  end

  class TriangleError < StandardError
    def message
    "This is a clear error message."
    end
  end

end
