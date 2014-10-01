# Create an array with the following values: 3,5,1,2,7,9,8,13,25,32. Print the sum of all numbers in the array. 
# Also have the function return an array that only include numbers that are greater than 10 
# (E.g. when you pass the array above, it should return an array with the values of 13,25,32 - hint: use reject 
# or find_all method)


array = [3,5,1,2,7,9,8,13,25,32]
puts "array:"
print array
puts
#sum all elements in the array 
puts "sum of array's elements:"
sum = 0
array.each { |a| sum+=a}

puts sum

#return an array that only include numbers whch are ggreater than 10
#with reject
puts "array after rejecting elements < 10"
print array.reject{|i|i<10}
print "\n"

#with find_all
array = [3,5,1,2,7,9,8,13,25,32]
puts "find_all elements > 10"
print array.find_all{|i|i>10}
print "\n"

# Create an array with the following values: John, KB, Oliver, Cory, Matthew, Christopher. 
# Shuffle the array and print the name of each person. 
# Have the program also return an array with names that are longer than 5 characters.

array2= ['John','KB','Oliver','Cory','Matthew','Christopher']
puts "array2:"
array2.shuffle.each {|name| print name,"\n"}
print array2
print "\n"

puts "array2 shuffled:"
print array2.shuffle
print "\n"

puts "array2 elements with length > 5:"
long names = array2.find_all{|i| i.length>5}
puts long_names
print "\n"

#adam's way
stack = []

array2.shuffle.each do |name|
	stack << name if name.length > 5
end

# Create an array that contains all 26 letters in the alphabet (this array must have 26 values). 
# Shuffle the array and display the last letter of the array. Have it also display the first letter of the array. 
# If the first letter in the array is a vowel, have it display a message
array3=('a'..'z').to_a.shuffle

#another way is just concatenate with .first or .last

puts array3[25]
puts array3[0]
if (array3[0] = 'a' || array3[0] = 'e' || array3[0] = 'i'|| array3[0] = 'o'|| array3[0] = 'u')
	puts "the first letter of the array is a vowel"
else
	puts array[0]
end

#with an alternate array eifntion
char = ('a'..'z').to_a.shuffle.first
puts char if %w(a e i o u).include? char
# any method with ? returns a boolean


#another method with regex
puts "a message" if /[aeiou]/ =~ array.first


# Generate an array with 10 random numbers between 55-100

array4=Array.new([55+rand(45)])
print array4

puts "and now let's populate the array..."

for i in 0..8
	array4.push(55+rand(45))
end

print array4

#adam's way
array = (55..100).to_a.sample(10)

#trey
rand_nums = Array.new(10).maps {|num| num = rand(55..100)}.sort


#a customized sort
rand_nums = Array.new(10).maps {|num| num = rand(55..100)}.sort_by{|a| -a}


# Generate an array with 10 random numbers between 55-100 and have it be sorted 
# (showing the smallest number in the beginning). 
# Display all the numbers in the arrays. Next, display the minimum value in the array as well as the maximum value.

puts array4.sort

puts array4.min 

puts array4.max


# Create a random string that is 5 characters long (hint: (65+rand(26)).chr returns a random character; 
# use a map function and a range to do this).

string = (0..4).map {|num| num = (65 + rand(26)).chr}.join

puts string



# Generate an array with 10 random strings that are each 5 characters long

array_of_strings = Array.new(10).map {|num} num = (0..4).map {|num| num = (65 + rand(26)).chr}.join}
