puts 'Say something to your grandma.'

while true
	say = gets.chomp
	
	if say != say.upcase
		puts 'HUH?! SPEAK UP, SONNY!'

	else
		if say != 'BYE'
			year = 1930 + rand(21) 
			puts 'NO, NOT SINCE ' + year.to_s + '!'
		
		else
			puts 'BYE SONNY!'
			break
		end
	end
end