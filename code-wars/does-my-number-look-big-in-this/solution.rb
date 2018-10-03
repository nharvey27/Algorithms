def narcissistic?( value )
  split_value = value.to_s.split("")
  split_value.map{ |x| x.to_i ** split_value.length }.reduce(&:+) === value
end
