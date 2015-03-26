class Temperature

	attr_accessor :fahrenheit, :celsius

	def initialize(opts = {})
		@options = opts
		@fahrenheit = @options[:f]
		@celsius = @options[:c]
	end

	def in_fahrenheit
		if @celsius == nil
			return @fahrenheit
		else
			return @celsius * (9.0/5.0) + 32
		end
	end

	def in_celsius
		if @fahrenheit == nil || @fahrenheit == 0
			return @celsius
		else
			return (@fahrenheit - 32) * (5.0/9.0)
		end
	end

	def self.from_celsius(celsius)
		self.new(:c => celsius)
	end

	def self.from_fahrenheit(fahrenheit)
		self.new(:f => fahrenheit)
	end
end
