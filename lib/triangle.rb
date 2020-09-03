class Triangle
  attr_accessor :side1, :side2, :side3
@@all = []
  def initialize(side1, side2, side3)

    @side1 = side1
    @side2 = side2
    @side3 = side3
    
    @@all << self

  end

  def kind
    sides = [@side1, @side2, @side3]
    # "NEGATIVE SIDE" if sides.any? {|side| side < 0}


    if @side1 <= 0 || @side2 <= 0 || @side3 <= 0 
      begin
        raise TriangleError
        rescue Triangle => error
        puts error.message
      end
    elsif (@side1 <= (@side2 - @side3).abs) || (@side2 <= (@side3 - @side1).abs) || (@side3 <= (@side2 - @side1).abs)
      begin
        raise TriangleError
        rescue Triangle => error
        puts error.message
      end
    end

    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 != @side2 && @side2 != @side3 && @side3 != @side1
      :scalene
    else
      :isosceles
    end


      

    # begin
    # raise TriangleError
    # rescue TriangleError
    # end


  end


class TriangleError < StandardError
  def message
    "One of your sides is negative."
  end

end

end
