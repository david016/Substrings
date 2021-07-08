dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dict)
  a=dict.reduce(Hash.new(0)) do |result,current_word|
    if  words.downcase.match(current_word)
      result[current_word]+=1
      result
    else
      result
    end
  end
  puts "Result is: #{a}"
end

substrings("Below", dictionary)