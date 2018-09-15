class TeamsController < ApplicationController
	
	def index

		@teams = Team.all


	end
	

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

		params.require(:team).permit(:date, :name, :sport, :spread, :opp, :total, :start_time, :home_line, :opp_line, :over_line, :under_line, :score, :opp_score, :total_points, :spread_result, :total_result, :display, :money_line)

	end




end




