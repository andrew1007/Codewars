// Welcome. In this kata you are required to, given a string, replace every letter with its position in the alphabet. If anything in the text isn't a letter, ignore it and don't return it. a being 1, b being 2, etc. As an example:
//
// alphabetPosition("The sunset sets at twelve o' clock.")
//
// Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" (As a string.)

//Not working atm
function alphabetPosition(text) {
  let alphabet = {
    a: 1,
    b: 2,
    c: 3,
    d: 4,
    e: 5,
    f: 6,
    g: 7,
    h: 8,
    i: 9,
    j: 10,
    k: 11,
    l: 12,
    m: 13,
    n: 14,
    o: 15,
    p: 16,
    q: 17,
    r: 18,
    s: 19,
    t: 20,
    u: 21,
    v: 22,
    w: 23,
    x: 24,
    y: 25,
    z: 26
  }

  if (text.length === 1){
    return alphabet[text.toLowerCase()];
  }
  let noSpaceText = text.replace(/ /g, "");
  let textArray = noSpaceText.split("");
  let newArr = []
  for (let i = 0; i < textArray.length; i++){
    if (typeof alphabet[textArray[i].toLowerCase()] === 'string'){
      if (i === 0){
        newArr.push(alphabet[textArray[i].toLowerCase()])
      }else{
        newArr.push(` ${alphabet[textArray[i].toLowerCase()]}`)
      }
    }
  }
  newStr = newArr.join("")
  return newStr
}
alphabetPosition("The sunset sets at twelve o' clock.")
