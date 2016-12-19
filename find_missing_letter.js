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
