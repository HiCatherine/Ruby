list = []

puts 'Type in words. Press enter on an empty line to finish.'

while true
	word = gets.chomp
	if word == ''
		break
	else
		list.push word
	end
end


# .sort method
puts 'Here is the sorted array using the .sort method:'
puts list.sort



# customized sort method
def sort array
	recursive_sort array, []
end

def recursive_sort unsorted, sorted
	if unsorted.length == 0
		return sorted
	else
		smallest = unsorted.pop
		still_unsorted = []

		unsorted.each do |entry|
			if entry > smallest
				still_unsorted.push entry
			else 
				still_unsorted.push smallest
				smallest = entry
			end
		end
		
		sorted.push smallest
		recursive_sort still_unsorted, sorted
	end
end

puts 'Here is the sorted array using the customized sort method:'
puts(sort(list))
