function fib_of_num(num){
  if (num<2){
    return num
  }

  var prev_prev = 0
  var prev = 1
  var current
  for (var i = 1; i< num;i++){
    current = prev_prev + prev
    prev_prev = prev
    prev = current
  }

  return current;

}

function fibRecursive(n) {
    if (n === 0 || n === 1) {
        return n;
    }
    return fibRecursive(n-1) + fibRecursive(n-2);
}