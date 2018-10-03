class Scrabble
    SCRABBLE = {
    "a" => 1, "e" => 1, "i" => 1, "o" => 1, "u" => 1,
    "l" => 1, "n" => 1, "r" => 1, "s" => 1, "t" => 1,
    "d" => 2, "g" => 2, "b" => 3, "c" => 3, "m" => 3,
    "p" => 3, "f" => 4, "h" => 4, "v" => 4, "w" => 4,
    "y" => 4, "k" => 5, "j" => 8, "x" => 8, "q" => 10,
    "z" => 10
  }

  def initialize(word)
    word = " "  if word.nil?
    @word = word
  end

  def score
    @word = @word.downcase.strip.chars
    @array = [0]
    @word.each{|x| @array << SCRABBLE[x]}
    @array.inject(:+)
  end

  def self.score(word)
    new(word).score
  end
end
