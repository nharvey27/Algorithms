class Squares
  attr_accessor :integer

  def initialize(number)
    @integer = (0..number).to_a
  end

  def square_of_sum
    integer.inject( :+)**2
  end

  def sum_of_squares
    integer.map{ |number| number**2 }.inject(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
