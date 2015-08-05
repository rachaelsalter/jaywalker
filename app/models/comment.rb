class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :place
	after_create :send_comment_email

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

	def send_comment_email
		NotificationMailer.comment_added(self).deliver
	end

end 