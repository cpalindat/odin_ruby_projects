dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  string = string.downcase.split(" ")

  result = dictionary.reduce(Hash.new(0)) do |result, word|
    string.each do |section|
      if section.include? word
        result[word] += 1
      end 
    end

    result
  end
  p result
end

substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
