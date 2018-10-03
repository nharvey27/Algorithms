def solution(digits)
  digits.split.each_cons(5).max.join.to_i
end
