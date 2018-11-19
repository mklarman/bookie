class Pool < ApplicationRecord
	
	has_many :groups
	has_many :selections
end
