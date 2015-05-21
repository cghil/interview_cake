require 'pry'
meetings = [[0, 1], [3, 5], [4, 8], [9, 10], [10, 12]]

def condense_meeting_times(array)
	condensed_meeting_schedule = []
	length_of_index = array.length - 1
	array.each_with_index do |meeting, index|
		if length_of_index == index
			break
		end
		if meeting[1] >= array[index+1][0]
			new_meeting = [meeting[0], array[index+1][1]]
			condensed_meeting_schedule << new_meeting
		else
			condensed_meeting_schedule << meeting
		end
		p meeting
		p '++++++++++++++'
		p condensed_meeting_schedule
	end
	condensed_meeting_schedule
end

#solution does not work... I am going to figure this question out later


# this might be better to think about with recursion
# goal


p condense_meeting_times(meetings)