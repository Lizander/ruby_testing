class Timer
	attr_accessor :seconds, :minutes, :hours
	def initialize
		@seconds = 00
		@minutes = 00
		@hours = 00
	end

	def time_string
		if @seconds > 60
			@minutes = @seconds / 60
			@seconds = @seconds % 60
			if (@minutes > 60)
				@hours = @minutes / 60
				@minutes = @minutes % 60

				return "%02d:%02d:%02d" % [@hours,@minutes,@seconds]
			else
				return "%02d:%02d:%02d" % [@hours,@minutes,@seconds]
			end
		elsif @seconds == 0
			return "00:00:00"
		else
			return "00:00:#{@seconds}"
		end 
	end
end