class LeagueClient < ApplicationRecord

	belongs_to :user
	belongs_to :league
	has_many :league_wagers

end
