function highLow(arr){
  var currentHigh = arr[0]
  var currentLow = arr[0]

  for(var i = 0; i<arr.length; i++){
    currentLow = Math.min(currentLow, arr[i])
    currentHigh = Math.max(currentHigh, arr[i])
  }

  obj = {"high": currentHigh, "low": currentLow}

  return currentLow + " " + currentHigh

}

list = [3,2,4,15,24,1,75,43]