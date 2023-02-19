class Triangle
  # write code here
  attr_reader :metric1, :metric2, :metric3, :sides

  def initialize(length1, length2, base)
    @metric1 = length1
    @metric2 = length1
    @metric3 = base
    @sides = [length1, length2, base]
  end

  def kind
    sort_arr = @sides.sort
    if @metric1 > 0 && @metric2 >0 && @metric3 >0 && (sort_arr[0] + sort_arr[1]> sort_arr[2])
      if @sides.uniq.length  == 1
        equilateral
      elsif @sides.uniq.length == 2
        isosceles
      elsif @sides.uniq.length == 3
        scalene
      end

    else
      raise TriangleError
    end

  end


  class TriangleError < StandardError    
    #triangle error stuff :/
    def errorinfo
    end
  end 

  private

  def equilateral
    :equilateral
  end
  def isosceles
    :isosceles
  end
  def scalene
    :scalene
  end
end
