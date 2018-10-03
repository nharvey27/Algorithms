describe("Kata tests", function(){
  it("Example tests", function(){
    Test.assertEquals(sortTheInnerContent("sort the inner content in descending order"), "srot the inner ctonnet in dsnnieedcg oredr");
    Test.assertEquals(sortTheInnerContent("wait for me"), "wiat for me");
    Test.assertEquals(sortTheInnerContent("this kata is easy"), "tihs ktaa is esay");
  });
  
  it("Random tests", function(){
    function mySortTheInnerContent(words)
    {
      return words.split(' ').map(w => 
      {
        if(w.length < 3)
        {
          return w;
        }
        return w[0] + w.slice(1, w.length-1).split('').sort((a,b) => b.charCodeAt(0)-a.charCodeAt(0)).join('') + w[w.length-1];
      }).join(' ');
    }
    
    var alphabet = "abcdefghijklmnopqrstuvwxyz";
    for(var r=0;r<40;r++)
      {
        var wordCount = Math.floor(Math.random() * 10 + 1);
                
        var wordsArray = [];
        for(var w=0;w<wordCount;w++)
        {
          var wordArray = [];
          var wordLength = Math.floor(Math.random() * 10 + 1);
          for(var wi=0;wi<wordLength;wi++)
          {
            wordArray.push(alphabet[Math.floor(Math.random() * alphabet.length)]);
          }
          wordsArray.push(wordArray.join(''));
        }
        var words = wordsArray.join(" ");
        
        
        var expected = mySortTheInnerContent(words);
        
        Test.assertEquals(sortTheInnerContent(words), expected);
      }
  });
});