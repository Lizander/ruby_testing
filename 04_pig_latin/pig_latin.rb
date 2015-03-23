def translate(string)
	if (string.split(' ').length > 1)
		string3 = ""
		string2 = string.split(' ')
		string2.each_with_index { |i, index|
			string3 += translate(i) + " "
		}
		string3.rstrip
	else
		string2 = string.split('')
		consonants = "bcdfghjklmnpqrstvwxyz"
		vowels = "aAeiou"
		foundVowels = false
		previousLetter = ""
		string2.each_with_index { |i, index|
			if vowels.include?(i) && previousLetter != "q"
				foundVowels = true
			elsif !foundVowels
				string.delete! i
				string << i
			end
			previousLetter = i
		}
		string << "ay"
	end
end