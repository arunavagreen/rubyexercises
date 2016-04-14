class Customer

	def initialize(customer)
		@customer = customer
  end
# this initializes a Customer class


  

    def print_customer_details

      #puts "Id: #{@customer['id']}"
      puts "Name: #{@customer['name']}"
      puts "Address: #{@customer['address']}"
      puts "Phone number: #{@customer['phonenumber']}"
      puts "Email address: #{@customer['email']}"
      puts "Bank balance: #{@customer['balance']}"
      puts "=" * 15
    end

    def delete_customer
      which_customer['name'] = ' '
       which_customer['address'] = ' '
       which_customer['phonenumber'] = ' '
       which_customer['email'] = ' '
       which_customer['balance'] = ' '
     end


     
    def save_to_file()
         filename = 'customers.csv'
         customer_file = open('customers.csv', 'a')

         my_arr = []

         @customer.each do |key, value|
          my_arr.push(value)
         end


         customer_file.write(my_arr.join(','))
         customer_file.write("\n")
         customer_file.close
        
        puts "Customer saved with details"

        @customer.each do |key, value|
          puts key + ":" + " " + value
         end

    end

end

    def draw_lines
     puts "=" * 10
    end

   def draw_menu


   puts "Welcome to Super Bank"
   draw_lines
   puts "What would you like to do?"
   draw_lines

   puts "1. Add a customer"
   puts "2. Remove a customer"
   puts "3. Edit a customer"
   puts "4.  Make a deposit"
   puts "5. Make a withdrawal"
   puts "6. Display customer details"
   puts "7. exit"

  end
   
   while true

    draw_menu

    answer = gets.chomp

    if answer == "1"

      puts "What is the name of the customer?"
      customer_name = gets.chomp
      puts "What is the address of the customer?"
      customer_address = gets.chomp
      puts "What is the phone number of the customer?"
      customer_phone = gets.chomp
      puts "What is the customer's email"
      customer_email = gets.chomp
      puts "What is the bank balance of the customer?"
      customer_balance = gets.chomp

      new_customer = Customer.new({
        "name" =>customer_name, 
        "address" => customer_address,
        "phonenumber" => customer_phone, 
        "email" =>customer_email, 
        "balance" => customer_balance,
        "age" => "21"
        })

      # more questions to be added


      new_customer.print_customer_details
      new_customer.save_to_file

      

      # add customer method

    elsif answer == "2"
    #remove customer
      


    puts "Which customer would you like to update - input name?"
    print "> "
    which_customer = gets.chomp.to_i
    
    print "> "
    
    customers[which_customer - 1].delete_customer
    puts "Customer deleted!"
    puts customers[which_customer - 1].print_customer_details()


      #delete_customer

    elsif answer == "3" 
    #edit a customer

    elsif answer == "7"

    break

    end

   end

    




  

