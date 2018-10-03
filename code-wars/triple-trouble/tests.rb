Test.describe("Begin tests") do
Test.assert_equals(triple_double(451999277, 41177722899), 1)
Test.assert_equals(triple_double(1222345, 12345), 0)
Test.assert_equals(triple_double(12345, 12345), 0)
Test.assert_equals(triple_double(666789, 12345667), 1)
Test.assert_equals(triple_double(10560002, 100), 1)
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def triple_sol(num1,num2)
  [num1,num2].join("+").scan(/(.)(\1{2})(?=.*?\+.*?\1{2})/)!=[] ? 1 : 0
end
def generate(n,t,c=nil)
  res=[]
  n.times do
    res+=[randint(0,9)]
  end
  if c!=nil
    res.insert(randint(0,res.length-1),c.to_s*t)
  end
  res.join.to_i
end

40.times do
  if randint(0,1)==0
    c=randint(0,9)
    n1,n2=generate(randint(2,30),3,c),generate(randint(2,30),2,c)
  else
    n1,n2=generate(randint(2,30),3),generate(randint(2,30),2)
  end
  Test.it("Testing for #{n1} and #{n2}") do
  Test.assert_equals(triple_double(n1,n2),triple_sol(n1,n2),"It should work for random inputs too")
  end
end
end
