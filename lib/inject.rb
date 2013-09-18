class Array

	def injectt(initial_value=self.shift)
		memo = initial_value 
		self.each do |value| 
		memo = yield(memo, value)
		end
		memo
	end

end

x = [1,2,3,4].injectt(2) {|memo, value| memo * value}
p x

# calling this method "injectt" because redefining inject will
# screw up RSpec. So can call it something else or not in the
# Array class


# trial and error below!!!


	# def irritating
	# 	acc = [ ]
	# 	i = 0
	# 	for i in self[i..-1]
	# 	p = Proc.new {|elem| acc << (elem[i] + elem[i+1])}
	# 	self.each(&p) 
	# 	acc
	# end

	# def ingect
	# 	return first if new_self.length == 1
	# 	first, *new_self = self
	# 	first * new_self[0]
	# 	ingect
	# end
	



# 	def injectt 
# 		# array = [1,2,3]
# 		# accum = [ ]
# 		# loop do
# 		# 	break if array.empty?
# 		# 	accum << (array[0] + array[1]
# 		# end
# 		# accum

# 		return self.pop if self.length == 1
# 		self.each {|elem| memo << elem} 
# 		memo << yield(memo)
		
# 		memo
# 	end
# p injectt
# end

#a = [1,2,3,4].injectt {|memo, elem| memo + elem}
#puts a.inspect





# class Array
# 	def insect(array)
# 		return array.pop if array.length == 1
# 			array.first(2).each do |elem|
# 			array.unshift(yield(elem))
# 			array.delete_at(1)
# 			array.delete_at(2)

# 			end
# 	end
# end

# a = Array.new

# a.insect([1,2,3,4]) do |elem|
# 	elem + elem
# end

# p a






