def is_isogram(string)
  string_one = string.downcase.chars
  string_two = string_one.uniq
  string_one.length <= string_two.length
end
