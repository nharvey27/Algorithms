require 'prime'

class Prime
  def nth(number)
    raise ArgumentError   if number == 0  
    array = []
    Prime.each(150000){|prime| array << prime}
    array[number-1]
  end
end
