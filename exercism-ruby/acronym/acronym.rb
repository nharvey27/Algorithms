class Acronym
  def initialize(phrase)
    @phrase = phrase
  end

  def self.abbreviate(phrase)
    array = []
    string = phrase.split(/(?=[A-Z])|\W+/)
    string.each{|x| array  <<  x[0] }
    phrase = array.join.upcase
  end
end
Acronym.abbreviate("Portable Network Graphics")
