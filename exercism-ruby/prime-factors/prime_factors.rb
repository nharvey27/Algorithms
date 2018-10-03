require 'prime'

class PrimeFactors
  def self.for(number)
    Prime.prime_division(number).map{|arr| arr[1].times.map{ arr[0] } }.flatten
  end
end
