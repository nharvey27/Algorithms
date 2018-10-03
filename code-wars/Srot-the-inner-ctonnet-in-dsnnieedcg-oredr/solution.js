function sortTheInnerContent(words) {
  return words
    .split(' ')
    .map(word => {
      if (word.length < 3) {
        return word;
      }
      var splitWord = word.split('');
      var first = splitWord.shift();
      var last = splitWord.pop();
      return (
        first + splitWord.sort((a, b) => b.localeCompare(a)).join('') + last
      );
    })
    .join(' ');
}
