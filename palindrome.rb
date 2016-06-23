require 'pry'


#when creating a new data structure
def is_palindrome(string)
  arr = []
  counter = string.length - 1
  while counter >= 0
    arr << string[counter]
    counter -= 1
  end
  string1 = ""
  counter1 = 0
  while counter1 < arr.length
    string1 += arr[counter1]
    counter1+=1
  end
  string == string1
end

#when I can't use a new data structure
def palindrome(string)
  counter1 = 0
  counter2 = string.length - 1
  while counter1 < string.length/2
    return false if string[counter1] != string[counter2]
    counter1 += 1
    counter2 -= 1
  end
  return true
end

puts palindrome("bob")