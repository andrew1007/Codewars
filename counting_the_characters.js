// The goal of this kata is to write a function that takes two inputs: a string and a character. The function will count the number of times that character appears in the string. The count is case insensitive.
//
// For example:
//
// count_char("fizzbuzz","z") => 4
// count_char("Fancy fifth fly aloof","f") => 5

function countChar(string, char) {
  let counter = 0;
  for (let i = 0; i < string.length; i++){
    if (string[i].toLowerCase() === char.toLowerCase()){
      counter += 1;
    }
  }
  return counter;
}
