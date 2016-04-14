class Customer

	def initialize(customer)
		@customer = customer
    end

    def print_customer_details

      puts "Name: #{@customer['name']}"
      puts "Starsign: #{@customer['starsign']}"
      puts "Age: #{@customer['age']}"
      puts "=" * 15
  end


       def update_customer_name(new_name)
       	@customer['name'] = new_name
       end



end


puts "Welcome to MyBank!"
puts "Would you like to add a new customer? y/n"
response = gets.chomp
if response =='y'
	puts "What is the customer's name?"
	name = gets.chomp
	puts "What  is the customer's starsign?"
	starsign = gets.chomp
	puts "What is the customer's age?"
    age = gets.chomp
    new_customer = Customer.new({"name" =>name, "starsign" =>starsign, "age" =>age})
    new_customer.print_customer_details
   end 

puts "Would you like to change customer's name? y/n"
response = gets.chomp
 if response =='y'
 	# puts "What is the name of the customer?"
 	# name = gets.chomp
 	puts "What is the new name?"
 	new_name = gets.chomp
 	# new_name = Customer.new({"name" => new_name, "starsign" =>starsign, "age" =>age})
 	new_customer.update_customer_name(new_name)
 	new_customer.print_customer_details
 end