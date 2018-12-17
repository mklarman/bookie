module PoolsHelper

	def get_pool_players

		Secret.all.each do |s|

			if s.pass == @pool.pass

				 @contestants.push(s.user_id) 

	 		end  


		end

		@contestants.each do |c|

			User.all.each do |u|

				if u.id.to_i == c.to_i

					@pool_players.push(u)


				end


			end

		end

	end

	def get_all_selections

		@pool_players.each do |p|

			player_hash = Hash.new

			counter = 0

			p.selections.each do |s|

				if s.pool_id.to_i == @pool.id.to_i

					counter = counter + 1

				end


			end

			player_hash[:name] = p.username
			player_hash[:picks] = counter

			@pool_standings.push(player_hash)

		end


	end

	def get_pool_standings(array)

		@bank_holder = []
		@name_holder = []


		array.each do |a|

			if a.class == Hash 

				@bank_holder.push(a[:picks])

			end		

		end

		array.each do |a|

			if a.class == Hash 

				@name_holder.push(a[:name])

			end

		end

		@sorted_standings = @bank_holder.sort {|x,y| -(x <=> y)}

		@sorted_standings.each do |s|

			array.each do |a|

				if a.class == Hash

					if s == a[:picks] 

						@off_stand.push(a) unless @off_stand.include? (a)

					end

				end


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

					if s.result == "winner"

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

end
