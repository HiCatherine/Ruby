puts 'Say something to your grandma.'
bye = 1

while true
  say = gets.chomp
  
  if say != 'BYE'
    bye = 1
  end
  
  if say != say.upcase
    puts 'HUH?! SPEAK UP, SONNY!'
  
  else
      if say == 'BYE'
          if bye == 3
            puts 'BYE SONNY!'
          break
        else 
          puts 'WHAT?'
          bye = bye + 1
        end
      
      else
      year = 1930 + rand(21) 
      puts 'NO, NOT SINCE ' + year.to_s + '!'
      end
  end
end