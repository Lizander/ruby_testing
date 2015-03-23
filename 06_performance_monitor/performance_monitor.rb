def measure(n=0)
	beginning_time = Time.now
	end_time = Time.now
	if (yield != nil)
		n -= 1
		n.times do
			yield
		end
		end_time = Time.now
		if n > 0
			return (end_time - beginning_time) / (n += 1)
		end
	end
	return (end_time - beginning_time)
end