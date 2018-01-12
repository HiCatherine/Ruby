list = []

puts 'Type in as many words. Press enter on an empty line to finish.'

while true
	word = gets.chomp
	if word == ''
		break
	else
		list.push word
	end
end

def dictionary_sort array
	recursive_sort array, []
end

def recursive_sort unsorted, sorted
	if unsorted.length == 0
		return sorted
	else
		smallest = unsorted.pop
		still_unsorted = []

		unsorted.each do |entry|
			if entry.downcase > smallest.downcase
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

puts 'Here are the words in alphabetical order, ignoring upper/lower case:'
puts dictionary_sort(list)

