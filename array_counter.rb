require 'pry'


#challenge is to find all unique items in an array
def unique_items(array)
  new_arr = []
  array.each do |item|
    new_arr << item if !new_arr.include?(item)
    
  end
  new_arr
end

#this method will return a hash where the keys are the items in the array, each of which points to a number that is equal to how many times it appears in the array
def item_counter(array)
  hash = {}
  array.each do |item|
    if !hash[item]
      hash[item] = 1
    else
      hash[item] += 1
    end
  end
  hash
end

#this method will take an array and return a new array that 
def up_to_three(array)
  final_arr = []
  array.each do |item|
    if !final_arr.include?(item)
      final_arr.push(item)
    else
      counter = item_counter(final_arr)
      final_arr.push(item) if counter[item] < 3
    end 
  end
  final_arr
end



arr = ["dog", "dog", "dog", "dog", "dog", "cat", "cat", "cat","cat"]

binding.pry

x = 1

