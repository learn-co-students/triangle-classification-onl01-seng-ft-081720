require 'pry'

class Triangle
  attr_accessor :array, :kind
  attr_reader :equilateral, :isosceles, :scalene 

  def initialize(side1, side2, side3)
    @array = [side1, side2, side3].sort
  end

  def kind
    if @array[0] <= 0 || (@array[0] + @array[1]) <= @array[2]
      begin
        raise TriangleError
      # rescue => thing
      #  puts thing.message 
      end
    
    elsif @array.uniq.length == 1
      self.kind = :equilateral
    elsif @array.uniq.length == 2
      self.kind = :isosceles
    else
      self.kind = :scalene
    end
    # binding.pry
  end

  class TriangleError < StandardError
    def message
      "Hold up! That ain't no triangle!!!"
    end
  end

end
