
class Triangle
  attr_accessor :sideA, :sideB, :sideC

  def initialize (sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind
    if self.valid? == false
      raise TriangleError
    elsif ((sideA == sideB) && (sideB == sideC))
        :equilateral
    elsif ((sideA == sideB) || (sideB == sideC) || (sideA == sideC))
        :isosceles
    elsif (sideA != sideB) && (sideB != sideC) && (sideA != sideC)
        :scalene
    end
  end

  def valid?
    if (sideA + sideB > sideC) && (sideB + sideC > sideA) && (sideC + sideA > sideB)
      true
    else
      false
    end
  end

  class TriangleError < StandardError
  end

end