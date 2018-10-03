describe 'weirdcase' do
  it 'should return the correct value for a single word' do
    words = ['This', 'is', 'a', 'test',
      'Looks', 'like', 'you', 'passed']
    words.each do |test|
      solution = []
      words = test.downcase.split ' '
      words.each do |word|
        word = word.split ''
        (0...word.length).each do |index|
          word[index] = word[index].upcase if index%2==0
        end
        solution.push word.join ''
      end
      Test.assert_equals(weirdcase(test), solution.join(' '));
    end
  end
  it 'should return the correct value for multiple words' do
    sentences = [
      'This is a test',
      'Looks like you passed',
      'This is the final test case',
      'Just kidding',
      'Ok fine you are done now'
    ];
    sentences.each do |test|
      solution = []
      words = test.downcase.split ' '
      words.each do |word|
        word = word.split ''
        (0...word.length).each do |index|
          word[index] = word[index].upcase if index%2==0
        end
        solution.push word.join ''
      end
      Test.assert_equals(weirdcase(test), solution.join(' '));
    end
  end
end
