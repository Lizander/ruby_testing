class Temperature

	def initialize(opts = {})
		@options = opts
	end

	def f
		return @options[:f] if @options.has_key?(:f)
	end

	def c
		return @options[:c] if @options.has_key?(:c)
	end

	def in_fahrenheit
		if c == nil
			return f
		else
			return c * (9.0/5.0) + 32
		end
	end

	def in_celsius
		if f == nil
			return c
		else
			return (f - 32) * (5.0/9.0)
		end
	end
end
