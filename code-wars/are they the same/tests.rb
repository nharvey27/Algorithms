Test.describe("Example from description") do

Test.assert_equals(
  comp( [121, 144, 19, 161, 19, 144, 19, 11],
        [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]),
    true)

Test.assert_equals(
  comp( [121, 144, 19, 161, 19, 144, 19, 11],
        [11*21, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]),
    false)

Test.assert_equals(
  comp( [121, 144, 19, 161, 19, 144, 19, 11],
        [11*11, 121*121, 144*144, 190*190, 161*161, 19*19, 144*144, 19*19]),
    false)

Test.assert_equals(
  comp( [],
        []),
    true)

Test.assert_equals(
  comp( [],
        nil),
    false)

Test.assert_equals(
  comp( [121, 144, 19, 161, 19, 144, 19, 11, 1008],
        [11*11, 121*121, 144*144, 190*190, 161*161, 19*19, 144*144, 19*19]),
    false)

Test.assert_equals(
  comp( [2, 2, 3],
        [4, 9, 9]),
    false)

end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end

def sol(a1, a2) a1==nil or a2==nil ? false : a1.map{|x|x*x}.sort==a2.sort end

40.times do
  a1,a2=[],[]
  randint(1,8).times do
    elem=randint(0,100)
    a1+=[elem]
    a2+=[elem*elem]
  end
  if randint(0,1)==1 then a2[randint(0,a2.length-1)]+=1 end
  Test.it("Testing for "+a1.to_s+" and "+a2.to_s) do
  Test.assert_equals(comp([]+a1,[]+a2),sol(a1,a2),"It should work with random inputs too")
  end
end
end
