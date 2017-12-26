puts 'Hey, what\'s your favorite number?'
number = gets.chomp
bigger = 1
puts 'There is a bigger and better favorite number: ' + (number.to_i + bigger).to_s
