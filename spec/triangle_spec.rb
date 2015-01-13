require("rspec")
require("triangle")

describe(Triangle) do
  describe("#triangle_type") do

    it("returns equilateral if triangle object is equilateral") do
      test_triangle = Triangle.new(2,2,2)
      expect(test_triangle.triangle_type()).to(eq("equilateral"))
    end

    it("returns isosceles if only 2 sides of triangle object are equal") do
      test_triangle = Triangle.new(3,3,4)
      expect(test_triangle.triangle_type()).to(eq("isosceles"))
    end

    it("returns scalene if no sides are equal") do
      test_triangle = Triangle.new(2,3,4)
      expect(test_triangle.triangle_type()).to(eq("scalene"))
    end
    it("returns 'not a triangle' if values are not a valid triangle") do
      test_triangle = Triangle.new(2,2,4)
      expect(test_triangle.triangle_type()).to(eq("not a triangle"))
    end
  end

end
