describe "Narcissistic Function" do
  it "should find small numbers are all narcissistic" do
    Test.expect( narcissistic?( 1 ) == true, "1 is narcissistic" )
    Test.expect( narcissistic?( 5 ) == true, "5 is narcissistic" )
    Test.expect( narcissistic?( 7 ) == true, "7 is narcissistic" )
  end

  it "should find these numbers are narcissistic" do
    Test.expect( narcissistic?( 153 ) == true, "153 is narcissistic" )
    Test.expect( narcissistic?( 370 ) == true, "370 is narcissistic" )
    Test.expect( narcissistic?( 371 ) == true, "371 is narcissistic" )
    Test.expect( narcissistic?( 1634 ) == true, "1634 is narcissistic" )
  end

  it "should find these numbers are not narcissistic" do
    rand( 5..15 ).times do
      value = 9475 + rand( 0..42000 )
      Test.expect( narcissistic?( value ) == false, "#{value} is not narcissistic" )
    end
  end

  bigguns = [8208, 9474, 54748, 92727, 93084, 548834, 1741725, 4210818, 9800817, 9926315, 24678050, 24678051]

  it "should find that some of these are narcissistic" do
    rand( 5..15 ).times do
      is = rand() > 0.5
      value = is ? bigguns[rand( 0..(bigguns.length-1) )] : rand( 9926316..24678050 )
      Test.expect( narcissistic?( value ) == is, "#{value} maybe..." )
    end
  end
end
