class League < ApplicationRecord
	has_many :league_clients
	has_many :league_wagers
end
