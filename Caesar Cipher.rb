=begin
In cryptography, a Caesar Cipher is one of the simplest andmost widely known encryption techniques. It is a type
of substitution cipher in which each letter in the plaintext is repalced by a letter some fixed number of positions
down the alphabet. The method is named after Julius Caesar, who used it in his private correspondence.
=end

def caesar(text, shift)
	alphabet = ('a'..'z').to_a
	table = Hash[alphabet.map.with_index { |letter, index| [letter, index + 1] }]
	match = []
	letters = text.downcase.split('')
	letters.each do |letter|
		if table.include?(letter)
			match.push table[letter]
		else
			match.push letter
		end
	end
	match = match.map! do |number|
		if number.is_a? String
			number = number
		elsif number + shift > 26
			number += shift - 26
			number = table.key(number)
		elsif number + shift < 0
			number += shift + 26
			number = table.key(number)
		else
			number += shift
			number = tabl.key(number)
		end
	end

	text.split('').each do |letter|
		if letter == letter.upcase
			capital = text.index(letter)
			match[capital] = match[capital].upcase
		end
	end
	p match.join()
end

puts "Hail Caesar! Please enter sentence: "
text = gets.chomp.downcase

puts "Please enter number to encrypt your message: "
shift = gets.chomp.to_i

caesar(text, shift)
















