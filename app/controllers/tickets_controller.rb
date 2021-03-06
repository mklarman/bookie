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

	def edit

		@ticket = Ticket.find_by_id(params[:id])

	end

	def index

		@tickets = Ticket.all

	end

	def update

		@ticket = Ticket.find_by_id(params[:id])

		if @ticket.update(ticket_params)

			redirect_to tickets_path
		else

			redirect_back(fallback_location: new_team_path)

		end

	end

	private

	def ticket_params

		params.require(:ticket).permit(:date, :player_id, :name, :rating, :sport, :score, :updated, :started)

	end
end
