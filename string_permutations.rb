require "pry"

def string_permutations(word)
  letters = word.split("")
  letter_hash = {}
  total = factorial(word.length)
  total_per = total/word.length
  letters.each do |letter|
    letter_hash[letter] = []
  end
  letter_hash.each do |letter, combination|
    while combination.length < total_per
      string = letter.to_s
      new_arr = letters.reject{|element| element == letter}
      find_combinations(new_arr, combination, string, letter)
    end
  end
  letter_hash.values.flatten
end
def factorial(num)
  product = 1 
  counter = 1
  while counter <= num
    product *= counter
    counter += 1
  end
  product
end

def find_combinations(array1, array2, string, letter)
  if array1.length <= 1
    string += array1[0]
    array2.push(string) if !array2.include?(string)
  else 
    new_letter = array1.sample
    string += new_letter 
    new_arr = array1.reject{|element| element == new_letter} if string.include?(letter)
    find_combinations(new_arr, array2, string, letter)
  end
end

x = string_permutations("abc")


binding.pry

y = 1