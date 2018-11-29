class LeaguesController < ApplicationController

	def new

		@league = League.new
		
	end

	def create

		league = League.new(league_params)

		if league.save
			
			redirect_to leagues_path
		
		else

			render new_league_path

		end
	


	end

	def index


		@secret = Secret.new

		@leagues = League.all



	end

	def show

		@league = League.find_by_id(params[:id])
		@client = LeagueClient.new
		@league_id = @league.id
		@users = User.all



	end

	

	private

	def league_params

	params.require(:league).permit(:pass, :clients, :league_name, :status, :end_date)

	end

	def league_client_params

		params.require(:league_client).permit(:user_id, :league_id, :league_name, :stakes, :bet_types, :sports, :wager_limit)

	end

	def secret_params

		params.require(:secret).permit(:pass, :date, :user_id)

	end
end
