def triple_double(num1,num2)
   /([0-9])\1{2}/.match(num1.to_s) && /([0-9])\1{1}/.match(num2.to_s) ? 1 : 2
end
