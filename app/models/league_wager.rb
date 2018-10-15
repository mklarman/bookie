class LeagueWager < ApplicationRecord

	belongs_to :user
	belongs_to :league
	belongs_to :league_client

end
