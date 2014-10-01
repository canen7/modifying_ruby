# just to show we can create an objet wo initialize...but we can not pass info to the object
class Animal
	
	#this automatically writes the setter and getter, usually no parenthesis are use, they're optional
	attr_accessor (:name, :age)

	#as checked before (comment line 1) this is not strictly required
	def initialize (name,age) 
		puts "in the animal initialize"
		@name = name
		@age = name

	# #setter method
	# def name=(name)
	# 	@name = name
	# end

	# #getter method. Ruby has implicit returns
	# def name
	# 	@name
	# end

	def say_hi
		puts 'saying hi'
	end
end

#if I want to extend the class
class Owl < Animal
	attr_accessor :breed
	def initialize (name,age, breed)
		#the keyword super call the methdo of the same name in the parent class!
		super(name,age) #in php it was parent::__construct
		@breed = breed

end


trey = Owl.new('Carlos',24)

puts trey.name