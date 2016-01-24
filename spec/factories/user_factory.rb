FactoryGirl.define do 
	sequence(:email) { |n| "user#{n}@example.com" }
	factory :user do
		email 
		password "1234567890"
		first_name "Joe"
		last_name "Bloggs"
		admin false
	end

	factory :usertwo do
		email 
		password "lmnopqrst"
		first_name "Sample"
		last_name "Customer"
		admin false
	end

	factory :admin, class: User do
		email
		password "qwertyuiop"
		admin true
		first_name "Admin"
		last_name "User"
	end

end
