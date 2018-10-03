class Year
  def self.leap?(date)
    (date % 400 == 0 && date % 100 == 0) || (date % 100 != 0 && date % 4 == 0)
  end
end
