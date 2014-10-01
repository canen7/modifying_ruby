class Fixnum
  def double
    self*2
  end
  def prev
  	self-1
  end
  def skip
  	self + 1 + 1
  end
end


class String
 	def rev_original
		#self.split("")
		x=""
		for i in (0..self.length-1)
			x = x + self.split("")[self.length-1-i]
		end
		x
	end

	def rev_original!
		x=""
		for i in (0..self.length-1)
			x = x + self.split("")[self.length-1-i]
		end
		self = x
	end
end

y1 ="michael"

puts y1	.rev_original

puts y1

y2 = "michael"

# puts y2.rev_original!

# puts y2





# 	def rev_original!
# end
# puts 2.double, 4.double, 4.double.double

# puts 4.skip

# x="Dojo"
# y=x
# z=x
# x.reverse_original!

# puts y,z,x

# x = "alvaro"

# print x.split("")