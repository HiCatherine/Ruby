number = 100

while true
	puts (number - 1).to_s + ' bottles of beer on the wall, ' + (number - 1).to_s + ' bottles of beer.'
	puts 'Take one down and pass it around, ' + (number - 1).to_s + ' bottles of beer on the wall.'
	puts ' '
	number = number - 1 

	if number == 2 
		break
	end
end

puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts ' '
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'

