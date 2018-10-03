function compare(a, b) {
  return a - b;
}

function comp(array1, array2) {
  if (array1 === null || array2 === null) return false;
  const arr1 = array1.sort(compare).map(item => item ** 2);
  const arr2 = array2.sort(compare);
  return arr1.every((item, i) => arr2[i] === item);
}
