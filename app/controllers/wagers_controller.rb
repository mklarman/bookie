class WagersController < ApplicationController

	def new

		@wager = Wager.new
		@teams = Team.all



	end

	def create

		user = current_user
		wager = Wager.new(wager_params)
		user.id = wager.user_id

		if wager.save
			
			redirect_back(fallback_location: clients_path)
		
		else

			render new_wager_path

		end
	


	end

	def edit

		@wager = Wager.find_by_id(params[:id])
		@client = Client.find_by_id(params[:id])
		@team = Team.find_by_id(params[:id])

	end

	def update

		@wager = Wager.find_by_id(params[:id])
		@wager.user_id = current_user.id

		if @wager.update(wager_params)

			redirect_to users_sportsbook_path

		else

			render clients_path

		end


	end

	



private

def wager_params

	params.require(:wager).permit(:user_id, :client_id, :wager_type, :amount, :team1, :team2, :team3, :team4, :team5, :spread1, :spread2, :spread3, :spread4, :spread5, :date, :net_result, :user_bankroll, :client_bankroll, :outcome, :graded)

end

end

