lucky_number = (Kernel::rand() * 100 + 1).floor
Test.assert_equals(guess, lucky_number, "Sorry. Unlucky this time.")
