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

		@group_count = @pool.groups.count

		if @pool.groups.last.date == @my_date

			@group_count = @group_count - 1


		end

		@pool_players.each do |p|

			selec_counter = 0

			p.selections.each do |s|

				if s.pool_id.to_i == @pool.id.to_i

					selec_counter = selec_counter + 1


				end


			end

			if selec_counter == @group_count

				@still_alive.push(p)

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

	def grade_selections

		@the_group

		@result = "loser"

		@value = 0

		@pool.groups.selections.each do |s|

			if s.result == "none" && s.date != @my_date

				@sorted_selections.push(s)


			end

		end

		@sorted_selections.each do |s|

			@pool.groups.each do |g|

				if s.group_id.to_i == g.id.to_i

					@the_group = g

				end

			end

			Ticket.all.each do |t|

				if t.date == @the_group.date

					if t.name == @the_group.player1 || @the_group.player2 || @the_group.player3 || @the_group.player4 || @the_group.player5

						@group_tickets.push(t)


					end

				end


			end

			@group_tickets.each do |t|

				if t.score > @value

					@value = t.score

				end

			end

			@group_tickets.each do |t|

				if t.score == @value

					@winning_tickets.push(t)


				end


			end


			@winning_tickets.each do |t|

				if t.name == s.selection

					@result = "winner"

				end

			end


		end


	end

	def get_tied_users

		@pool_players.each do |p|

			counter = 0

			p.selections.each do |s|

				if s.pool_id.to_i == @pool.id.to_i

					counter = counter + 1


				end


			end

			if counter == @pool.groups.length

				@tied_players.push(p)

			end


		end


	end

	def score_selections

		@pool.selections.each do |s|

			if s.result == "none" && s.date != @my_date

				@loaded_selections.push(s)

			end

		end

		@loaded_selections.each do |s|

			@pool.groups.each do |g|

				if s.group_id.to_i == g.id.to_i

					Ticket.all.each do |t|

						if t.date == g.date

							if t.name == g.player1 || t.name == g.player2 || t.name == g.player3 || t.name == g.player4 || t.name == g.player5

								@group_tickets.push(t)

							end

						end

					end

				end

			end

			@group_tickets.each do |t|

				@group_scores.push(t.score.to_i)

			end

			@group_scores = @group_scores.sort
			@winner_score = @group_scores.last

			@group_tickets.each do |t|

				if t.name == s.selection

					if t.score.to_i == @winner_score

						@selection_result == "winner"

					else

						@selection_result == "loser"

					end

				end

			end

		end

	end

end
