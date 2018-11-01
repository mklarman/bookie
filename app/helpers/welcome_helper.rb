module WelcomeHelper

	def sum_pending

		current_user.wagers.each do |w|

			if w.date == @my_date

				@pending_action = @pending_action + w.amount.to_i

			end

		end

	end

	def get_leagues

		current_user.league_wagers.each do |w|

			@id_holder.push(w.league_id) unless @id_holder.include? (w.league_id)

		end

	end
end
