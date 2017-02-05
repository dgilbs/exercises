arr = [1,7,4,3]


function products(arr){

  final_arr = []
  for (var i = 0; i<arr.length; i++){
    var num = 1

    for (var f = 0; f<arr.length; f++){
      if (f!=i){
        num *= arr[f]
      }

    }
    final_arr.push(num)
  }
  return final_arr
}

function getProductsOfAllIntsExceptAtIndex(intArray) {

    var productsOfAllIntsExceptAtIndex = [];

    // for each integer, we find the product of all the integers
    // before it, storing the total product so far each time
    var productSoFar = 1;
    for (var i = 0; i < intArray.length; i++) {
        productsOfAllIntsExceptAtIndex[i] = productSoFar;
        productSoFar *= intArray[i];
    }

    // for each integer, we find the product of all the integers
    // after it. since each index in products already has the
    // product of all the integers before it, now we're storing
    // the total product of all other integers
    productSoFar = 1;
    for (var j = intArray.length - 1; j >= 0; j--) {
        productsOfAllIntsExceptAtIndex[j] *= productSoFar;
        productSoFar *= intArray[j];
    }

    return productsOfAllIntsExceptAtIndex;
}



//var i = products(arr)