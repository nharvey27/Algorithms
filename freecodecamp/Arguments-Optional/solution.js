const addTogether = (x) => {
  if (arguments.length === 1){
    if(typeof x !== "number"){
      return undefined;
    }
    return function(y){
      if(typeof y == "number"){
        return x + y;
      }
    };
  }

  else {
    if(typeof arguments[0] == "string" || typeof arguments[1] !== "number"){
      return undefined;
    }
    else{
      var numOne = arguments[0];
      var numTwo = arguments[1];
      return numOne + numTwo;
    }
  }
}
addTogether("ls;dk");
