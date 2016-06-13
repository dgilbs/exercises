
require 'pry'


##Attempting to write an algorithm that would allow the computer to evaluate Roman Numerals.
##Took an object-oriented approach, the algorithm itself is in the #evaluate method

class RomanNumeral
  attr_accessor :library, :order, :numerals

  def initialize(numerals)
    @library = {i: 1, v: 5, x: 10, l: 50, c: 100, d: 500}
    @order = library.keys
    @numerals = numerals
  end

  def string_order
    self.order.map do |numeral|
      numeral.to_s
    end
  end

  def compare_numerals (sym1, sym2)
    self.library[sym1.to_sym] > self.library[sym2.to_sym]
  end

  def length
    self.numerals.length
  end


  def evaluate
    sum = 0
    counter = 0
    letters = self.numerals.downcase
    while counter < self.length
      first_num = letters[counter]
      second_num = letters[counter + 1]
      if second_num && first_num != second_num && !self.compare_numerals(first_num, second_num)
        sum += self.library[second_num.to_sym] - self.library[first_num.to_sym]
        counter += 2
      else
        sum += self.library[first_num.to_sym]
        counter += 1
      end
    end
    sum
  end

end

