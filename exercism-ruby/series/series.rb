class Series
  def initialize(number)
    @number = number.chars
  end

  def slices(argument)
    raise ArgumentError if argument > @number.length
    array = @number.each_cons(argument).to_a
    array.map{ |row| row.map{ |letter| letter.to_i } }
  end
end
