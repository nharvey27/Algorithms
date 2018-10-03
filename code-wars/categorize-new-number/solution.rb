def openOrSenior(data)
  array = []
  data.each{ |x, y| x >= 55 && y > 7 ? array << "Senior" : array << "Open"}
  array
end
