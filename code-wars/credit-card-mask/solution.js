const maskify = cc =>
  [...cc]
    .map((ele, ind, arr) => {
      if (arr.length - ind > 4) {
        ele = '#';
      }
      return ele;
    })
    .join();
