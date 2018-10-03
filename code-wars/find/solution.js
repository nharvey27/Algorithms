function stray(numbers) {
  return numbers.find((element, index, array) => array.indexOf(element) == array.lastIndexOf(element))
}
