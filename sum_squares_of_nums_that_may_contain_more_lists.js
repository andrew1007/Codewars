// Write a function that sums squares of numbers in list that may contain more lists
//
// Example:
//
// var l = [1,2,3]
// SumSquares(l) == 14
//
// var l = [[1,2],3]
// SumSquares(l) == 14
//
// var l = [[[[[[[[[1]]]]]]]]]
// SumSquares(l) == 1
//
// var l = [10,[[10],10],[10]]
// SumSquares(l) == 400

function SumSquares(l, sum = 0){
    for (let i = 0; i < l.length; i++){
      if (l[i].constructor === Array){
        sum = SumSquares(l[i], sum);
      } else {
        sum += l[i] * l[i];
      }
    }
    return sum;
}
