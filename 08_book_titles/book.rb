class Book
	attr_accessor :title
	def title
		forbiddenWords = ['the','a','an','and','of','in']
		if (@title.split(' ').length > 1)
			string = @title.split(' ')
			string.each_with_index { |item,index|
				if !forbiddenWords.include?(item) || index == 0
					item.capitalize!
				end
			}
			return string.join(' ')
		else
			@title.capitalize
		end
	end
end