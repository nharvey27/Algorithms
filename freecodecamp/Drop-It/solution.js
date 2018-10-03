const dropElements = (arr, func) => {
  var time = arr.length;
  for(let i=0; i < time; i++){
    if(func(arr[0])){
      break;
    }
    else {
      arr.shift();
    }
  }
  return arr;
}
