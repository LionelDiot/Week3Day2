dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
   


def word_counter(string,dictionnary)
  word_count={}
  dictionnary.each {|word|
  word_apparition=0
  string_of_only_word_length=string.downcase.scan(word).length
  word_count[word]=string_of_only_word_length if string_of_only_word_length > 0
  }
  
  return word_count
end


