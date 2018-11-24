module PoolsHelper


	def get_all_contestants

		@users.each do |u|

			@in_pool = false

			u.selections.each do |s|

				if s.pool_id.to_i == @pool.id.to_i

					@in_pool = true


				end


			end

			if @in_pool == true

				@contestants.push(u)

			end


		end

	end

	def get_remaining_contestants

		@group_count = 0

		@groups.each do |g|

			if g.pool_id.to_i == @pool.id.to_i && g.date != @my_date

				@group_count = @group_count + 1

			end


		end

		@contestants.each do |c|

			@still_in = false

			c.selections.each do |s|

				if s.pool_id.to_i == @pool.id.to_i

					@selection_holder.push(s)

				end

			end

			if @selection_holder.length.to_i == @group_count

				@winners = []

				@selections.each do |s|

					if s.grade == "winner"

						@winners.push(s)

					end

				end

				if @winners.length.to_i == @group_count

					@still_in = true

				end

			end

			if @still_in == true

				@players_left.push(c)

			end


		end


	end

	def grade_check

		if @pool.selections.length > 0

			@pool.selections.each do |s|

				if s.result == "none" && s.date != @my_date

					@needs_grading = true

				end


			end
		end

	end

	def gather_pool_users

		@users.each do |u|

			@player = false

			u.selections.each do |s|

				if s.id.to_i == @pool.id.to_i

					@player == true

				end

			end

			if @player == true

				@entrants.push(u)


			end



		end

	end
end
