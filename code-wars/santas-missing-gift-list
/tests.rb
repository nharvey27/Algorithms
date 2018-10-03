# Same as example test cases
Test.assert_equals(gifts(1), ['Toy Soldier'])
Test.assert_equals(gifts(2), ['Wooden Train'])
Test.assert_equals(gifts(3), ['Toy Soldier', 'Wooden Train'])
Test.assert_equals(gifts(22), ['Hoop', 'Horse', 'Wooden Train'])
Test.assert_equals(gifts(160), ['Football', 'Teddy'])

Test.assert_equals(gifts(7), ['Hoop', 'Toy Soldier', 'Wooden Train'])
Test.assert_equals(gifts(15), ['Chess Board', 'Hoop', 'Toy Soldier', 'Wooden Train'])
Test.assert_equals(gifts(31), ['Chess Board', 'Hoop', 'Horse', 'Toy Soldier', 'Wooden Train'])
Test.assert_equals(gifts(1023), ["Chess Board", "Doll", "Football", "Hoop", "Horse", "Lego", "Rubik's Cube", "Teddy", "Toy Soldier", "Wooden Train"])

Test.describe 'Random' do
  50.times do
    random = rand(1023)
    Test.assert_equals(gifts(random), GIFTS.select { |mybin, _| mybin & random == mybin }.values.sort)
  end
end

# To safeguard against cheaters
Test.assert_equals(['Toy Soldier'], gifts(1))
Test.assert_not_equals(gifts(1023), [])
Test.expect(gifts(1) == ['Toy Soldier'])
