class Robot
  attr_accessor :name, :firstletters, :lastletters

  def initialize
    @name = generate_first_two_letters + generate_last_chars
  end

  def generate_first_two_letters
    random_one = rand(90 - 65 ) +65
    random_two = rand(90-65) + 65
    random_one.chr + random_two.chr
  end

  def generate_last_chars
    rand(100..999).to_s
  end

  def reset
    @name = generate_first_two_letters + generate_last_chars
  end
end
