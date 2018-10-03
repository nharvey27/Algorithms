def solution(number)
  (0...number).to_a.select{ |x| x % 3 == 0 || x % 5 == 0 }.inject(:+)
end
