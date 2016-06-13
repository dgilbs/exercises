require 'pry'

# Write an algorithm that would show all the combinations of coins that equal a dollar
# Need to go through 

#get combinations with each individually




class CoinChange

  attr_accessor :coin_purse
  attr_accessor :combinations

  def initialize
    @coin_purse = {q: 25, d: 10, n: 5, p: 1}
    @combinations = []
  end

  def self.coin_purse
    {q: 25, d: 10, n: 5, p: 1}
  end

  def self.sum_of_combo(hash)
    sum = 0
    coins = {q: 25, d: 10, n: 5, p: 1}
    hash.each do |key, amount|
      sum += (amount * coins[key])
    end
    sum
  end

  def self.all_combinations
    all_combos =[]
    counter1 = 0
    while counter1 <= (100/self.coin_purse[self.coin_purse.keys[0]])    
      counter2=0
      while counter2 <=(100/self.coin_purse[self.coin_purse.keys[1]])
        counter3 = 0
        while counter3 <=(100/self.coin_purse[self.coin_purse.keys[2]])
          counter4 = 0
          while counter4 <=(100/self.coin_purse[self.coin_purse.keys[3]])
            combination = {}
            combination[self.coin_purse.keys[0]] = counter1
            combination[self.coin_purse.keys[1]] = counter2
            combination[self.coin_purse.keys[2]] = counter3
            combination[self.coin_purse.keys[3]] = counter4
            counter4 += 1
            all_combos.push(combination) if self.sum_of_combo(combination) == 100
          end
          counter3 += 1
        end
        counter2 +=1
      end
      counter1 += 1
    end
    all_combos
  end





end



c = CoinChange.all_combinations

binding.pry



x = "hello"