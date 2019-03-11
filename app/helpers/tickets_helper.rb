module TicketsHelper

	def sort_tickets

		Ticket.all.each do |t|

			if t.sport == "NFL"

				@nfl_tick.push(t)


			end

			if t.sport == "NBA"

				@nba_tick.push(t)


			end

			if t.sport == "MLB"

				@mlb_tick.push(t)

			end


		end


	end
end
