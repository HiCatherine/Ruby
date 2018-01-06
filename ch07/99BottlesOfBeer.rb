number = 100

while number > 2
	puts (number - 1).to_s + ' bottles of beer on the wall, ' + (number - 1).to_s + ' bottles of beer.'
	str = ('Take one down and pass it around, ' + (number - 2).to_s) 
		if number == 3 
			puts str += ' bottle of beer on the wall.'
		else
			puts str += ' bottles of beer on the wall.'
		end
	
	puts ' '
	number = number - 1 
end

puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts ' '
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'

