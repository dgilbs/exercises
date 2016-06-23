require 'pry'


#when creating a new data structure
def is_palindrome(string)
  arr = []
  counter = string.length - 1
  while counter >= 0
    arr << string[counter]
    counter -= 1
  end
  binding.pry
  string1 = ""
  counter1 = 0
  while counter1 < arr.length
    string1 += arr[counter1]
    counter1+=1
  end
  string == string1
end

puts is_palindrome("racecar")