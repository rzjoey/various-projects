class Timer

def initialize
@seconds = 0
minutes = 0
hours = 0
end

def seconds=(number)
	@seconds = number
end


def seconds
	@seconds
end


def time_string

	if @seconds == 0
		return "00:00:00"

	elsif @seconds < 60
		if @seconds < 10
		 	@seconds = "0"+ @seconds.to_s
			end
		return "00:00:" + @seconds.to_s


	elsif @seconds == 60
		minutes = 1
		return "00:0" + minutes.to_s + ":00"

	elsif @seconds > 60 && @seconds < 3600
		minutes = @seconds / 60 
		seconds = @seconds % 60
	
		if minutes < 10
	 		minutes = "0"+ minutes.to_s
		end

		if seconds < 10
		 	seconds = "0"+ seconds.to_s
		end

		return "00:" + minutes.to_s + ":" + seconds.to_s


	elsif @seconds > 3600

		minutes = @seconds / 60 
		hours = minutes / 60
		minutes = minutes % 60
		seconds = @seconds % 60
	

if minutes < 10
	 minutes = "0" + minutes.to_s
end

if seconds < 10
	 seconds = "0" + seconds.to_s
end

if hours < 10
	hours = "0" + hours.to_s
end

	return hours.to_s + ":" + minutes.to_s + ":" + seconds.to_s

end



end

end

timer = Timer.new
#max is 86,400 seconds for 1 day, lazy for errorhandling 
puts timer.time_string
i = 1
while i <= 100 
timer.seconds = i

puts timer.time_string
i+=1
end
