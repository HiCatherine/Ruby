puts 'This program can display numbers in old Roman numerals. 
Please enter an integer between 1 and 3000.'

def Old_Roman number 

	str = ' '

	array = [['M', 1000], ['D', 500], ['C', 100],
			 ['L',   50], ['X',  10], ['V',   5], ['I',  1]]

	array.each do |letter, num|
		str += letter*(number/num)
		number = number%num
	end

	return str

end

puts Old_Roman(gets.chomp.to_i)


