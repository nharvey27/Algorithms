const range = (start, end) =>
  [...Array(end - start + 1)].map((_, i) => start + i)

const gcd = (a, b) => {
  if (!b) {
    return a
  }
  return gcd(b, a % b)
}

const lcm = (a, b) => Math.abs(a * b) / gcd(a, b)

const smallestCommons = arr => {
  var start = Math.min(...arr)
  var end = Math.max(...arr)

  return range(start, end).reduce((a, b) => lcm(a, b))
}

smallestCommons([23, 18])
