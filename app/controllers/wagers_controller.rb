class WagersController < ApplicationController

	def new

		@wager = Wager.new
		@teams = Team.all
		@team = Team.where(display: "on")



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
		@teams = Team.all

	end

	def update

		@wager = Wager.find_by_id(params[:id])
		@wager.user_id = current_user.id

		@edit_id = [] 

 		current_user.clients.each do |c|

		 	c.wagers.each do |w| 

				if w.graded == false && w.date != @my_date 

					@edit_id.push(w.id)


				end


			end 



 		end 

 		@edit_id.delete(@wager.id) 
					

		if @wager.update(wager_params)

			if @edit_id.length > 0

				redirect_to edit_wager_path(@edit_id[0])

			end

			if @edit_id.length == 0

				redirect_to users_sportsbook_path

			end

		else

			render clients_path

		end


	end

	



private

def wager_params

	params.require(:wager).permit(:user_id, :client_id, :wager_type, :amount, :team1, :team2, :team3, :team4, :team5, :spread1, :spread2, :spread3, :spread4, :spread5, :date, :net_result, :user_bankroll, :client_bankroll, :outcome, :graded, :serial_num)

end

end

