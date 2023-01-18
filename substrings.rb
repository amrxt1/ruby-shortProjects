def substrings(string,dictionary)
    string.split(/ /).reduce(Hash.new(0)) do |hash, word|
        dictionary.each do |word_check|
            word.include?(word_check) ? hash[word_check] += 1 : next
        end
        hash
    end
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)