describe "isPrime" do
    it "Should have isPrime defined." do
        Test.expect(defined?(isPrime), "Method isPrime not defined.")
    end

    it "Should return false for numbers less than 2." do
        Test.assert_equals(isPrime(-1), false)
        Test.assert_equals(isPrime(0), false)
        Test.assert_equals(isPrime(1), false)
    end

    it "Should return false for non-prime numbers." do
        Test.assert_equals(isPrime(4), false)
        Test.assert_equals(isPrime(100), false)
        Test.assert_equals(isPrime(999), false)
        Test.assert_equals(isPrime(958297), false)
    end

    it "Should return true for prime numbers." do
        Test.assert_equals(isPrime(2), true)
        Test.assert_equals(isPrime(3), true)
        Test.assert_equals(isPrime(5), true)
        Test.assert_equals(isPrime(457), true)
        Test.assert_equals(isPrime(39229), true)
    end
end
