class Phrase
  attr_accessor :words

  def initialize(words)
    @words = words.downcase.scan(/\w+'*\w+|\d+/)
  end

  def word_count
    counts = Hash.new(0)
    words.each {|x| counts[x] += 1}
    counts
  end
end
