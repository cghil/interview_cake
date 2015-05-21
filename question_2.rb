=begin
You have an array of integers, and for each index you want to find the product of every integer except the integer at that index.
Write a function get_products_of_all_ints_except_at_index() that takes an array of integers and returns an array of the products
=end

array = [1 ,7, 3, 4]
require 'pry'

def multiply(array)
	product = nil
	array.each do |num|
		if product == nil
			product = num
		else
			product *= num
		end
	end
	product
end


def get_products_of_ints_except_at_index(input)
	answer = []
	input.each do |num, index|
		temp_array = input.select { |other_num| other_num != num }
		answer << multiply(temp_array)
	end
	answer
end

p get_products_of_ints_except_at_index(array)

#I solved this with a O(n^2) runtime
# aka i suck at solving alogrithms efficiently

