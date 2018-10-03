const uniteUnique = arr => {
    var args = [...arguments];
    
  var flattened = [...arguments].reduce((a, b) => a = [...a , ...b], []);  
    
    return flattened.reduce((acc, num) => {
      if (!acc.includes(num)){
        acc.push(num);
      }
      return acc;
    }, []);
  }
  
  uniteUnique([1, 3, 2], [1, [5]], [2, [4]])