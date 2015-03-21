def translate(string)
	if string.start_with?('a','e','i','o','u')
		string << "ay"
	else
		string2 = string
		tail_string = string2[0..0] + "ay"
		string.slice!(0)
		string << tail_string
	end
end