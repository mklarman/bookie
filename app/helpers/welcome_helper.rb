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

	def sort_selections

		if @pool.groups.count != 0

			@pool.groups.each do |g|

				graded = []
				ungraded = []

				g.selections.each do |s|

					if s.result == "none"

						ungraded.push(s)

					else

						graded.push(s)

					end


				end

				if ungraded.length > 0

					@active_pools.push(@pool) unless @active_pools.include?(@pool)


				end


			end


		end

	end
end
