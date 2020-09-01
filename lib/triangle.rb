class Triangle
  # write code here
  attr_accessor :a, :b, :c
  def initialize (a,b,c)
    @a=a
    @b=b 
    @c=c
  end

  def kind
    if a < 0 || b < 0 || c < 0 || a+b <= c || a+c <= b || b+c <= a || a==nil || b==nil || c==nil
      begin
        raise TriangleError
      end
    elsif a == b && a == c
      :equilateral
    elsif a == b || b==c || a==c  
      :isosceles
    elsif a!=b && b!=c && a!=c  
      :scalene
    end
  end 

  class TriangleError < StandardError
  end

end
