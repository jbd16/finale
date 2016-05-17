class Product < ActiveRecord::Base
	has_many :orders
	
	def average_rating
		comments.averages(:rating).to_f
	end

end
