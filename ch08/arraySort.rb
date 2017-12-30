words = []
puts 'Type in as many words as you want. Press "Enter" after each word.'
puts 'Enter "stop" on an empty line to stop.'

while true
	entry = gets.chomp
	if entry != 'stop'
		words.push entry
	else
		break
	end
end

print 'Here are your words in alphabetical order:'
print words.sort

