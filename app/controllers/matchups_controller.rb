class MatchupsController < ApplicationController

	def index

		@matchup = Matchup.all

	end

	def new

		@matchup = Matchup.new
	end

	def create

		user = current_user
		matchup = Matchup.new(matchup_params)
		

		if matchup.save
			
			redirect_back(fallback_location: clients_path)
		
		else

			render new_clients_path

		end


	end

	def index

		@matchup = Matchup.all

	end

	private

	def matchup_params

		params.require(:matchup).permit(:date, :start_time, :sport, :fav, :dog, :fav_line, :dog_line, :total_points, :fav_score, :dog_score)

	end
end


