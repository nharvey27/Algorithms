Test.describe("Basic tests") do
Test.assert_equals(find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]), 5)
Test.assert_equals(find_it([1,1,2,-2,5,2,4,4,-1,-2,5]), -1)
Test.assert_equals(find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]), 5)
Test.assert_equals(find_it([10]), 10)
Test.assert_equals(find_it([1,1,1,1,1,1,10,1,1,1,1]), 10)
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def sol(seq) seq.uniq.select{|a| seq.count(a)%2==1}[0] end

40.times do
  s=lambda{|arr| (arr+arr+[randint(1,20)]).shuffle}.((0..randint(1,10)).map{randint(1,20)})
  Test.it("Testing for #{s}") do
  Test.assert_equals(find_it(s),sol([]+s),"It should work for random inputs too")
  end
end
end
