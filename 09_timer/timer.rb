class Timer
	attr_reader		:time_string, :seconds

	def initialize
		@seconds = 0
	end

	def seconds=(seconds)
		@seconds = seconds
		@time_string = construct_time(seconds)
	end

	def construct_time(seconds)

		num_minutes = 0
		num_hours = 0

		while (seconds >= 60)
			num_minutes += 1
			seconds -= 60
		end

		while (num_minutes >= 60)
			num_hours += 1
			num_minutes -= 60
		end

		return [padded(num_hours), padded(num_minutes), padded(seconds)].join(":")
	end

	def padded(seconds)
		if (seconds / 10 >= 1)
			return seconds.to_s
		else
			return '0' + seconds.to_s
		end
	end
end
