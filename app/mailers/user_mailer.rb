class UserMailer < ApplicationMailer
default from: "from@example.com"

def contact_form(email, name, message)
	@message = messasge
	mail(:from => email,
		:to => 'your-email@example.com',
		:subject => "A new contact form message from #{name}")
end

def welcome(user)
	@appname = "Bike Shop"
	mail( :to => user.email,
		  :subject => "Welcome to #{@appname}!")
end


end