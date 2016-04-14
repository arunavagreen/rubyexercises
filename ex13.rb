class Customer

	def initialize(customer)
		@customer = customer
	end
	
	def print_customer_details()
	    puts "Customer details:"
	    puts "Name: #{@customer['name']}"
	    puts "Starsign: #{@customer['starsign']}"	
	    puts "Age: #{@customer['age']}"
	    puts "=" * 15

	end
end

pedro = Customer.new({"name" => "Pedro", "starsign" => "Aries", "age" => "26"})

pedro.print_customer_details()

John = Customer.new({"name" => "John", "starsign" => "Virgo", "age" => "26"})

John.print_customer_details()
