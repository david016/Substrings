dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dict)
    arr_of_words=words.split
    final_hash=dict.reduce(Hash.new(0)) do |result,current_word|
        i=0
        while i<arr_of_words.length
            if  arr_of_words[i].downcase.match?(current_word)
                result[current_word]+=1
                i+=1
            else
                i+=1
            end
        end
        result
    end
  puts "Result is: #{final_hash}"
end

substrings("Below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)