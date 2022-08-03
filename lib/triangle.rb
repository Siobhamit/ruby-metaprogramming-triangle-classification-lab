class Triangle
  def initialize(side1, side2, side3)
    @sides = [ side1, side2, side3 ]
    @sides.sort!
  end

def kind
  # find invalid side values
  if ((@sides.select{|side| (side <= 0 || side == nil) }).length > 0)
    raise TriangleError
  end

  side0, side1, side2 = @sides

  # check for short sides
  if ((side0 + side1) <= side2)
    raise TriangleError
  end

  # classify
  if side0 == side1 && side1 == side2
      return :equilateral
  elsif side1 == side2
      return :isosceles
  else
      return :scalene
  end
end



  class TriangleError < StandardError
    def message
    "TriangleError"
    end
  end


end


