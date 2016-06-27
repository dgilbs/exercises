#Using the Ruby language, take an array of numbers  and return the string "Arithmetic" 
#if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. 
#If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, 
#where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] 
#and Geometric example: [2, 6, 18, 54]. 
#Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements. 

require 'pry'

def is_arithmetic(arr)
  counter = 0
  difference = arr[1] - arr[0] if arr.length > 1
  while counter < arr.length
    first_num = arr[counter]
    second_num = arr[counter + 1]
    if second_num && second_num - first_num != difference
      return false
    end 
    counter += 1
  end
  return true
end

def is_geometric(arr)
  counter = 0
  constant = arr[1]/arr[0] if arr.length > 1
  while counter < arr.length
    first_num = arr[counter]
    second_num = arr[counter+1]
    if second_num && second_num/first_num != constant
      return false
    end
    counter += 1
  end
  return true
end

def arithgeo(arr)
  return "Geometric" if is_geometric(arr)
  return "Arithmetic" if is_arithmetic(arr)
  return -1 if !is_geometric(arr) && !is_arithmetic(arr)
end

arr1 = [2, 4, 6, 8] 

arr2 = [2, 6, 18, 54]

arr3 = [1, 6, 8, 15]

binding.pry

x = 1

