class LeagueClientsController < ApplicationController

	def new

		@league_client = LeagueClient.new


	end


	def create

		user = current_user
		league_client = LeagueClient.new(league_client_params)
		user.id = client.user_id

		if league_client.save
			
			redirect_back(fallback_location: clients_path)
		
		else

			render new_league_client_path

		end


	end

	private

	def league_client_params

		params.require(:league_client).permit(:league_name, :stakes, :bet_types, :sports, :wager_limit)

	end
end
