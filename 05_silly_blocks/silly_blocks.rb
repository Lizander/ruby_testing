def reverser 
	string = yield
	if (string.split(' ').length > 1)
		string2 = string.split(' ')
		string2.each_with_index { |i, index|
			i.reverse!
		 }
		string2.join(' ')
	else
		yield.reverse!
	end
end

def adder(n=1)
	yield + n
end

def repeater(n=2)
	n.times do 
		yield
	end
end