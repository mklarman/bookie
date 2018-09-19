module WelcomeHelper

	def sum_pending

		current_user.wagers.each do |w|

			if w.date == @my_date

				@pending_action = @pending_action + w.amount.to_i

			end

		end

	end
end
