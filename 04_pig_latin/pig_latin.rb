def translate(string)
	if string.start_with?('a','e','i','o','u')
		string << "ay"
	else
		string2 = string.split('')
		string2.each_with_index do |letter, index|
			if !letter.start_with?('a','e','i','o','u') && !string2[index - 1].start_with?('a','e','i','o','u')
				string2.delete(letter)
				string2.push(letter)
			end
			string2 << "ay"
			string2.join('')
		end
	end
end