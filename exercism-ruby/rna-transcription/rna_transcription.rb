class Complement
  LEXICON = {  "G" => "C", "C" => "G", "A" => "U", "T" => "A" }
  def self.of_dna(dna)
    terms = LEXICON.keys.join("|")
    pattern = Regexp.new(terms)
    dna.gsub(pattern, LEXICON)
  end
end
