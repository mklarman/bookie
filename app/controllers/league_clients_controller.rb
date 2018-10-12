class LeagueClientsController < ApplicationController

	def new

		@league_client = LeagueClient.new
		@leagues = League.all


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

	def show

		@client = LeagueClient.find_by_id(params[:id])
		@wager = LeagueWager.new
		@clients = LeagueClient.all

	end

	def edit

		@client = LeagueClient.find_by_id(params[:id])
		@leagues = League.all


	end

	def update

		@client = LeagueClient.find_by_id(params[:id])
		@league_id = @client.league_id

		if @client.update(league_client_params)

			redirect_to league_path(@league_id) 
		else

			render users_sportsbook_path

		end


	end


	private

	def league_client_params

		params.require(:league_client).permit(:user_id, :league_id, :league_name, :stakes, :bet_types, :sports, :wager_limit)

	end
end
