class Article 
	attr_accessor:id, :price, :quantity 
	def initialize (id, price, quantity)
		@id = id
		@price = Float(price)
		@quantity = quantity.to_i 
	end
end 

class Order 
	def initialize(name)
		@a = []
		i = 0 
		input = File.open(name, "r")
		while(id = input.gets.chomp)
			j=0
			found = false 
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

	def orderCost 
		sum = 0 
		@a.each do |e|
			sum += e.price * e.quantity 
		end 
		sum = sum * 1.07 + 2.99
	end 
	
	def displaySelectArticles 
		min = @a[0]
		max = @a[0]
		sum = 0 
		q = 0 
		
		@a.each do |e|
			if(min.cost > e.cost)
				min = e 
			end
			if (max.cost < e.cost)
				max = e 
			end 
			
			sum += e.cost*e.quantity
			q += e.quantity 
		end 
		puts "the min cost is: #{min.cost}"
		puts "the min cost is: #{max.cost}"
		puts "the min cost is: #{Float(sum) /q}"
	end
end 

Art = Article.new(001, 45.00, 2)
