class Hamming
  def self.compute(first, second)
    raise ArgumentError if first.length != second.length
    counter = 0
    first.chars.zip(second.chars).each { | x , y| counter += 1 if x!=y }
    counter
  end
end
