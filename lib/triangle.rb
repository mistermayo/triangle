class Triangle

  define_method(:initialize) do |length_1, length_2, length_3|
    @length1 = length_1
    @length2 = length_2
    @length3 = length_3
  end

  define_method(:triangle_type) do
    if @length1.>=(@length2.+(@length3))
      "not a triangle"
    elsif @length2.>=(@length1.+(@length3))
      "not a triangle"
    elsif  @length3.>=(@length2.+(@length1))
      "not a triangle"
    elsif @length1 == @length2 && @length1 == @length3
      "equilateral"
    elsif @length1 == @length2 && @length1.!=(@length3)
      "isosceles"
    elsif @length1 == @length3 && @length1.!=(@length2)
      "isosceles"
    elsif @length2 == @length3 && @length2.!=(@length1)
      "isosceles"
    else
      "scalene"
    end

  end

end
