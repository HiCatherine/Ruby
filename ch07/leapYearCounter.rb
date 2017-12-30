puts 'I can show you all the leap years between (and perhaps including) two years you enter:'
puts 'Starting year:'
year = gets.chomp.to_i
puts 'Ending year:'
year_end = gets.chomp.to_i
puts 'Here are the leap years:'

while year < (year_end + 1)

	if year%400 == 0
		puts year
	
	elsif year%4 == 0 && year%100 != 0
		puts year
	end

	year = year + 1 
end

