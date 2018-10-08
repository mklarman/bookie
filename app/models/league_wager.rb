class LeagueWager < ApplicationRecord

	belongs to :league
	belongs to :user
	belongs to :league_client
end
