content = ['Table of Contents', 'Chapter 1:  Getting Started', 'page 1', 'Chapter 2:  Numbers', 'page  9', 'Chapter 3:  Letters', 'page 13']
line_width = 60

puts(content[0].center(line_width))
puts

number = 1

while number < 6 
	puts(content[number].ljust(line_width/2) + content[number + 1].rjust(line_width/2))
	number = number + 2
end
