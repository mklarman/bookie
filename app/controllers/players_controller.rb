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

	private

	def player_params

	params.require(:player).permit(:name, :sport, :rating)

	end
end
