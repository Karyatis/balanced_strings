class Balanced

	def initialize(str)
		@str = str
	end

	def balanced_string?
		return false unless valid_length? #		return false if !valid_length? 
		array_of_openings = []
		array_of_closings = []
		chars.each do |char|
			if char == "("
				array_of_openings << char
			elsif char == ")"
				array_of_closings << char
			end
			return false if array_of_closings.length > array_of_openings.length
		end
		return array_of_openings.length == array_of_closings.length
	end
end

private
	def chars
		@chars ||= @str.chars 
	end

	def valid_length?
		chars.length % 2 == 0 #If the number of characters is not even, then reject
	end
