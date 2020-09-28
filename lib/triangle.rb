class Triangle
  attr_accessor :length_1, :length_2, :length_3
  
  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def sides
    sides = [@length_1, @length_2, @length_3]
  end
  
   def valid?
    if @length_1 + @length_2 > @length_3 && @length_2 + @length_3 > @length_1 && @length_3 + @length_1 > @length_2
      return true
    else
      return false
    end
  end
  
  def kind
    if sides.any? {|side| side <= 0 } || sides.any? {|side| side == nil } || self.valid? == false
      raise TriangleError
    elsif @length_1 == @length_2 && @length_2 == @length_3
      return :equilateral
    elsif @length_1 == @length_2 || @length_2 == to @length_3 || @length_1 == @length_3
      return :isosceles
    else   
end
