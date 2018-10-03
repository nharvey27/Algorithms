class Palindromes
  attr_reader  :value, :factors, :palindrome

  def initialize(max_factor, min_factor )
    @max_factor = max_factor
    @min_factor = min_factor
    @factors = []
  end

  def generate
    palindrome =(@min_factor..@max_factor).to_a
    palindrome = palindrome.map do |first|
      palindrome.map do |second|
        first * second
        end
      end
     palindrome.flatten.select{ |x| is_palindrome?(x)}.sort
  end

  def smallest

  end

  def largest

  end


  def is_palindrome?(num)
    num = num.to_s
    num == num.reverse
  end


end


x = Palindromes.new(99, 90)
p x.generate
