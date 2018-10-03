def test(n, expected)
  Test.assert_equals(solution(n), expected, "Expected #{expected}, got #{solution(n)}")
end

def _solution(number)
  (1..(number-1)).inject(0) do |sum, n|
    sum + (n % 3 == 0 || n % 5 == 0 ? n : 0)
  end
end

def random
  Random.new.rand(100)
end

Test.describe('solution') do
  Test.it('basic tests') do
    test(10, 23)
    test(20, 78)
    test(200, 9168)
  end

  Test.it('random cases') do
    (1..10).each do |_|
      n = random
      test(n, _solution(n))
    end
  end
end
