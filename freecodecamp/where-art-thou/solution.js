const whatIsInAName = (collection, source) => {
  // What's in a name?
  var arr = [];
  var keys = Object.keys(source);
  // Only change code below this line

  arr = collection.filter((item) =>{
    return keys.every((key) =>{
      return item.hasOwnProperty(key) && item[key] === source[key];
     });
   });
  // Only change code above this line
  return arr;
}

whatIsInAName([{ first: "Romeo", last: "Montague" }, { first: "Mercutio", last: null }, { first: "Tybalt", last: "Capulet" }], { last: "Capulet" });
