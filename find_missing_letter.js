const alphabet = {
  "a": 1,
  "b": 2,
  "c": 3,
  "d": 4,
  "e": 5,
  "f": 6,
  "g": 7,
  "h": 8,
  "i": 9,
  "j": 10,
  "k": 11,
  "l": 12,
  "m": 13,
  "n": 14,
  "o": 15,
  "p": 16,
  "q": 17,
  "r": 18,
  "s": 19,
  "t": 20,
  "u": 21,
  "v": 22,
  "w": 23,
  "x": 24,
  "y": 25,
  "z": 26
}
function findMissingLetter(array){
  let arr = array
  for (let i = 0; i < arr.length - 1; i++){
    if (arr[i].charCodeAt(0) + 1 !== arr[i + 1].charCodeAt(0)){
      console.log(`${arr[i]} ${arr[i].toUpperCase()}`)
      if (arr[i].toUpperCase() === arr[i]){
        console.log("Asdf")
        return String.fromCharCode(arr[i].charCodeAt(0) + 1).toUpperCase();
      }
      return String.fromCharCode(arr[i].charCodeAt(0) + 1);
    }
  }
  return '';
}
