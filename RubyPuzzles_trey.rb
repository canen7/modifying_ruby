numbers = [3,5,1,2,7,9,8,13,25,32]

#first way
sum=0
numbers.each {|a| sum +=a}
puts sum

#second 
sum = numbers.inject(:+)
puts sum