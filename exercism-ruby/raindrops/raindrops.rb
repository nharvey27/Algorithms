class Raindrops
  def self.convert(integer)
    string = ""
      string << "Pling" if integer % 3 == 0
      string << "Plang" if integer % 5 == 0
      string << "Plong" if integer % 7 == 0
      unless integer % 3 == 0 || integer % 5 == 0 || integer % 7 == 0
        string << integer.to_s
      end
      string
  end
end
