class CRM
	def initialize(name)
		@name = name 
		puts "This CRM is named " + name 
	end

	def print_main_menu
		# puts "Welcome to #{@name}"
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
	end

	def call_option(user_input)
		add_contact if user_input == 1
		edit_contact if user_input == 2
		display_all_contacts if user_input == 3
		display_attribute if user_input == 4
		delete_contact if user_input == 5
		exit if user_input == 6
		puts "Invalid option." if user_input != [1, 2, 3, 4, 5, 6]
	end
end 


wood_crm_app = CRM.new("Nancy's CRM")
wood_crm_app.print_main_menu




