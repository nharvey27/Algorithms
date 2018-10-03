Test.describe("Basic tests") do
Test.assert_equals(is_isogram("Dermatoglyphics"), true )
Test.assert_equals(is_isogram("isogram"), true )
Test.assert_equals(is_isogram("moose"), false )
Test.assert_equals(is_isogram("isIsogram"), false )
Test.assert_equals(is_isogram("aba"), false, "same chars may not be adjacent" )
Test.assert_equals(is_isogram("moOse"), false, "same chars may not be same case" )
Test.assert_equals(is_isogram("thumbscrewjapingly"), true )
Test.assert_equals(is_isogram("abcdefghijklmnopqrstuvwxyz"), true )
Test.assert_equals(is_isogram("abcdefghijklmnopqrstuwwxyz"), false )
Test.assert_equals(is_isogram(""), true, "an empty string is a valid isogram" )
end

Test.describe("Random tests") do
def randint(a,b) rand(b-a+1)+a end
def sol_isogram(string)
  string=string.downcase.split("")
  string.sort==string.to_set.sort
end
base="abcdefghijklmnopqrstuvwxyz"
40.times do
    testtext=""
    randint(5,25).times do
      testtext+=base[randint(0,25)]
    end
    Test.it("Testing for "+testtext) do
    Test.assert_equals(is_isogram(testtext),sol_isogram(testtext),"It should work with random inputs too")
    end
end
end
