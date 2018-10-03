Test.describe('Basic tests') do
Test.it('unique letters') do
Test.assert_equals(permutations('a').sort, ['a'])
Test.assert_equals(permutations('ab').sort, ['ab', 'ba'])
Test.assert_equals(permutations('abc').sort, ['abc', 'acb', 'bac', 'bca', 'cab', 'cba'])
abcd = ['abcd', 'abdc', 'acbd', 'acdb', 'adbc', 'adcb', 'bacd', 'badc', 'bcad', 'bcda', 'bdac', 'bdca',
      'cabd', 'cadb', 'cbad', 'cbda', 'cdab', 'cdba', 'dabc', 'dacb', 'dbac', 'dbca', 'dcab', 'dcba']
Test.assert_equals(permutations('abcd').sort, abcd)
Test.assert_equals(permutations('bcad').sort, abcd)
Test.assert_equals(permutations('dcba').sort, abcd)
end
Test.it('duplicate letters') do
Test.assert_equals(permutations('aa').sort, ['aa'])
Test.assert_equals(permutations('aabb').sort, ['aabb', 'abab', 'abba', 'baab', 'baba', 'bbaa'])
Test.assert_equals(permutations('aaaab').sort, ['aaaab', 'aaaba', 'aabaa', 'abaaa', 'baaaa'])
Test.assert_equals(permutations('aaaaab').sort, ['aaaaab', 'aaaaba', 'aaabaa', 'aabaaa', 'abaaaa', 'baaaaa'])
end
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def permsol(string) string.split("").permutation.map{|x| x.join("")}.to_set.sort end
base="abcdefghijklmnopqrstuvwxyz"

40.times do
    string=""
    randint(1,7).times do
      string+=base[randint(0,base.length-1)]
    end
    Test.it("Testing for "+string) do
    Test.assert_equals(permutations(string).sort,permsol(string),"It should work with random inputs too")
    end
end
end
