const fearNotLetter = str => {
  for (let i = 0; i < str.length; i++) {
    var charCode = str.charCodeAt(i)

    if (charCode !== str.charCodeAt(0) + i) {
      return String.fromCharCode(charCode - 1)
    }
  }
}

fearNotLetter("abce")
