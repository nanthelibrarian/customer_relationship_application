class Contact
	attr_accessor :id, :first_name, :last_name, :email, :notes

	def initialize(first_name, last_name, email, notes)
		@first_name = first_name.capitalize
		@last_name = last_name.capitalize
		@email = email
		@notes = notes
	end	

	def to_s
		"#{first_name}, #{last_name}, #{email}, #{notes}"
	end
end

# new_contact = Contact.new("Mina", "Mikhail", "Mina@bitmakerlabs.com", "great instructor")
