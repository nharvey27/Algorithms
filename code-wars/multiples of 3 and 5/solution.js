const solution = (number) => {
  if (number < 0) return 0;
  return Array.from(new Array(number), (x, i) => i)
    .filter(x => x % 3 === 0 || x % 5 === 0)
    .reduce((sum, value) => sum + value, 0);
};
