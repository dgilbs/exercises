require 'pry'



#challenge is to find all unique items in an array
def unique_items(array)
  new_arr = []
  array.each do |item|
    new_arr.push(item) if !containing(new_arr, item)
  end
  new_arr
end

#essentially writing a .include? method
def containing(array, item)
  array.each do |object|
    return true if object == item 
  end
  return false
end


#takes an array and limits each item in the array to only three occurrences
def limit_three(array)
  hash = {} #this hash will be used to count how many times an item has appeared--the keys will be the item names, the value will be how many times they've appeared
  final_arr = [] #the final data structure we will be returning
  array.each do |item|
    hash[item] += 1 if hash[item] #increments the value by 1 if there is a key with the item name in the hash
    hash[item] = 1 if !hash[item] #creates a new key if that item is not already listed and sets it equal to one, since it was just counted in the array for the 1st time
    final_arr.push(item) if hash[item] <= 3  #adds the item to the array if the count is not greater than three
  end
  final_arr
end





arr = ["dog", "dog", "dog", "dog", "dog", "cat", "cat", "cat","cat"]

binding.pry

x = 1

