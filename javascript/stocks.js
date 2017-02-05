var stockPricesYesterday = [10, 7, 5, 8, 11, 9];

function getMaxPrice(arr){

  var minPrice = arr[0];
  var maxProfit = 0

  for(var i = 0; i <arr.length; i++){
    var currentPrice = arr[i];
    minPrice = Math.min(minPrice, currentPrice);
    var potentialProfit = currentPrice - minPrice;
    maxProfit = Math.max(maxProfit, potentialProfit)

  }

  return maxProfit;
  

}


var i = getMaxPrice(stockPricesYesterday)