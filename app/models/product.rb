class Product < ActiveRecord::Base
	has_many :orders
	
	def average_rating
		comments.averages(:rating).to_f
	end

	validates :name, presence: true
	  validates :user, presence: true
	  validates :product, presence: true
	  validates :rating, numericality: { only_integer: true}

end
