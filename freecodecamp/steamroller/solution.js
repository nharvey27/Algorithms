const steamrollArray = (arr) => {
  arr.reduce((acc, val) => 
    acc.concat(Array.isArray(val) ? steamrollArray(val) : val), [])
};

steamrollArray([1, [2], [3, [[4]]]]);
