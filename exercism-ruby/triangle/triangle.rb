class TriangleError < StandardError; end

class Triangle
  attr_reader :sides

  def initialize(*sides)
    @sides = sides
  end

  def error_handling
    raise TriangleError if sides[0] + sides[1] < sides[2]
    raise TriangleError if sides[2] + sides[1] < sides[0]
    raise TriangleError if sides[0] + sides[2] < sides[1]
    raise TriangleError if sides.all?{ |x| x == 0 }
  end

  def kind
    error_handling
     if sides.uniq.length == 1
       :equilateral
     elsif sides.uniq.length == 2
       :isosceles
     else
       :scalene
     end
  end
end
