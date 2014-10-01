def get_number
	puts "Enter in a number of something"
	number = gets.chomp
	if number.to_i.to_s == number
		return number.to_i
	else
		puts "That something wasn't a number"
		get_number
	end
end

def mdas()
	hash = {1 =>[:+,"addition"],
			2 => [:-,"substraction"],
			3 => [:/,"division"],
			4 => [:*,"multiplication"]
	}
	operator = hash[rand(1..4)][0]
	first = get_number
	second= get_number
	result = [first, second].inject(operator)

	return "You entered #{first} $ #{second}, and the operator was #{operator}, and the result was #{result}"
end

print mdas, "\n"
