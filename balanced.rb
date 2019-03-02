module Balanced

	def break_into_chars(string_to_check)
		char_array = string_to_check.chars
		char_array
	end

	def check_length(char_array)
		char_array.length % 2 == 0 #If the number of characters is not even, then reject
	end

	def open_close_check(char_array)
		last = char_array.length - 1
		if char_array[0] == ")" #If the first character is not opening, then reject
			false
		elsif char_array[last] == "(" #If the last character is not closing, then reject
			false
		else
			true
		end
	end

	def balanced_string(char_array)
		array_of_openings = []
		array_of_closings = []
		char_array.each do |char|
			if char == "("
				array_of_openings << char
			elsif char == ")"
				array_of_closings << char
			end
		end
		return array_of_openings.length == array_of_closings.length
	end
end

