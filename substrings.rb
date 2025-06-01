def substrings(string,dictionary)
  substring_hash = {}
  string = string.downcase
  for word in dictionary
    if string.include?(word)
      substring_hash[word] = string.scan(/(?=#{word})/).length
      # performs a regex "positive lookahead" (?=)
    end
  end
  substring_hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)