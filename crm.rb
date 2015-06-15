require_relative('contact.rb')
require_relative('rolodex.rb')

class CRM
	def initialize(name)
		@name = name 
		puts "This CRM is named " + name 
		@rolodex = Rolodex.new
	end

	def print_main_menu
		puts "Welcome to #{@name}"
		puts "[1] Add a contact"
		puts "[2] Modify a contact"
		puts "[3] Display all contacts"
		puts "[4] Display an attribute"
		puts "[5] Delete a contact"
		puts "[6] Exit"
		puts "Select an option:"
	end

	def main_menu
		print_main_menu 
		user_input = gets.chomp.to_i
		call_option(user_input)
		main_menu
	end

	def call_option(user_input)
		add_contact if user_input == 1
		edit_contact if user_input == 2
		display_all_contacts if user_input == 3
		display_attribute if user_input == 4
		delete_contact if user_input == 5
		exit if user_input == 6
		puts "Invalid option." if user_input > 6 or user_input < 1 
	end

	def add_contact
		puts "Adding a Contact"
		puts "Enter first name: "
		first_name = gets.chomp 
		puts "Enter last name: "
		last_name = gets.chomp
		puts "Enter email: "
		email = gets.chomp
		puts "Enter notes: "
		notes = gets.chomp 
		contact = Contact.new(first_name, last_name, email, notes)
		@rolodex.add_contact(contact)
	end 

	# def edit_contact
	# 	puts "Enter first name: "
	# 	first_name = gets.chomp


	# end 

	def display_all_contacts 
		@rolodex.all.each do |contact|
			puts "contact ID: #{contact.id}, #{contact.first_name} #{contact.last_name} #{contact.email} #{contact.notes}" 
		end
	end

	def edit_contact
		puts "Editing a Contact"
		puts "Enter id: "
		id = gets.chomp.to_i

		user = @rolodex.find_user(id)
		contact = user[0]

		puts "You have selected to edit #{id}"
		puts "Please confirm [Y or N]: "
		input = gets.chomp

		if input.upcase == "Y"
			puts "What would like to edit?"
			input_option = gets.chomp

			puts "Enter new value: "
			new_value = gets.chomp

			@rolodex.edit_contact(new_value, input_option, contact)

			if input.upcase == "N"
				return 
			else
				puts "Invalid option"
			end
		end
	end
end 


wood_crm_app = CRM.new("Nancy's CRM")
wood_crm_app.main_menu




