class Temperature

	attr_accessor :fahrenheit, :celsius

	def initialize(opts = {})
		@options = opts
		@f = @options[:f]
		@c = @options[:c]
	end

	def in_fahrenheit
		if @options.has_key?(:f)
			return @f
		elsif @options.has_key?(:c)
			ftoc(@c)
		end
	end

	def in_celsius
		if @options.has_key?(:c)
			return @c
		elsif @options.has_key?(:f)
			ctof(@f)
		end
	end

	def self.from_celsius(celsius)
		self.new(:c => celsius)
	end

	def self.from_fahrenheit(fahrenheit)
		self.new(:f => fahrenheit)
	end

	def ftoc(num)
		return num * (9.0/5.0) + 32
	end

	def ctof(num)
		return (num - 32) * (5.0/9.0)
	end
end

class Celsius < Temperature
	def initialize(number)
		super(c: number)
	end
end

class Fahrenheit < Temperature
	def initialize(number)
		super(f: number)
	end
end
