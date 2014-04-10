# Using the symbol ':user' allows factory_girl to simulate the User model

Factory.define :user do |user|
  user.name			"Jay Compton"
  user.email			"boost09@gmail.com"
  user.password			"foobar"
  user.password_confirmation	"foobar"
end
