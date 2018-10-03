const pairElement = (str) => {
  var arr = [];
  var strings = str.split('');
   strings.map((item) => {
    switch(item){
      case "G":
        arr.push(["G","C"]);
        break;
    case "C":
        arr.push(["C","G"]);
        break;
    case "A":
        arr.push(["A","T"]);
        break;
    case "T":
        arr.push(["T","A"]);
        break;
      }
  });
  return arr;
}

pairElement("GCG");
