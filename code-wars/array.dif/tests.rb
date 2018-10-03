Test.describe("Basic Tests") do
Test.assert_equals(array_diff([1,2], [1]), [2], "a was [1,2], b was [1], expected [2]")
Test.assert_equals(array_diff([1,2,2], [1]), [2,2], "a was [1,2,2], b was [1], expected [2,2]")
Test.assert_equals(array_diff([1,2,2], [2]), [1], "a was [1,2,2], b was [2], expected [1]")
Test.assert_equals(array_diff([1,2,2], []), [1,2,2], "a was [1,2,2], b was [], expected [1,2,2]")
Test.assert_equals(array_diff([], [1,2]), [], "a was [], b was [1,2], expected []")
end

Test.describe("Random Tests") do
def randint(a,b) rand(b-a)+a end
def array_sol(a, b)
  for item in b
    while a.index(item)!=nil
      a.delete(item)
    end
  end
  return a
end
for _ in 0...40
    alen,blen=randint(0,20),randint(0,20)
    a,b=[],[]
    for i in 0...alen
      a+=[randint(0,40)-20]
    end
    for i in 0...blen
      b+=[randint(0,40)-20]
    end
    Test.it("Testing for array_diff("+a.to_s+","+b.to_s+")") do
      Test.assert_equals(array_diff(a,b), array_sol(a,b), "Should work for random arrays too")
    end
end
end
