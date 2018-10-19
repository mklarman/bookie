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

		@league_wager = LeagueWager.find_by_id(params[:id])
		@league_client = LeagueClient.find_by_id(params[:id])
		@team = Team.find_by_id(params[:id])
		@teams = Team.all

	end

	def update

		@league_wager = LeagueWager.find_by_id(params[:id])
		@league_wager.user_id = current_user.id

		@edit_id = [] 

 		current_user.league_wagers.each do |w|

 			if w.id == @league_wager.league_id	

				if w.graded == false && w.date != @my_date 

					@edit_id.push(w.id)


				end 

			end



 		end 

 		@edit_id.delete(@league_wager.id) 
					

		if @league_wager.update(league_wager_params)

			if @edit_id.length > 0

				redirect_to edit_league_wager_path(@edit_id[0])

			end

			if @edit_id.length == 0

				redirect_to league_path(@league_wager.league_id)

			end

		else

			render new_league_wager_path

		end


	end

	



private

def league_wager_params

	params.require(:league_wager).permit(:user_id, :league_client_id, :league_id, :wager_type, :amount, :team1, :team2, :team3, :team4, :team5, :spread1, :spread2, :spread3, :spread4, :spread5, :date, :net_result, :outcome, :graded)

end
end
