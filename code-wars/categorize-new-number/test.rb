Test.describe("Basic tests") do
Test.assert_equals(openOrSenior([[45, 12],[55,21],[19, -2],[104, 20]]),['Open', 'Senior', 'Open', 'Senior'])
Test.assert_equals(openOrSenior([[3, 12],[55,1],[91, -2],[54, 23]]),['Open', 'Open', 'Open', 'Open'])
Test.assert_equals(openOrSenior([[59, 12],[55,-1],[12, -2],[12, 12]]),['Senior', 'Open', 'Open', 'Open'])
Test.assert_equals(openOrSenior([[74, 10],[55, 6],[12, -2],[68, 7]]),['Senior', 'Open', 'Open', 'Open'])
Test.assert_equals(openOrSenior([[16, 23],[56, 2],[56,  8],[54, 6]]),['Open', 'Open', 'Senior', 'Open'])
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a)+a end
def solOOS(data)
  res=[]
  for i in data
    if i[0]>=55 and i[1]>7 then res+=["Senior"]
    else res+=["Open"] end
  end
  return res
end
40.times do
  arrlen=randint(3,8)
  testarr=[]
  arrlen.times do
    testarr+=[[randint(0,40)+randint(0,40)+10,randint(-2,27)]]
  end
  Test.it("Testing for "+testarr.to_s)do
    Test.assert_equals(openOrSenior(testarr),solOOS(testarr),"It should work for random tests too")
  end
end
end
