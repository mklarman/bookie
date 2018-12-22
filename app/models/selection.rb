class Selection < ApplicationRecord

	belongs_to :pool
	belongs_to :user
	belongs_to :group
	
end
