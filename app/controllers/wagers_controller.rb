class WagersController < ApplicationController

	def new

		@wager = Wager.new
		require "date"


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






private

def wager_params

	params.require(:wager).permit(:user_id, :client_id, :wager_type, :amount, :team1, :team2, :team3, :team4, :team5, :spread1, :spread2, :spread3, :spread4, :spread5, :date, :net_result, :user_bankroll, :client_bankroll, :outcome, :graded)

end

end

