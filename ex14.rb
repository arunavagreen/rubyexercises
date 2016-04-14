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

def update_customer_name(new_name)
	@customer['name'] = new_name
	
     end

puts "Do you want to update customer name? > Yes or No"
     update = gets.chomp
     if update == "Yes"
     	puts "Which customer do you want to update? 1 or 2"
     	customer_number == gets.chomp
     	# put customer names in array




end

pedro = Customer.new({"name" => "Pedro", "starsign" => "Aries", "age" => "26"})

pedro.print_customer_details()

John = Customer.new({"name" => "John", "starsign" => "Virgo", "age" => "26"})

John.print_customer_details()

customer_number = ['pedro', 'John']



