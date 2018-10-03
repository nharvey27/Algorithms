def permutations(string)
   string = string.chars.permutation.map(&:join).uniq
end
