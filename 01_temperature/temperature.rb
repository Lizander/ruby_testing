def ftoc(temp)
	temp = (temp - 32) * (5.0/9.0)
	return temp
end

def ctof(temp)
	temp = temp * (9.0/5.0) + 32
	return temp
end