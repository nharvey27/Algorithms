const sumAll = (arr) => {
 arr.sort((a,b) => a - b);

 var fullArray = [];
 for(var i=arr[0]; i<=arr[1]; i++){
   fullArray.push(i);
 }

 return fullArray.reduce((a,b) => a+b);
}
sumAll([1, 4]);
