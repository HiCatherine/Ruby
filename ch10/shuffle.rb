list = []

puts 'Type in as many words. Press enter on empty line to exit.'

while true
	word = gets.chomp
	if word == ''
		break
	else
		list.push word
	end
end


# WAY 1: WITHOUT RECURSION
def shuffle array
	shuff array, []
end

def shuff original, shuffled
	if original.length == 0
		return shuffled
	end

	while original.length > 0 
		shuffled = []
		
		original.each do |selected|
			selected = original[rand(original.length - 1)]
			shuffled.push selected
			original -= [selected]
		end
	end

	return shuffled
end

puts(shuffle(list))




# WAY 2: WITH RECURSION
def shuffle2 array
	recursive_shuffle array, []
end

def recursive_shuffle unshuffled, shuffled
	if unshuffled.length == 0
		return shuffled
	else
		random = unshuffled[rand(unshuffled.length)]
		fewer = unshuffled - [random]
		shuffled.push random

		recursive_shuffle fewer, shuffled
	end
end

puts(shuffle2(list))


