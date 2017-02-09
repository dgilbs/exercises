
function highestProduct(arr){

  if (arrayOfInts.length < 3) {
        throw new Error('Less than 3 items!');
    }

    var highest = Math.max(arrayOfInts[0], arrayOfInts[1]);
    var lowest  = Math.min(arrayOfInts[0], arrayOfInts[1]);

    var highestProductOf2 = arrayOfInts[0] * arrayOfInts[1];
    var lowestProductOf2  = arrayOfInts[0] * arrayOfInts[1];


    var highestProductOf3 = arrayOfInts[0] * arrayOfInts[1] * arrayOfInts[2];
    for (var i = 2; i < arrayOfInts.length; i++) {
        var current = arrayOfInts[i];

    
        highestProductOf3 = Math.max(
            highestProductOf3,
            current * highestProductOf2,
            current * lowestProductOf2
        );

        
        highestProductOf2 = Math.max(
            highestProductOf2,
            current * highest,
            current * lowest
        );

        
        lowestProductOf2 = Math.min(
            lowestProductOf2,
            current * highest,
            current * lowest
        );

        
        highest = Math.max(highest, current);

        
        lowest = Math.min(lowest, current);
    }

    return highestProductOf3;

  
}