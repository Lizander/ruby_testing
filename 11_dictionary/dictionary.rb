class Dictionary

	def initialize(opts = {})
		@options = opts
	end

	def entries
		@options
	end

	def add(entry = {})
		@options = entry
	end

	def keywords
		@options.keys
	end
end