#Write a function get_products_of_all_ints_except_at_index that takes an array of integers and returns an array of the products.

require 'pry'
def get_products_of_all_ints_except_at_index(arr)
  final_arr = []
  current_index = 0
  while current_index < arr.length
    arr1 = arr 
    arr1.delete_at(current_index)
    product = 1
    arr1.each do |num|
      product = product * num
    end
    binding.pry
    final_arr.push(product)
    current_index += 1
  end
  final_arr
end

list =   [1, 7, 3, 4]
puts get_products_of_all_ints_except_at_index(list)