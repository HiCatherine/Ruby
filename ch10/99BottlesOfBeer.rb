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

	left = number # "left" is what is left to write
	write = number/1000 # "write" is what we are writing now
	left = number%1000

	if write > 0
		

	left = number 
	write = left/100 

	count = 1

	if write > 0 
		hundreds = eng_number write
		str += hundreds + ' hundred'
		
		if left > 0 
			str += ' '
		end
	end

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


puts eng_number(gets.chomp.to_i)
