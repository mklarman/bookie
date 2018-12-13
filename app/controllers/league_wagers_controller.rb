class LeagueWagersController < ApplicationController

	def new

		@league_wager = LeagueWager.new
		@teams = Team.all
		@team = Team.where(display: "on")
		@league_clients = LeagueClient.all



	end

	def create

		league_wager = LeagueWager.new(league_wager_params)
		league_wager.user_id = current_user.id
		

		if league_wager.save!
			
			redirect_back(fallback_location: leagues_path)
		
		else

			redirect_to leagues_path

		end
	


	end

	def show

		@users = User.all
		@wager = LeagueWager.find_by_id(params[:id])

	end

	def edit

		@wager = LeagueWager.find_by_id(params[:id])
		@teams = Team.all

	end

	def update

		@wager = LeagueWager.find_by_id(params[:id])
		@wager.user_id = current_user.id

		@edit_id = [] 

 		current_user.league_wagers.each do |w|

 			if w.league_id == @wager.league_id	

				if w.graded == false && w.date != @my_date 

					@edit_id.push(w.id)


				end 

			end



 		end 

 		@edit_id.delete(@wager.id) 
					

		if @wager.update(league_wager_params)

			if @edit_id.length > 0

				redirect_to edit_league_wager_path(@edit_id[0])

			else

				redirect_to league_path(@wager.league_id)

			end

		else

			render league_path(@wager.league_id)

		end


	end

	



private

def league_wager_params

	params.require(:league_wager).permit(:user_id, :league_client_id, :league_id, :wager_type, :amount, :team1, :team2, :team3, :team4, :team5, :spread1, :spread2, :spread3, :spread4, :spread5, :date, :net_result, :outcome, :graded)

end
end
