const getPrimes = (max) => {
  var sieve = [], i, j, primes = [];
  for (i = 2; i <= max; ++i) {
    if (!sieve[i]) {
      primes.push(i);
      for (j = i << 1; j <= max; j += i) {
        sieve[j] = true;
      }
    }
  };
  return primes;
};

const sumPrimes = (num) => {
  var number = getPrimes(num);

  return number.reduce((acc, val) => {
     return val + acc;
  });
};

sumPrimes(977);
