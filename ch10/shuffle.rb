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
			selected = original[rand(original.length)]
			shuffled.push selected
			original -= [selected]
		end
	end

	return shuffled
end

puts(shuffle(list))
