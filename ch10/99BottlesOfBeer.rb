# Definition of english_number:

def hundred_number num
	
	str = ''

	ones =  ['one',       'two',       'three',  
			 'four',      'five',      'six', 
			 'seven',     'eight',     'nine']
	tens =  ['ten',       'twenty',    'thirty',
			 'forty',     'fifty',     'sixty',
			 'seventy',   'eighty',    'ninety']
	teens = ['eleven',    'twelve',    'thirteen',
             'fourteen',  'fifteen',   'sixteen',
			 'seventeen', 'eighteen',  'nineteen']

	write = num/100
	left = num%100

	if write > 0
		str += ones[write - 1] + ' hundred'
		if left > 0
			str += ' '
		end
	end

	write = left/10
	left = left%10

	if write > 0
		if write == 1 && left > 0
			str += teens[left - 1]
			left = 0
		else
			str += tens[write - 1]
		end

		if left > 0
			str += '-'
		end
	end

	write = left
	left = 0

	if write > 0
		str += ones[write - 1]
	end

	return str 
end


def english_number (number, k)
	if number < 0 || number != number.to_i
		puts 'Please enter a nonnegative integer.'
	elsif number == 0
		return 'zero'
	end

	str = ''

	lions = ['', 'thousand',  'million',     'billion',
			     'trillion',  'quadrillion', 'quintillion',
			     'sextillion','septillion',  'octillion',   'nonillion']

	if number >= 1000
		str += english_number(number/1000, k + 1) + hundred_number(number%1000) + ' ' + lions[k + 1]
	else
		str += hundred_number(number%1000) + ' ' + lions[k + 1] + ' '
	end

	return str
end


# Time to sing:

puts 'Let\'s sing the song "99 Bottles of Beer" starting with your favorite number.'
puts 'Enter a number below:'

original = gets.chomp.to_i
num = original + 1

while num > 2
	puts english_number((num - 1), -1).capitalize + ' bottles of beer on the wall, ' + english_number((num - 1), -1) + ' bottles of beer.'
	
	str = 'Take one down and pass it around, ' + english_number((num - 2), -1)
		if num == 3
			str += 'bottle '
		else
			str += 'bottles '
		end
	str += 'of beer on the wall.'
	puts str

	puts ''
	num = num - 1
end

puts 'One bottle of beer on the wall, one bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts ' '
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, ' + original.to_s + ' bottles of beer on the wall.'

