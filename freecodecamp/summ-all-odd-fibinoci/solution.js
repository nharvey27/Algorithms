const sumFibs = num => {
  var arr = [1]
  for (var i = 1; i <= num; ) {
    arr.push(i)
    i = arr[arr.length - 1] + arr[arr.length - 2]
  }

  return arr.filter(item => item % 2 !== 0).reduce((acc, num) => acc + num, 0)
}

sumFibs(4)
