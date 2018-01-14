puts 'This program can display numbers in new Roman numerals. 
Please enter an integer between 1 and 3000.'

def New_Roman number 
	str = ' '

	str += 'M'*(number/1000)
	number = number - (number/1000)*1000
	

	if number/100 == 9 || number/100 == 4
		if number/100 == 9
			str += 'CM' 
		else
			str += 'CD'
		end
	else 
		str += 'D'*(number/500)
		number = number - (number/500)*500
		str += 'C'*(number/100)
	end

	number = number - (number/100)*100


	if number/10 == 9 || number/10 == 4
		if number/10 == 9
			str += 'XC'
		else
			str += 'XL'
		end
	else 
		str += 'L'*(number/50)
		number = number - (number/50)*50
		str += 'X'*(number/10)
	end

	number = number - (number/10)*10


	if number/1 == 9 || number/1 == 4
		if number/1 == 9
			str += 'IX'
		else
			str += 'IV'
		end
	else
		str += 'V'*(number/5)
		number = number - (number/5)*5
		str += 'I'*(number/1)
	end


	return str

end


puts New_Roman(gets.chomp.to_i)
