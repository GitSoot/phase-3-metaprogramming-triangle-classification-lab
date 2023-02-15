class Triangle
  # write code here
  class TriangleError < StandardError; end

  def initialize(side1, side2, side3)
    @sides = [side1, side2, side3].sort
    raise TriangleError if @sides.any? { |side| side <= 0 }
    raise TriangleError if @sides[0] + @sides[1] <= @sides[2]
  end

  def kind
    if @sides.uniq.length == 1
      :equilateral
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end
  end
end
