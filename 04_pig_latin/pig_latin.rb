def translate(string)
	if string.start_with?('a','e','i','o','u')
		string << "ay"
	else
		string2 = string.split('')
		consonants = "bcdfghjklmnpqrstvwxyz"
		vowels = "aAeiou"
		foundVowels = false
		string2.each_with_index { |i, index|
			if vowels.include?(i)
				foundVowels = true
			elsif consonants.include?(i) && !foundVowels
				string.delete! i
				string << i
			end
		}
		string << "ay"
	end
end