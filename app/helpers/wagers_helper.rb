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
	  		@teaser_eligible = []
	  		@straight_container = []
	  		@num_choices
	  		@combo
	  		@teaser_teams

	  		if @client.bet_types == "All"
 
	  			if @client.sports == "NFL"

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

				if @client.sports == "MLB"
	  				
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

				if @client.sports == "NBA"	
	  				
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

				if @client.sports == "NHL"
	  				
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

				if @client.sports == "CBB"
	  				
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

				if @client.sports == "CFB"
	  				
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

		  			if @client.sports[8] << @client.sports[9] << @client.sports[10] == "NFL" 

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


	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "MLB" 

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

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "NHL" 

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

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "NBA" 

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

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "CBB" 

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

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "CFB" 

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


	  			if @combo > 4 && @teaser_teams == 2

	  				@bet_options = ["two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "five team parlay"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo == 4 && @teaser_teams == 4

	  				@bet_options = ["two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "five team parlay", "three team teaser"]
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

	  		if @client.bet_types == "Exotics"
 
	  			if @client.sports == "NFL"

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

				if @client.sports == "MLB"
	  				
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

				if @client.sports == "NBA"	
	  				
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

				if @client.sports == "NHL"
	  				
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

				if @client.sports == "CBB"
	  				
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

				if @client.sports == "CFB"
	  				
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

		  			if @client.sports[8] << @client.sports[9] << @client.sports[10] == "NFL" 

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


	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "MLB" 

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

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "NHL" 

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

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "NBA" 

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

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "CBB" 

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

	  				if @client.sports[8] << @client.sports[9] << @client.sports[10] == "CFB" 

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

	  	def pick_teams

	  		if @wager_type == "straight"

	  			@pick1_holder = @straight_container.sample

	  			@teams.each do |t|

	  				if @pick1_holder == t.name

	  					@array = [1,2,3,4]
	  					@ran_num = @array.sample

	  					if ran_num == 1

	  						@pick1 = t.home_line

	  					elsif ran_num == 2

	  						@pick1 = t.opp_line

	  					
	  					elsif ran_num == 3
	  						
	  						@pick1 = t.over_line

	  					elsif ran_num == 4

	  						@pick1 = t.under_line

	  					end

	  				end


	  			end

	  			return @pick1


	  		end



	  	end

	end








