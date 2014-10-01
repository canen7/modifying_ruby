class CodingDojo 

# this is a class variable, availablefor all the functions but also for all instances, that is 
  @@no_of_branches = 0 
  def initialize(id, name, address) 
   # the @ indicates an instant variable,available locally 
    @branch_id = id 
    @branch_name = name 
    @branch_address = address 
    @@no_of_branches += 1 
    puts "\nCreated branch #{@@no_of_branches}" 
  end 
  
  def hello 
    puts "Hello CodingDojo!" 
  end 
  
  def displayAll 
    puts "Branch ID: %d" % @branch_id 
    puts "Branch Name: %s" % @branch_name 
    puts "Branch Address: %s" % @branch_address 
  end 

end 

def myMethod param1, param2
	puts param1, param2
end

myMethod('hello', 'world')

hugo = [4, 5, 6]

#this is using the .each iterator on an array and passing a block
# string interpolation with #{} and it must in double quotes - no single quotes!
# you can also put "n is " + n.to_s
hugo.each{|n| puts "n is #{n}"}

hugo.each_with_index {|i,v| puts "index is: #{i}, value is: #{v}"}

# a range is a class (a..b)
for x in (0..9) do
	puts x
end

#... instead of .. gets everything except that
('A'...'Z').each {|x| puts x}

puts 'separation'

#turn to an array, chanining
letters_array = ('a'..'z').to_a.last.upcase
letters_array2 = ('a'..'z').to_a.shuffle[5].upcase

# print is better for array, with "prints"we can not see it is an array 
print letters_array
print letters_array2

myhash = {name:'Trey', :interests => ['golf','bacon']}

#hashes use symbols!! kind of 'string-lite'


myhash[:interests].each {|interest| puts "#{myhash[:name]} likes #{interest}" }

if 4>3
	puts "hallelujah"
elsif 4>2
	puts "woah"
else
	#else case
end

puts "this is awesome" if 5 > 2

# unless is cleaner than if !(condition)
puts "this is awesome" unless 5>2

# now using above class to create objects 
branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
branch.displayAll 
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
branch2.displayAll