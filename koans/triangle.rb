# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(*sides)
  a,b,c = sides
  err = if(sides.include?(0))
          'No one argument must be a zero'
        elsif(sides.any?(&:negative?))
          'No one argument must be a negative'
        elsif(a+b<=c || b+c<=a || a+c <= b)
          'Too long third side'
  end
  raise TriangleError, err if err
    if(sides.uniq.size == 1)
      return :equilateral
    elsif(sides.uniq.size == 2)
      return :isosceles
    else
      return :scalene
    end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
