# Using the symbol ':user' allows factory_girl to simulate the User model

FactoryGirl.define do
	factory :user do
		name			"Jay Compton"
		email			"boost09@gmail.com"
		password		"foobar"
		password_confirmation	"foobar"
	end
end
