function anagrams(word, words) {
  const wordSplit = word
    .split('')
    .sort()
    .join('');
  return words.filter(
    w =>
      w
        .split('')
        .sort()
        .join('') === wordSplit,
  );
}
