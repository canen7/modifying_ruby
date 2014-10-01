# Puts, Variables, Operators, If/else, loops

puts 'hello'
puts 'hello', 'coding dojo'
puts 'hello' + 'coding dojo'

name = 'coding dojo'

puts name + 'is my variable name'

puts "my name is %s" %name

name2='devbootcamp'

puts "our names are %s and %s" %[name,name2]

d1=3
d2=8

puts "%d + %d = %d" %[d1,d2,d1*d2]

puts "I am 6'2\" tall"
puts 'I am 6\'2" tall'

puts "line1\nline2"
puts "\tline1"

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

branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA") 
branch.displayAll 
branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA") 
branch2.displayAll

a=1
b=2
c=3

puts a+b
puts a-b
puts a*b
puts a%b

puts a==b
puts a!=b
puts a>b

d=1


puts a.equal? d
puts a.equal? b

obj='a'
other = obj.dup

puts obj
puts other

puts obj == other
puts obj.equal?other
puts obj.eql?other

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

for x in (0..9) do
	puts x
end

