class Timer
	attr_reader :seconds
	attr_writer :seconds

	def initialize
		@seconds = 0
	end

	def time_string
		hours = @seconds / 3600
		hours = self.padded(hours)
		minutes = @seconds % 3600 / 60 
		minutes = self.padded(minutes)
		seconds = @seconds % 60
		seconds = self.padded(seconds)
		"#{hours}:#{minutes}:#{seconds}"
	end

	def padded(x)
		x.to_s.rjust(2, padstr='0')
	end
end