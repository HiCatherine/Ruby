puts 'This program can display numbers in old Roman numerals. 
Please enter an integer between 1 and 3000.'

def Old_Roman number 

	def M times
		return 'M' * times 
	end
	
	number2 = number - (number/1000)*1000
	def D times
		return 'D' * times
	end

	number3 = number - (number/500)*500
	def C times
		return 'C' * times
	end

	number4 = number - (number/100)*100
	def L times
		return 'L' * times
	end

	number5 = number - (number/50)*50
	def X times
		return 'X' * times
	end

	number6 = number - (number/10)*10
	def V times
		return 'V' * times
	end

	number7 = number - (number/5)*5
	def I times
		return 'I' * times
	end

	return M(number/1000) + D(number2/500) + C(number3/100) + L(number4/50) + X(number5/10) + V(number6/5) + I(number7/1)

end

puts Old_Roman(gets.chomp.to_i)





# THE 'CLEANER' WAY (suggested by Josephine Koe):

puts 'This program can display numbers in old Roman numerals. 
Please enter an integer between 1 and 3000.'

def Old_Roman2 number 

	str = ' '

	str += 'M'*(number/1000)
	number = number - (number/1000)*1000
	
	str += 'D'*(number/500)
	number = number - (number/500)*500
	
	str += 'C'*(number/100)
	number = number - (number/100)*100
	
	str += 'L'*(number/50)
	number = number - (number/50)*50
	
	str += 'X'*(number/10)
	number = number - (number/10)*10
	
	str += 'V'*(number/5)
	number = number - (number/5)*5
	
	str += 'I'*(number/1)

	return str

end

puts Old_Roman2(gets.chomp.to_i)


