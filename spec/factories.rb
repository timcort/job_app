FactoryGirl.define do 
	factory :user do
		username "example"
		email "example@example.com"
		password "foobar"
		password_confirmation "foobar"
	end
end