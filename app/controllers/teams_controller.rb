class TeamsController < ApplicationController
	

	def new

		@team = Team.new


	end

	def create

		team = Team.new(team_params)
		

		if team.save
			
			redirect_back(fallback_location: clients_path)
		
		else

			render users_sportsbook_path

		end


	end

	def edit
	
	@team = Team.find_by_id(params[:id])

	end


	def update

		@team = Team.find_by_id(params[:id])

		if @team.update(team_params)

			redirect_back(fallback_location: new_team_path)
		else

			render users_sportsbook_path

		end


	end

	private

	def team_params

		params.require(:team).permit(:date, :name, :sport, :spread, :total, :spread_result, :two_team_teaser_result, :three_team_teaser_result, :five_team_teaser_result)

	end




end


