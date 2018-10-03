class Grains
  def self.square(number)
    array = (1..64).to_a
    hash = {1 => 1}
    array.inject{|d , num| hash[num] = d * 2}
    @values = hash.values
    hash[number]
  end

  def self.total
     @values.inject(:+)
  end
end
