def gifts(number)
array = []
  until number == 0
    max = GIFTS.keys.select{|n| n <= number}.max
    array << GIFTS[max]
    number -=  max
  end
  array.sort
end
