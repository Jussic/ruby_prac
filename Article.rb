class Article 
	attr_accessor:id, :price, :quantity 
	def initialize (id, price, quantity)
		@id, @price, @quantity = id, Float(price), quantity.to_i 
	end
end 

class Order 
	def initialize(name)
		@a, i = [], 0
		input = File.open(name, "r")
		while(id = input.gets.chomp)
			j, found = 0, false 
			price = input.gets.chomp
			while ((j<@a.length)&&!found)
			if (@a[j].id.eql?(id.to_i))
				@a[j].quantity += 1 
				found = true
		end 
	end
		if !found
			@a[i] = new Article(id,price,1)
			i += 1 
		end 
	end
end 

def orderCosts(first, *rest)
	rest.reduce(first) { |o, x| o + x}
end 

	def orderCost 
		sum = 0 
		@a.each { |e| sum += e.price * e.quantity } end 
b
		sum = sum * 1.07 + 2.99
	end 
	
	def displaySelectArticles 
		min, max, sum, q = @a[0], @a[0], 0, 0
		@a.each {|e| if(min.cost > e.cost) min=e} end
		@a.each {|e| if(max.cost < e.cost) max=e} end 
			sum += e.cost*e.quantity
			q += e.quantity 
		end 
		puts "the min cost is: #{min.cost}"
		puts "the min cost is: #{max.cost}"
		puts "the min cost is: #{Float(sum) /q}"
	end
end
