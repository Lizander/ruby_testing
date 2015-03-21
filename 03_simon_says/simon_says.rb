def echo(string)
	p string
end

def shout(string)
	string.upcase
end

def repeat(string,n=2)
	string = (string << " ") * n
	string.rstrip
end

def start_of_word(string,ending)
	string[0..ending - 1]
end

def first_word(string)
	string = string.split(' ')
	string[0]
end

def titleize(string)
	if (string.split(' ').length > 1)	
		string.split(' ').each_with_index {
			|word, index| 
			if word.length <= 4 && index > 0 && index < string.split(' ').length - 1

			else
				word.capitalize!
			end

				}.join (" ")
	else
		string.capitalize
	end
end