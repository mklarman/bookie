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

				if s.pool_id.to_i == @pool.id

					if s.result == "winner"

						counter = counter + 1

					end

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

		@new_pool = false

		@groups_total = @pool.groups.count

		if @groups_total != 0

			if @pool.groups.last.date == @my_date

				@groups_total = @groups_total - 1

			end

		end

		if @pool.groups.count == 1 && @pool.groups.last.date == @my_date

			@new_pool = true

		end

		if @new_pool == true

			@pool_players.each do |p|

				@still_alive.push(p)

			end 


		else

			@pool_players.each do |p|

				@still_in = true

				@player_selec = []

				@pool.selections.each do |s|

					if s.user_id.to_i == p.id

						if s.result != "none"

							@player_selec.push(s)

						end

					end

				end

				@player_selec.each do |s|

					if s.result == "loser"

						@still_in = false

					end

					if @player_selec.length != @groups_total

						@still_in = false

					end

				end

				if @still_in == false

					@eliminated.push(p) unless @eliminated.include?(p)


				else

					@still_alive.push(p) unless @still_alive.include?(p)


				end

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

		Group.all.each do |g|

			if g.id.to_i == @selection.group_id.to_i

				@the_group = g

			end

		end

		Ticket.all.each do |t|

			if t.date == @selection.date

				if t.name == @the_group.player1 || @the_group.player2 || @the_group.player3 || @the_group.player4 || @the_group.player5

					@tickets_in_group.push(t)

				end
			end

		end

		@tickets_in_group.each do |t|

			@scores.push(t.score.to_i)

		end

		@scores = @scores.sort

		@high_score = @scores.last

		@tickets_in_group.each do |t|

			if t.score.to_i == @high_score

				@result = "winner"

			else

				@result = "loser"

			end


		end

	end

	def form_group

		if @pool.sport == "NFL" 

			if @players_in_group == 2 

				 @ply1 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply1) 

				 @ply2 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply2) 
	
			 elsif @players_in_group == 3 

				 @ply1 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply1) 

				 @ply2 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply2) 

				 @ply3 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply3) 
		
			 elsif @players_in_group == 4 

				 @ply1 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply1) 

				 @ply2 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply2) 

				 @ply3 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply3) 

				 @ply4 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply4) 
		
			 elsif @players_in_group == 5 

				 @ply1 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply1) 

				 @ply2 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply2) 

				 @ply3 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply3) 

				 @ply4 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply4) 

				 @ply5 = @nfl_tickets.sample 
				 @nfl_tickets.delete(@ply5) 

			 end 

		 end 

		 if @pool.sport == "NBA"  

			 if @players_in_group == 2 

				 @ply1 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply1) 

				 @ply2 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply2) 
		
			 elsif @players_in_group == 3 

				 @ply1 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply1) 

				 @ply2 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply2) 

				 @ply3 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply3) 
		
			 elsif @players_in_group == 4 

				 @ply1 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply1) 

				 @ply2 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply2) 

				 @ply3 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply3) 

				 @ply4 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply4) 
		
			 elsif @players_in_group == 5 

				 @ply1 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply1) 

				 @ply2 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply2) 

				 @ply3 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply3) 

				 @ply4 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply4) 

				 @ply5 = @nba_tickets.sample 
				 @nba_tickets.delete(@ply5) 

			 end 

		 end 

		 if @pool.sport == "MLB"  

			 if @players_in_group == 2 

				 @ply1 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply1) 

				 @ply2 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply2) 
			
			 elsif @players_in_group == 3 

				 @ply1 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply1) 

				 @ply2 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply2) 

				 @ply3 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply3) 
			
			 elsif @players_in_group == 4 

				 @ply1 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply1) 

				 @ply2 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply2) 

				 @ply3 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply3) 

				 @ply4 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply4) 
			
			 elsif @players_in_group == 5 

				 @ply1 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply1) 

				 @ply2 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply2) 

				 @ply3 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply3) 

				 @ply4 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply4) 

				 @ply5 = @mlb_tickets.sample 
				 @mlb_tickets.delete(@ply5) 

			 end 

		end 


	end


end


