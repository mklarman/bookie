class LeagueClientsController < ApplicationController

	def new

		@league_client = LeagueClient.new


	end


	def create

		league_client = LeagueClient.new(league_client_params)
		league_client.user_id = current_user.id

		if league_client.save
			
			redirect_back(fallback_location: clients_path)
		
		else

			render new_league_client_path

		end


	end

	private

	def league_client_params

		params.require(:league_client).permit(:user_id, :league_id, :league_name, :stakes, :bet_types, :sports, :wager_limit)

	end
end
