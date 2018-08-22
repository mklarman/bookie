module WagersHelper

		def time_check

			@get_hour = Time.now  
 			@hour = @get_hour.strftime("%H")
 			@min = @get_hour.strftime("%M") 
		 	@time_check = @hour << @min 

		end

  		def get_time

  			 @date = Time.now 
			 @day = @date.strftime("%d")
			 @month = @date.strftime("%b") 
			 @year = @date.strftime("%Y") 


			 @my_date = @day << " " <<@month << " " <<@year 

			 return @my_date

  		end

  		def display

  			 @teams.each do |t|

				 if t.display == "on"

		 			if t.sport == "NFL" 

			 			@nfl_sides.push(t.name) 
						# @NFL_totals.push(t.total_line) 

		 			elsif t.sport == "MLB" 

			 			@mlb_sides.push(t.name) 
			 			# @MLB_totals.push(t.total_line) 

		 			elsif t.sport == "NBA" 

					 	@nba_sides.push(t.name) 
			 			# @NBA_totals.push(t.total_line) 

		 			elsif t.sport == "NHL" 

						 @nhl_sides.push(t.name) 
			 			  

		 			elsif t.sport == "CBB" 

			 			 @cbb_sides.push(t.name) 
			 			 # @CBB_totals.push(t.total_line) 

		 			elsif t.sport == "CFB" 

						 @cfb_sides.push(t.name) 
						 # @CFB_totals.push(t.total_line) 

					 end 

		 		end 

	 		end 

	  	end

	  	def pick_amount

	  		if @client.stakes == "whale"

	  			@amount_choice = [300, 500, 1000]
	  			@amount = @amount_choice.sample

	  		elsif @client.stakes == "pay dumper"

	  			@amount_choice = [100, 150, 200]
	  			@amount = @amount_choice.sample

	  		elsif @client.stakes == "small timer"

	  			@amount_choice = [25, 50]
	  			@amount = @amount_choice.sample		

	  		end
	  	
	  	end

	  	def pick_type

	  		@choices = []
	  		@num_choices
	  		@combo
	  		@teaser_teams


	  		if @client.bet_types == "All"
 
	  			if @first_sport == "NFL"

	  				@nfl_sides.each do |n|
	  					
	  					@teams.each do |t|

	  						if n == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@straight_container.push(n)
	  								@teaser_eligible.push(n)

	  							end

	  						end


	  					end

	  				end		

	  			end

				if @first_sport == "MLB"

	  				
	  				@mlb_sides.each do |m|

	  					@teams.each do |t|

	  						if m == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@choices.push(m)
	  								@straight_container.push(m)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @first_sport == "NBA"

	  				
	  				@nba_sides.each do |n|

	  					@teams.each do |t|

	  						if n == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@straight_container.push(n)
	  								@teaser_eligible.push(n)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @first_sport == "NHL"

	  				
	  				@nhl_sides.each do |n|

	  					@teams.each do |t|

	  						if n == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@choices.push(n)
	  								@straight_container.push(n)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @first_sport == "CBB"

	  				
	  				@cbb_sides.each do |c|

	  					@teams.each do |t|

	  						if c == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@straight_container.push(c)
	  								@teaser_eligible.push(c)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @first_sport == "CFB"

	  				
	  				@cfb_sides.each do |c|

	  					@teams.each do |t|

	  						if c == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@straight_container.push(c)
	  								@teaser_eligible.push(c)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

	  			if @client.sports.length > 3

		  			if @second_sport == "NFL"  

		  				@nfl_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@straight_container.push(n)
		  								@teaser_eligible.push(n)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end


	  				if @second_sport == "MLB"

		  				@mlb_sides.each do |m|

		  					@teams.each do |t|

		  						if m == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@choices.push(m)
		  								@straight_container.push(m)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @second_sport == "NHL"

		  				@nhl_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@choices.push(n)
		  								@straight_container.push(n)
		  						

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @second_sport == "NBA"

		  				@nba_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@straight_container.push(n)
		  								@teaser_eligible.push(n)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @second_sport == "CBB"

		  				@cbb_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@straight_container.push(n)
		  								@teaser_eligible.push(n)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @second_sport == "CFB"

		  				@cfb_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@straight_container.push(n)
		  								@teaser_eligible.push(n)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end
	  			end

	  			@num_choices = @choices.length * 2
	  			@teaser_teams = @teaser_eligible.length * 2
	  			@combo = @num_choices + @teaser_teams


	  			if @combo == 2 && @teaser_teams == 0

	  				@bet_options = ["straight", "two team parlay", "two team reverse"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo == 2 && @teaser_teams == 2

	  				@bet_options = ["straight", "two team parlay", "two team reverse", "two team teaser"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo == 4 && @teaser_teams == 0

	  				@bet_options = ["straight", "two team parlay", "two team reverse", "three team reverse", "four team reverse", "three team parlay"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo > 4 && @teaser_teams == 0

	  				@bet_options = ["straight", "straight" "two team parlay", "two team reverse", "three team reverse", "four team reverse", "three team parlay", "five team parlay"]
	  				@wager_type = @bet_options.sample

	  			end


	  			if @combo > 4 && @teaser_teams == 2

	  				@bet_options = ["straight", "straight", "two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "five team parlay"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo == 4 && @teaser_teams == 4

	  				@bet_options = ["straight", "straight", "two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "three team teaser"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo > 4 && @teaser_teams == 4

	  				@bet_options = ["straight", "straight", "two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "five team parlay", "three team teaser"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo > 4 && @teaser_teams > 4

	  				@bet_options = ["straight", "straight", "two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "five team parlay", "three team teaser", "five team teaser"]
	  				@wager_type = @bet_options.sample

	  			end  					  			

	  		end

	  		if @client.bet_types == "Exotics"
 
	  			if @first_sports == "NFL"

	  				@nfl_sides.each do |n|
	  					
	  					@teams.each do |t|

	  						if n == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								
	  								@teaser_eligible.push(n)
	  								@straight_container.push(n)

	  							end

	  						end


	  					end

	  				end		

	  			end

				if @first_sport == "MLB"
	  				
	  				@mlb_sides.each do |m|

	  					@teams.each do |t|

	  						if m == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@choices.push(m)
	  								@straight_container.push(m)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @first_sport == "NBA"
	  				
	  				@nba_sides.each do |n|

	  					@teams.each do |t|

	  						if n == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@teaser_eligible.push(n)
	  								@straight_container.push(n)
	  								

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @first_sport == "NHL"
	  				
	  				@nhl_sides.each do |n|

	  					@teams.each do |t|

	  						if n == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@choices.push(n)
	  								@straight_container.push(n)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @first_sport == "CBB"
	  				
	  				@cbb_sides.each do |c|

	  					@teams.each do |t|

	  						if c == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								
	  								@teaser_eligible.push(c)
	  								@straight_container.push(c)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @first_sport == "CFB"
	  				
	  				@cfb_sides.each do |c|

	  					@teams.each do |t|

	  						if c == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								
	  								@teaser_eligible.push(c)
	  								@straight_container.push(c)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

	  			if @client.sports.length > 3

		  			if @second_sport == "NFL" 

		  				@nfl_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								
		  								@teaser_eligible.push(n)
		  								@straight_container.push(n)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end


					if @second_sport == "MLB" 
		  				
		  				@mlb_sides.each do |m|

		  					@teams.each do |t|

		  						if m == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@choices.push(m)
		  								@straight_container.push(m)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @second_sport == "NHL" 

		  				@nhl_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@choices.push(n)
		  								@straight_container.push(n)
		  						

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @second_sport == "NBA" 

		  				@nba_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								
		  								@teaser_eligible.push(n)
		  								@straight_container.push(n)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @second_sport == "CBB" 

		  				@cbb_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								
		  								@teaser_eligible.push(n)
		  								@straight_container.push(n)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @second_sport == "CFB" 

		  				@cfb_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@straight_container.push(n)
		  								@teaser_eligible.push(n)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end
	  			end

	  			@num_choices = @choices.length * 2
	  			@teaser_teams = @teaser_eligible.length * 2
	  			@combo = @num_choices + @teaser_teams



	  			if @combo == 2 && @teaser_teams == 0

	  				@bet_options = ["two team parlay", "two team reverse"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo == 2 && @teaser_teams == 2

	  				@bet_options = ["two team parlay", "two team reverse", "two team teaser"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo == 4 && @teaser_teams == 0

	  				@bet_options = ["two team parlay", "two team reverse", "three team reverse", "four team reverse", "three team parlay"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo > 4 && @teaser_teams == 0

	  				@bet_options = ["two team parlay", "two team reverse", "three team reverse", "four team reverse", "three team parlay", "five team parlay"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo == 4 && @teaser_teams == 4

	  				@bet_options = ["two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "five team parlay", "three team teaser"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo == 4 && @teaser_teams == 2

	  				@bet_options = ["two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "five team parlay"]
	  				@wager_type = @bet_options.sample

	  			end


	  			if @combo > 4 && @teaser_teams == 2

	  				@bet_options = ["two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "five team parlay"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo > 4 && @teaser_teams == 4

	  				@bet_options = ["two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "five team parlay", "three team teaser"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo > 4 && @teaser_teams > 4

	  				@bet_options = ["two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "five team parlay", "three team teaser", "five team teaser"]
	  				@wager_type = @bet_options.sample

	  			end		  			

	  		end

	  		if @client.bet_types == "Straight"

	  			if @client.sports == "NFL"

	  				@nfl_sides.each do |n|
	  					
	  					@teams.each do |t|

	  						if n == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@straight_container.push(n)

	  							end

	  						end


	  					end

	  				end		

	  			end

				if @client.sports == "MLB"
	  				
	  				@mlb_sides.each do |m|

	  					@teams.each do |t|

	  						if m == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@choices.push(m)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @client.sports == "NBA"	
	  				
	  				@nba_sides.each do |n|

	  					@teams.each do |t|

	  						if n == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@straight_container.push(n)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @client.sports == "NHL"
	  				
	  				@nhl_sides.each do |n|

	  					@teams.each do |t|

	  						if n == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@choices.push(n)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @client.sports == "CBB"
	  				
	  				@cbb_sides.each do |c|

	  					@teams.each do |t|

	  						if c == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@straight_container.push(c)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

				if @client.sports == "CFB"
	  				
	  				@cfb_sides.each do |c|

	  					@teams.each do |t|

	  						if c == t.name

	  							if t.start_time.to_i > @time_check.to_i

	  								@straight_container.push(c)

	  							end

	  						end


	  					end
	  					
	  				end

	  			end

	  			if @client.sports.length > 3

		  			if @client.sports[8] << @client.sports[9] << @client.sports[10] == "NFL" 

		  				@nfl_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@straight_container.push(n)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end


	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "MLB" 

		  				@mlb_sides.each do |m|

		  					@teams.each do |t|

		  						if m == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@choices.push(m)

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "NHL" 

		  				@nhl_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@choices.push(n)
		  						

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "NBA" 

		  				@nba_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@straight_container.push(n)
		  								

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "CBB" 

		  				@cbb_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@straight_container.push(n)
		  								

		  							end

		  						end


	  						end
	  					
	  					end
	  				end

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "CFB" 

		  				@cfb_sides.each do |n|

		  					@teams.each do |t|

		  						if n == t.name

		  							if t.start_time.to_i > @time_check.to_i

		  								@straight_container.push(n)
		  						

		  							end

		  						end


	  						end
	  					
	  					end
	  				end
	  			end


	  			@wager_type = "straight"

	  		end

	  	end


	  	def get_teams_and_oppo

	  		@client.wagers.each do |w|

	  			if w.wager_type == "straight"

	  				@teams.each do |t|

	  					if w.team1 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team1 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  				end


	  			end

	  			if w.wager_type == "two team teaser" || w.wager_type == "two team parlay" || w.wager_type == "two team reverse"

	  				@teams.each do |t|

	  					if w.team1 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team1 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  					if w.team2 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team2 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  				end

	  			end

	  			if w.wager_type == "three team teaser" || w.wager_type == "three team parlay" || w.wager_type == "three team reverse"

	  				@teams.each do |t|

	  					if w.team1 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team1 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  					if w.team2 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team2 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  					if w.team3 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team3 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  				end

	  			end

	  			if w.wager_type == "four team reverse"

	  				@teams.each do |t|

	  					if w.team1 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team1 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  					if w.team2 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team2 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  					if w.team3 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team3 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  					if w.team4 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team4 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  				end

	  			end

	  			if w.wager_type == "five team teaser" || w.wager_type == "five team parlay"

	  				@teams.each do |t|

	  					if w.team1 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team1 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  					if w.team2 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team2 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  					if w.team3 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team3 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  					if w.team4 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team4 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  					if w.team5 == t.name

	  						@selections.push(t.name)
	  						@oppo_picks.push(t.opp)

	  					end

	  					if w.team5 == t.opp

	  						@selections.push(t.opp)
	  						@oppo_picks.push(t.name)

	  					end

	  				end


	  			end


	  		end


	  	end

	  	def pick_teams

	  		@straight_container.each do |s|

	  			@teams.each do |t|

	  				if s == t.name

	  					@sides = [t.name, t.opp]
	  					@total = [t.under_line, t.over_line]

	  					@matchups.push(@sides)
	  					@matchups.push(@total)
	  				end


	  			end


	  		end
	  	end
	end




	  	# 	if @wager_type == "straight"

	  	# 		@pick1
	  	# 		@spread1

	  	# 		@oppo_check = true

	  	# 		while @oppo_check == true

	  	# 			@pick1_holder = @straight_container.sample

	  	# 			@teams.each do |t|

		  # 				if @pick1_holder == t.name

		  # 					@array = [1,2,3,4]
		  # 					@ran_num = @array.sample

		  # 					if @ran_num == 1

		  # 						@pick1 = t.name

		  # 					elsif @ran_num == 2

		  # 						@pick1 = t.opp

		  					
		  # 					elsif @ran_num == 3
		  						
		  # 						@pick1 = t.over_line

		  # 					elsif @ran_num == 4

		  # 						@pick1 = t.under_line

		  # 					end

		  # 				end

	  	# 			end

	  	# 			@oppo_matches = []

	  	# 			@oppo_picks.each do |o|

	  	# 				if o == @pick1

	  	# 					@oppo_matches.push(o)

	  	# 				end

	  	# 			end

	  	# 			if @oppo_matches.length == 0

	  	# 				@oppo_check == false

	  	# 			else

	  	# 				@oppo_check == true

	  	# 			end


	  	# 		end

	  			

	  	# 	end

	  	# 	if @wager_type == "two team teaser"

	  	# 		@pick1_holder = @teaser_eligible.sample

	  	# 		@teams.each do |t|

	  	# 			if t.name == @pick1_holder

	  	# 				@array = [1,2,3,4]
	  	# 				@ran_num = @array.sample

	  	# 				if @ran_num == 1

	  	# 					@pick1_cont = t.name
	  	# 					@teaser_line = t.spread.to_i + 6

	  	# 					if @teaser_line > 0

	  	# 						@teaser_line = "+" + @teaser_line.to_s

	  	# 					end
	  						
	  	# 					@pick1 = @pick1_cont + " " + @teaser_line.to_s


	  	# 				elsif @ran_num == 2

	  	# 					@pick1_cont = t.opp
	  	# 					@teaser_line = (t.spread.to_i * -1) + 6

	  	# 					if @teaser_line > 0

	  	# 						@teaser_line = "+" + @teaser_line.to_s

	  	# 					end
	  						
	  	# 					@pick1 = @pick1_cont + " " + @teaser_line.to_s

	  					
	  	# 				elsif @ran_num == 3
	  						
	  	# 					@pick1_cont = t.total.to_i
	  	# 					@teaser_line = t.total.to_i - 6
	  						
	  	# 					@pick1 = "over " + t.name + " " + @teaser_line.to_s

	  	# 				elsif @ran_num == 4

	  	# 					@pick1_cont = t.total.to_i
	  	# 					@teaser_line = t.total.to_i + 6
	  						
	  	# 					@pick1 = "under " + t.name + " " + @teaser_line.to_s
	  	# 				end




	  	# 			end



	  	# 		end

	  	# 		@pick2 = @pick1

	  	# 		while @pick2 === @pick1

	  	# 			@pick2_holder = @teaser_eligible.sample

	  	# 			@teams.each do |t|

	  	# 				if t.name == @pick2_holder

	  	# 					@array = [1,2,3,4]
	  	# 					@ran_num = @array.sample

	  	# 					if @ran_num == 1

	  	# 						@pick2_cont = t.name
	  	# 						@teaser_line = t.spread.to_i + 6

	  	# 						if @teaser_line > 0

	  	# 						@teaser_line = "+" + @teaser_line.to_s

	  	# 						end
	  							
	  	# 						@pick2 = @pick2_cont + " " + @teaser_line.to_s


	  	# 					elsif @ran_num == 2

	  	# 						@pick2_cont = t.opp
	  	# 						@teaser_line = (t.spread.to_i * -1) + 6

	  	# 						if @teaser_line > 0

	  	# 						@teaser_line = "+" + @teaser_line.to_s

	  	# 						end
	  							
	  	# 						@pick2 = @pick2_cont + " " + @teaser_line.to_s

	  					
	  	# 					elsif @ran_num == 3
	  						
	  	# 						@pick2_cont = t.total.to_i
	  	# 						@teaser_line = t.total.to_i - 6
	  							
	  	# 						@pick2 = "over " + t.name + " " + @teaser_line.to_s

	  	# 					elsif @ran_num == 4

	  	# 						@pick2_cont = t.total.to_i
	  	# 						@teaser_line = t.total.to_i + 6
	  							
	  	# 						@pick2 = "under " + t.name + " " + @teaser_line.to_s
	  	# 					end




	  	# 				end



	  	# 			end

	  	# 		end



	  	# 	end

	  	# 	if @wager_type == "three team teaser"

	  	# 		@pick1_holder = @teaser_eligible.sample

	  	# 		@teams.each do |t|

	  	# 			if t.name == @pick1_holder

	  	# 				@array = [1,2,3,4]
	  	# 				@ran_num = @array.sample

	  	# 				if @ran_num == 1

	  	# 					@pick1_cont = t.name

	  	# 					if t.sport == "NFL" || t.sport == "CFB"
	  							
	  	# 						@teaser_line = t.spread.to_i + 9

	  	# 					elsif t.sport == "NBA" || t.sport == "CBB"

	  	# 						@teaser_line = t.spread.to_i + 6

	  	# 					end
	  							

	  	# 					if @teaser_line > 0

	  	# 						@teaser_line = "+" + @teaser_line.to_s

	  	# 					end
	  						
	  	# 					@pick1 = @pick1_cont + " " + @teaser_line.to_s


	  	# 				elsif @ran_num == 2

	  	# 					@pick1_cont = t.opp
	  						
	  	# 					if t.sport == "NFL" || t.sport == "CFB"
	  							
	  	# 						@teaser_line = t.spread.to_i + 9

	  	# 					elsif t.sport == "NBA" || t.sport == "CBB"

	  	# 						@teaser_line = t.spread.to_i + 6

	  	# 					end

	  	# 					if @teaser_line > 0

	  	# 						@teaser_line = "+" + @teaser_line.to_s

	  	# 					end
	  						
	  	# 					@pick1 = @pick1_cont + " " + @teaser_line.to_s

	  					
	  	# 				elsif @ran_num == 3
	  						
	  	# 					@pick1_cont = t.total.to_i
	  	# 					@teaser_line = @pick1_cont - 6
	  						
	  	# 					@pick1 = "over " + t.name + " " + @teaser_line.to_s

	  	# 				elsif @ran_num == 4

	  	# 					@pick1_cont = t.total.to_i
	  	# 					@teaser_line = @pick1_cont + 6
	  									
	  	# 					@pick1 = "under " + t.name + " " + @teaser_line.to_s
	  					
	  	# 				end




	  	# 			end



	  	# 		end

	  	# 		@pick2 = @pick1
	  	# 		@pick3 = @pick1

	  	# 		while @pick2 === @pick1

	  	# 			@pick2_holder = @teaser_eligible.sample

	  	# 			@teams.each do |t|

	  	# 				if t.name == @pick2_holder

	  	# 					@array = [1,2,3,4]
	  	# 					@ran_num = @array.sample

	  	# 					if @ran_num == 1

	  	# 						@pick2_cont = t.name
	  							
	  	# 						if t.sport == "NFL" || t.sport == "CFB"
	  							
	  	# 						@teaser_line = t.spread.to_i + 9

	  	# 					elsif t.sport == "NBA" || t.sport == "CBB"

	  	# 						@teaser_line = t.spread.to_i + 6

	  	# 					end

	  	# 						if @teaser_line > 0

	  	# 						@teaser_line = "+" + @teaser_line.to_s

	  	# 						end
	  							
	  	# 						@pick2 = @pick2_cont + " " + @teaser_line.to_s


	  	# 					elsif @ran_num == 2

	  	# 						@pick2_cont = t.opp
	  							
	  	# 						if t.sport == "NFL" || t.sport == "CFB"
	  							
	  	# 						@teaser_line = t.spread.to_i + 9

	  	# 					elsif t.sport == "NBA" || t.sport == "CBB"

	  	# 						@teaser_line = t.spread.to_i + 6

	  	# 					end
	  							
	  	# 						if @teaser_line > 0

	  	# 						@teaser_line = "+" + @teaser_line.to_s

	  	# 						end
	  							
	  	# 						@pick2 = @pick2_cont + " " + @teaser_line.to_s

	  					
	  	# 					elsif @ran_num == 3
	  						
	  	# 						@pick2_cont = t.total.to_i
	  	# 						@teaser_line = @pick2_cont - 6
	  									
	  	# 						@pick2 = "over " + t.name + " " + @teaser_line.to_s

	  	# 					elsif @ran_num == 4

	  	# 						@pick2_cont = t.total.to_i
	  							
	  	# 						@teaser_line = @pick2_cont + 6
	  							
	  	# 						@pick2 = "under " + t.name + " " + @teaser_line.to_s
	  	# 					end




	  	# 				end



	  	# 			end

	  	# 		end

	  	# 		while @pick3 == @pick1 || @pick3 == @pick2

	  	# 			@pick3_holder = @teaser_eligible.sample

	  	# 			@teams.each do |t|

	  	# 				if t.name == @pick3_holder

	  	# 					@array = [1,2,3,4]
	  	# 					@ran_num = @array.sample

	  	# 					if @ran_num == 1

	  	# 						@pick3_cont = t.name
	  							
	  	# 						if t.sport == "NFL" || t.sport == "CFB"
	  							
	  	# 						@teaser_line = t.spread.to_i + 9

	  	# 					elsif t.sport == "NBA" || t.sport == "CBB"

	  	# 						@teaser_line = t.spread.to_i + 6

	  	# 					end

	  	# 						if @teaser_line > 0

	  	# 						@teaser_line = "+" + @teaser_line.to_s

	  	# 						end
	  							
	  	# 						@pick3 = @pick3_cont + " " + @teaser_line.to_s


	  	# 					elsif @ran_num == 2

	  	# 						@pick3_cont = t.opp
	  							
	  	# 						if t.sport == "NFL" || t.sport == "CFB"
	  							
	  	# 						@teaser_line = t.spread.to_i + 9

	  	# 					elsif t.sport == "NBA" || t.sport == "CBB"

	  	# 						@teaser_line = t.spread.to_i + 6

	  	# 					end
	  							
	  	# 						if @teaser_line > 0

	  	# 						@teaser_line = "+" + @teaser_line.to_s

	  	# 						end
	  							
	  	# 						@pick3 = @pick3_cont + " " + @teaser_line.to_s

	  					
	  	# 					elsif @ran_num == 3
	  						
	  	# 						@pick3_cont = t.total.to_i
	  							
	  	# 						if t.sport == "NFL" || t.sport == "CFB"
	  							
	  	# 						@teaser_line = t.spread.to_i + 9

	  	# 					elsif t.sport == "NBA" || t.sport == "CBB"

	  	# 						@teaser_line = t.spread.to_i + 6

	  	# 					end
	  							
	  	# 						@pick3 = "over " + t.name + " " + @teaser_line.to_s

	  	# 					elsif @ran_num == 4

	  	# 						@pick3_cont = t.total.to_i
	  							
	  	# 						if t.sport == "NFL" || t.sport == "CFB"
	  							
	  	# 						@teaser_line = t.spread.to_i + 9

	  	# 					elsif t.sport == "NBA" || t.sport == "CBB"

	  	# 						@teaser_line = t.spread.to_i + 6

	  	# 					end
	  							
	  	# 						@pick3 = "under " + t.name + " " + @teaser_line.to_s
	  	# 					end




	  	# 				end



	  	# 			end



	  	# 		end

	  	# 	end



	  	# end










