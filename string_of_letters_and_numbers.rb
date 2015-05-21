# This question was given to be by my good friend Shaurya
# Let's say you have an string of letters and numbers
# ex. "abc12de345fg1" They don't have to be in order
# If you see a number, you need to remove the whole number (in this case
# if you see 1, you need to grab 12)... remove all the numbers and add up their sum

string = "abc12d34e"
	
class String
	def is_integer?
		self.to_i.to_s == self
	end
end


def add_the_whole_numbers(string)
	num = 0
	sum = 0
	string.each_char do |character|
		if character.is_integer?
			num = (num * 10) + character.to_i
			next
		else
			sum = sum + num
			num = 0
		end
	end
	sum = sum + num
	p sum
end

add_the_whole_numbers(string)