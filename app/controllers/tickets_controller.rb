class TicketsController < ApplicationController

	def new
		
		@ticket = Ticket.new

	end

	def create

		ticket = Ticket.new(ticket_params)

		if ticket.save

			redirect_to players_path

		else

			redirect_back(fallback_location: players_path)

		end

	end

	def index

		@tickets = Ticket.all

	end

	private

	def ticket_params

		params.require(:ticket).permit(:date, :player_id, :name, :rating, :sport, :def_rating, :pitcher, :score)

	end
end
