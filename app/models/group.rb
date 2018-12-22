class Group < ApplicationRecord

	belongs_to :pool
	has_many :selections
	
end
