const findElement = (arr, func) => {
  arr.find(func);
}

findElement([1, 3, 5, 8, 9, 10], function(num){ return num % 2 === 0; });
