=begin
Implement a method #substrings that takes a word as the first argument
and then an array of valid substrings (your dictionary) as the second
argument. It should return a hash listing each substring (case sensitive)\
that was found in the original string and how many times it was found.
=end

def split_word s
  indices = (0..s.length).to_a
  variations = indices.product(indices).reject{|i,j| i > j}.map{|i,j| s[i..j]}.uniq
  return variations
end

def string_cleanup (string)
  modded_string = ""
  string.each_char do |x|
    if x =~ /[a-zA-Z]/
      modded_string += x
    end
  end
end

def substrings(string, dictionary)
  hash_listing = Hash.new(0)
  string = string.split(" ")
  puts string.inspect
  string.each do |element|
    element = string_cleanup(element)
    elements = split_word(element)
    elements.each do |x|
      if dictionary.index(x.downcase) != nil
        hash_listing[x] += 1;
      end
    end
  end
  return hash_listing
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)