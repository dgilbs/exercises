class Sentence

  attr_accessor :text #used to identify the actual words and characters that make up the sentence--written

  def initialize(text)
    @text = text
  end


  def length
    self.text.length
  end

  #counts the number of words in the sentence--used primarily to keep code cleaner later on
  def word_count
    self.words.length
  end

  #want to pluck all the words out of the sentence--can't use .split, etc. 
  def words
    arr = []
    counter = 0
    string = ""
    while counter < self.length
      if self.text[counter] == " " #a space means a word has ended which means we need to push a new one in
        arr.push(string)
        string = "" #resets the value of string since we're now creating a new word
      elsif counter == self.length - 1 #deals with the edge case of the last item in the array
        string += self.text[counter]
        arr.push(string)
      else
        string += self.text[counter]
      end
      counter += 1
    end
    arr
  end

  #prints out the words of the sentence in reverse order
  def reverse_words
    counter = self.word_count - 1
    string = ""
    while counter >= 0
      if counter == 0 #makes sure there isn't an unnecessary space at the end
        string += self.words[counter] 
      else
        string += self.words[counter] + " "
      end
      counter -= 1
    end
    string
  end

end
