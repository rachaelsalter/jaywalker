class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :place

	RATINGS = {
		'one star' => '1_star',
		'two stars' => 'two_stars',
		'three stars' => 'three_stars',
		'four stars' => 'four_stars',
		'five stars' => 'five_stars'
	}

	def humanized_rating
		RATINGS.invert[self.rating]
	end 
end 