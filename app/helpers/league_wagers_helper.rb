module LeagueWagersHelper

	def get_league_info

		league_id = @wager.league_id.to_i
		client_id = @wager.league_client_id

		League.all.each do |l|

			if league_id == l.id

				@league_name = l.league_name

			end


		end

		LeagueClient.all.each do |c|

			if c.id == client_id.to_i

				@client_name = c.league_name

			end


		end


	end

	


end
