def sum_consecutives(s)
  array = []
  s.chunk{ |x| x }.each{ |x, y| array << y }
  array.map{ |x| x.inject(:+) }
end
