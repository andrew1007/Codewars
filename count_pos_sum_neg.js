// Given an array of integers.
//
// Return an array, where the first element is the count of positives numbers and the second element is sum of negative numbers.
//
// If the input array is empty or null, return an empty array:

// input [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]
// return [10, -65].

function countPositivesSumNegatives(input) {
    if (input == undefined || input.length === 0){
      return [];
    }
    positives = 0;
    negatives = 0;
    for (let i = 0; i < input.length; i++){
      if (input[i] < 0){
        negatives += input[i];
      } else if (input[i] > 0){
        positives += 1;
      }
    }
    return [positives].concat(negatives);
}
