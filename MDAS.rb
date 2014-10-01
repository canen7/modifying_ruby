puts "First number:"
first_number = gets.chomp.to_f

puts "Second number:"
second_number = gets.chomp.to_f


def my_method (first_number, second_number)
	x = rand
	if x >0.75
		result = first_number + second_number
		operation = 'addition'
	elsif x >0.5
		result = first_number - second_number
		operation = 'substraction'
	elsif x > 0.25
		result = first_number * second_number
		operation = 'multiplication'
	else
		result = first_number / second_number
		operation = 'division'
	end

	return [result, operation]
end

result_array = my_method (first_number, second_number)

puts "the operator used is #{result_array[1]}"

puts "the result is #{result_array[0]}"