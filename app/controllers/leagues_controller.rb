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

		@leagues = League.all

	end

	def show

		@league = League.find_by_id(params[:id])


	end

	private

	def league_params

	params.require(:league).permit(:pass, :clients, :league_name, :status)

	end
end
