require 'pry'

#algorithms to reverse strings


#when you create a new data structure
def reverse_string(string)
  arr = string.split("")
  word = ""
  counter = string.length-1
  while counter >= 0
    word += string[counter]
    counter -= 1
  end
  word
end


#without creating a new data structure

def reverse (string)
  counter1 = 0
  counter2 = string.length-1
  x = string.length/2.0
  while counter1 < x
    string[counter1], string[counter2] = string[counter2], string[counter1]
    counter1 += 1
    counter2 -= 1
  end
  string
end

x = reverse("hello")

binding.pry

string = "Hello World"