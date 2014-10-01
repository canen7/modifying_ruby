a = {:first_name => "Michael", :last_name => "Choi"}
b = {:first_name => "John", :last_name => "Supsupin"}
c = {:first_name => "KB", :last_name => "Tonel"}
d = {:first_name => "Mikee", :last_name => "Buyco"}
e = {:first_name => "Diana", :last_name => "Manlulu"}
names = [a, b, c, d, e]

# Create a ruby script that goes over each name in the names array and prints something like below.

# You got 5 names in the 'names' array
# The name is 'Michael Choi'
# The name is 'John Supsupin'
# The name is 'KB Tonel'
# ...

puts "You got 5 names in the 'names' array"
for i in (0..4)
	puts "The name #{i+1} is #{names[i][:first_name]} #{names[i][:last_name]}"
end	