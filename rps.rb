def computer_roll(choice)
	a = choice
	x = 1 + rand(3)
	if x == 1
		b = "R"
	elsif x == 2
		b = "P"
	elsif x == 3
		b = "S"
	else
		puts "What?"
	end
	evaluate(a, b)
end

def play_again()
	puts "Play again? (Y/N)"
	x = gets.chomp().upcase!
	if x == "Y"
		system("ruby rps.rb")
	else
		abort
	end
end

def evaluate(a, b)
	puts "You picked #{a}, computer picked #{b}."
	if a == b
		puts "It's a tie!"
	elsif a == 'R' and b == 'P'
		puts "You lose!"
	elsif a == 'R' and b == 'S'
		puts "You win!"
	elsif a == 'P' and b == 'R'
		puts "You win!"
	elsif a == 'P' and b == 'S'
		puts "You Lose!"
	elsif a == 'S' and b == 'R'
		puts "You lose!"
	elsif a == 'S' and b == 'P'
		puts "You win!"
	else
		puts "What?"
	end
	play_again
end

puts "Play Rock, Paper, Scissors!"
puts "(R/P/S)"
choice = gets.chomp().upcase!
computer_roll(choice)