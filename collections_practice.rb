def sort_array_asc(array)
	array.sort
end

def sort_array_desc(array)
	array.sort {|a, b| b <=> a}
	# array.sort.reverse
end

def sort_array_char_count(array)
	array.sort {|a, b| a.length <=> b.length} 
		
end

def swap_elements(array)

# 	# array.each_with_index do |item, index|
# 	# 	if index != 1 && index != 2
# 	# 		final_array << item
# 	# end
# 	new_array = []
# 	array.each_with_index do |item, index|
# 		if index != 1 || 2
# 			new_array << item
# 		elsif index == 2
# 			new_array << array[]
# 		end
# 	end
# 	new_array.insert(1, array[2])
# 	new_array.insert(2, array[1])
# # 	array_without_2 = array.delete(array[2])
# # 	final_array = array_without_2.delete(array[1])
# # 	final_array.insert(1, array[2])
# # 	final_array.insert(2, array[1])
# # 	final_array

	array[1], array[2] = array[2], array[1]
	array
end

def reverse_array(array)
	array.reverse
end

def kesha_maker(array)
	final_array = []
	array.map do |word|
		temp_word_array = word.split(//)
		temp_word_array.delete_at(2)
		final_array << temp_word_array.insert(2, "$").join
	end
	final_array
end

def find_a(array)
	final_array = []
	array.each do |string|
		if string.start_with?("a")
			final_array << string
		end
	end
	final_array
end

def sum_array(array)
	sum = 0
	array.map { |num| sum += num }
	sum
end

def add_s(array)
	final_array = []

	array.each_with_index do |item, index|
		if index == 1
			final_array << array[index]
		else
			final_array << "#{array[index]}s"
		end
	end
	final_array
end



