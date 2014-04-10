# Using the symbol ':user' allows factory_girl to simulate the User model

FactoryGirl.define do
	factory :user do
		user.name			"Jay Compton"
		user.email			"boost09@gmail.com"
		user.password			"foobar"
		user.password_confirmation	"foobar"
	end
end
