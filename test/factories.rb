 FactoryGirl.define do 

 	factory :comment do 
 		message "Great!"
 		rating "five_stars"
 		association :user
 		association :place
 	end
 
	factory :place do
		name "The Best Winery"
		address "123 Main St Newark, DE 19702"
		latitude(42.3631519)
		longitude(-71.056098)
		description "The best since 1999"
		association :user
    end

	factory :user do
		sequence :email do |n|
			"rasalter#{n}@gmail.com"
	    end
        password "ohreally"
        password_confirmation "ohreally"
	end
end