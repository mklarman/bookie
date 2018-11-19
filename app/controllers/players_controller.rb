class PlayersController < ApplicationController


	def new
		
		@player = Player.new

	end

	def create

		player = Player.new(player_params)

		if player.save

			redirect_to players_path

		else

			redirect_back(fallback_location: players_path)

		end

	end

	def index

		@players = Player.all

	end

	def edit

		@player = Player.find_by_id(params[:id])
		@ticket = Ticket.new 

	end

	private

	def player_params

	params.require(:player).permit(:name, :sport, :rating)

	end

	def ticket_params

		params.require(:ticket).permit(:date, :player_id, :name, :rating, :sport, :def_rating, :pitcher, :score)

	end
end
