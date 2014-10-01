class Student
	# attr_accessor :name
	# attr_accessor :dojo_location
	# attr_accessor :belt_level

	def initialize (name,dojo_location,belt_level)
		@name = name
		@dojo_location = dojo_location
		@belt_level = belt_level
	end

	#setter method
	def name=(name)
		@name = name
	end

	#getter method. Ruby has implicit returns
	def name
		@name
	end
end

alvaro = Student.new('Alvaro',"Seattle",'black')

puts alvaro.name

alvaro.name='alberto'

puts alvaro.name