def eng_number number
	if number < 0 || number != number.to_i
		puts 'Please enter a nonnegative integer.'
	elsif number == 0
		return 'zero'
	end

	str = ''

	ones =  ['one',       'two',         'three',  
			 'four',      'five',        'six', 
			 'seven',     'eight',       'nine']
	tens =  ['ten',       'twenty',      'thirty',
			 'forty',     'fifty',       'sixty',
			 'seventy',   'eighty',      'ninety']
	teens = ['eleven',    'twelve',      'thirteen',
             'fourteen',  'fifteen',     'sixteen',
			 'seventeen', 'eighteen',    'nineteen']
	
	lions = ['thousand',  'million',     'billion',
			 'trillion',  'quadrillion', 'quintillion',
			 'sextillion','septillion',  'octillion',   'nonillion']

	left = number  # "left" is what is left to write
	write = left/100  # "write" is what we are writing now
	left = number%100


	if write > 0 
		count = 1

		large_number = eng_number write
		
		if count 
		
		if left > 0 
			str += ' '
		end

		count += 1
	end


	if count == 1 
		str += ones[write - 1] + ' hundred'
	end 
		
	while write > 0 
		str += ones[write - 1] + lions [count]









	write = left/10
	left = left%10

	if write > 0 
		if write == 1 && left > 0
			str += teens[left - 1]
			left =0
		else
			str += tens[write - 1]
		end
	
		if left > 0 
			str += ' '
		end
	end

	write = left/1
	left = 0

	if write > 0
		str += ones[write - 1]
	end

	str
end

puts 'Enter a number below 30 digits. 
	  Hit enter to get its english representation.'
puts eng_number(gets.chomp.to_i)
