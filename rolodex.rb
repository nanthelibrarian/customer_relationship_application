class Rolodex
	def initialize
		@id = 1000
		@contacts = [] #this is an empty array where I can store my contacts
		add_contact(Contact.new("Nancy", "Wood", "nancywood13@gmail.com", "blah blah blah"))
		add_contact(Contact.new("Mike", "Wood", "nancywood13@gmail.com", "blah blah blah"))
		add_contact(Contact.new("Shumayel", "Wood", "nancywood13@gmail.com", "blah blah blah"))
		add_contact(Contact.new("Angela", "Wood", "nancywood13@gmail.com", "blah blah blah"))
		add_contact(Contact.new("Paul", "Wood", "nancywood13@gmail.com", "blah blah blah"))
		add_contact(Contact.new("Michael", "Wood", "nancywood13@gmail.com", "blah blah blah"))

	end

	def add_contact(contact)
		contact.id = @id
		@id += 1

		@contacts << contact 
	end

	def all
		@contacts
	end

	def find_user(id)
		@contacts.select do |contact|  
			id == contact.id 
		end 
	end

	def edit_contact(new_value, input_option, contact)
		if input_option == "first_name"
			contact.first_name = new_value
		elsif input_option == "last_name"
			contact.last_name = new_value
		elsif input_option == "email"
			contact.email = new_value
		elsif input_option == "notes"
			contact.notes = contact.notes + new_value
		else
			puts "Invalid option"
		end			
	end 

end