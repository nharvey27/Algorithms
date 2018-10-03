const spinWords = (args) => {
  args
    .split(' ')
    .map(element =>
      (element.length >= 5
        ? element
          .split('')
          .reverse()
          .join('')
        : element))
    .join(' ');
};
