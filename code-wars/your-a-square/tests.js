Test.describe("isSquare", function(){
  Test.it("should work for some examples", function(){
    Test.expect(!isSquare(-1), "Negative numbers cannot be square numbers");
    Test.expect(!isSquare( 3));
    Test.expect( isSquare( 4));
    Test.expect( isSquare(25));
    Test.expect(!isSquare(26));
  });
  Test.it("should work for random square numbers", function(){
    var r, i;
    for(i = 0; i < 100; ++i){
      r = (Math.random() * 0xfff0) | 0;
      Test.expect(isSquare(r*r), (r * r) + " is a square number");
    }
  });
});