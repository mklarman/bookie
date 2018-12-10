module WelcomeHelper

	def sum_pending

		current_user.wagers.each do |w|

			if w.date == @my_date

				@pending_action = @pending_action + w.amount.to_i

			end

		end

	end

	def get_leagues

		current_user.secrets.each do |s|

			@secrets_cont.push(s.pass) unless @secrets_cont.include?(s.pass)

		end

	end
end
