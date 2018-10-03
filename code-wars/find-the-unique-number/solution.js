function findUniq(arr) {
  return arr.find((ele, ind, arr) => arr.indexOf(ele) == arr.lastIndexOf(ele))
}