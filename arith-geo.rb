#Using the Ruby language, take an array of numbers  and return the string "Arithmetic" 
#if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. 
#If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, 
#where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] 
#and Geometric example: [2, 6, 18, 54]. 
#Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements. 

require 'pry'

class Sequence

  attr_accessor :combo

  def initialize(combo)
    @combo = combo
  end

  def length
    self.combo.length
  end

  def is_arithmetic
    counter = 0
    difference = self.combo[1] - self.combo[0] if self.length > 1
    while counter < self.length
      if self.combo[counter + 1] && self.combo[counter + 1] - self.combo[counter] != difference
        return false
      end 
      counter += 1
    end
    return true
  end

  def is_geometric
    counter = 0
    constant = self.combo[1]/self.combo[0] if self.length > 1
    while counter < self.length
      if self.combo[counter+1] && self.combo[counter+1]/self.combo[counter] != constant
        return false
      end
      counter += 1
    end
    return true
  end

  def arithgeo
    return "Geometric" if self.is_geometric
    return "Arithmetic" if self.is_arithmetic
    return -1
  end

end

arr1 = [2, 4, 6, 8] 

arr2 = [2, 6, 18, 54]

arr3 = [1, 6, 8, 15]

seq1 = Sequence.new(arr1)
seq2 = Sequence.new(arr2)
seq3 = Sequence.new(arr3)

binding.pry

x = 1

