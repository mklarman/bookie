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

				 	if t.start_time.to_i > @time_check.to_i


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

	  		@first_sport = @client.sports[0] + @client.sports[1] + @client.sports[2]
			@second_sport 

			 if @client.sports.length > 3 

				 @second_sport = @client.sports[8] + @client.sports[9] + @client.sports[10] 
			
			 end


	  		if @client.bet_types == "All"
 
	  			if @first_sport == "NFL"

	  				@nfl_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  				end		

	  			end

				if @first_sport == "MLB"

	  				
	  				@mlb_sides.each do |m|

	  					@choices.push(m)
	  					@straight_container.push(m)

	  				end

	  			end

				if @first_sport == "NBA"

	  				
	  				@nba_sides.each do |n|

	  					
	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)  					
	  					
	  				end

	  			end

				if @first_sport == "NHL"

	  				
	  				@nhl_sides.each do |n|

	  					@choices.push(n)
	  					@straight_container.push(n)

	  				end

	  			end

				if @first_sport == "CBB"

	  				
	  				@cbb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)  		

	  				end

	  			end

				if @first_sport == "CFB"

	  				
	  				@cfb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)  		

	  				end

	  			end

	  			if @client.sports.length > 3

		  			if @second_sport == "NFL"  

		  				@nfl_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  					end		
	  				end


	  				if @second_sport == "MLB"

		  				@mlb_sides.each do |m|

	  					@choices.push(m)
	  					@straight_container.push(m)

	  					end
	  				end

	  				if @second_sport == "NHL"

		  				@nhl_sides.each do |n|

	  					@choices.push(n)
	  					@straight_container.push(n)

	  					end
	  				end

	  				if @second_sport == "NBA"

		  				@nba_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  					end		
	  				end

	  				if @second_sport == "CBB"

		  				@cbb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  					end		
	  				end

	  				if @second_sport == "CFB"

		  				@cfb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

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
 
	  			if @first_sport == "NFL"

	  				@nfl_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  				end		

	  			end

				if @first_sport == "MLB"

	  				
	  				@mlb_sides.each do |m|

	  					@choices.push(m)
	  					@straight_container.push(m)

	  				end

	  			end

				if @first_sport == "NBA"

	  				
	  				@nba_sides.each do |n|

	  					
	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)  					
	  					
	  				end

	  			end

				if @first_sport == "NHL"

	  				
	  				@nhl_sides.each do |n|

	  					@choices.push(n)
	  					@straight_container.push(n)

	  				end

	  			end

				if @first_sport == "CBB"

	  				
	  				@cbb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)  		

	  				end

	  			end

				if @first_sport == "CFB"

	  				
	  				@cfb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)  		

	  				end

	  			end

	  			if @client.sports.length > 3

		  			if @second_sport == "NFL"  

		  				@nfl_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  					end		
	  				end


	  				if @second_sport == "MLB"

		  				@mlb_sides.each do |m|

	  					@choices.push(m)
	  					@straight_container.push(m)

	  					end
	  				end

	  				if @second_sport == "NHL"

		  				@nhl_sides.each do |n|

	  					@choices.push(n)
	  					@straight_container.push(n)

	  					end
	  				end

	  				if @second_sport == "NBA"

		  				@nba_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  					end		
	  				end

	  				if @second_sport == "CBB"

		  				@cbb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  					end		
	  				end

	  				if @second_sport == "CFB"

		  				@cfb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

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

	  				@bet_options = ["two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay", "three team teaser"]
	  				@wager_type = @bet_options.sample

	  			end

	  			if @combo == 4 && @teaser_teams == 2

	  				@bet_options = ["two team parlay", "two team reverse", "two team teaser", "three team reverse", "four team reverse", "three team parlay"]
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

	  			if @first_sport == "NFL"

	  				@nfl_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  				end		

	  			end

				if @first_sport == "MLB"

	  				
	  				@mlb_sides.each do |m|

	  					@choices.push(m)
	  					@straight_container.push(m)

	  				end

	  			end

				if @first_sport == "NBA"

	  				
	  				@nba_sides.each do |n|

	  					
	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)  					
	  					
	  				end

	  			end

				if @first_sport == "NHL"

	  				
	  				@nhl_sides.each do |n|

	  					@choices.push(n)
	  					@straight_container.push(n)

	  				end

	  			end

				if @first_sport == "CBB"

	  				
	  				@cbb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)  		

	  				end

	  			end

				if @first_sport == "CFB"

	  				
	  				@cfb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)  		

	  				end

	  			end

	  			if @client.sports.length > 3

		  			if @second_sport == "NFL"  

		  				@nfl_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  					end		
	  				end


	  				if @second_sport == "MLB"

		  				@mlb_sides.each do |m|

	  					@choices.push(m)
	  					@straight_container.push(m)

	  					end
	  				end

	  				if @second_sport == "NHL"

		  				@nhl_sides.each do |n|

	  					@choices.push(n)
	  					@straight_container.push(n)

	  					end
	  				end

	  				if @second_sport == "NBA"

		  				@nba_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  					end		
	  				end

	  				if @second_sport == "CBB"

		  				@cbb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  					end		
	  				end

	  				if @second_sport == "CFB"

		  				@cfb_sides.each do |n|

	  					@straight_container.push(n)
	  					@teaser_eligible.push(n)

	  					end		
	  				end
	  			end

	  			@wager_type = "straight"

	  		end

	  	end


	  	def get_teams_and_oppo

	  		@client.wagers.each do |w|

	  			if w.graded == false

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
	  	end

	  	def pick_teams

	  		@teams.each do |t|

	  			@straight_container.each do |s|

	  				if t.name == s

	  					@sides = [t.name, t.opp]
	  					@total = [t.under_line, t.over_line]

	  					@matchups.push(@sides)
	  					@matchups.push(@total)

	  				end

	  				


	  			end


	  		end
	  	end
	

		def selections

			@matchups.each do |m|

				@team_hash = Hash.new
				@num_array = [1, 2]
				@r_num = @num_array.sample

				if @r_num == 1

					@team_hash[:selection] = m[0]
					@team_hash[:opponent] = m[1]

					@client_picks.push(@team_hash)

				end

				if @r_num == 2

					@team_hash[:selection] = m[1]
					@team_hash[:opponent] = m[0]

					@client_picks.push(@team_hash)

				end


			end


		end

		def sort

			@selections.each do |s| 

	 			@client_picks.each do |p| 

		 			if s == p[:opponent] 

						p[:selection] = p[:opponent] 

		 			end 

	 			end 

 			end 

		end

		def fill_wagers

			@client_picks.each do |p|

				@teams.each do |t|

					if t.name == p[:selection]

						if t.sport == "NFL" || t.sport == "NBA" || t.sport == "CBB" || t.sport == "CFB"

							@teams_to_choose.push(p[:selection])
							@teams_for_teaser.push(p[:selection])

						else

							@teams_to_choose.push(p[:selection])

						end

					end

					if t.opp == p[:selection]

						if t.sport == "NFL" || t.sport == "NBA" || t.sport == "CBB" || t.sport == "CFB"

							@teams_to_choose.push(p[:selection])
							@teams_for_teaser.push(p[:selection])

						else

							@teams_to_choose.push(p[:selection])

						end

					end

					if t.over_line == p[:selection]

						if t.sport == "NFL" || t.sport == "NBA" || t.sport == "CBB" || t.sport == "CFB"

							@teams_to_choose.push(p[:selection])
							@teams_for_teaser.push(p[:selection])

						else

							@teams_to_choose.push(p[:selection])

						end

					end

					if t.under_line == p[:selection]

						if t.sport == "NFL" || t.sport == "NBA" || t.sport == "CBB" || t.sport == "CFB"

							@teams_to_choose.push(p[:selection])
							@teams_for_teaser.push(p[:selection])

						else

							@teams_to_choose.push(p[:selection])

						end

					end

				end
			end

			if @wager_type == "straight"

				@pick1 = @teams_to_choose.sample


				@teams.each do |t|

					if t.name == @pick1

						if t.spread.to_i > 0

							@spread1 = "+" + t.spread

						else

							@spread1 = t.spread
							


						end

					elsif t.opp == @pick1

						@spread1 = t.spread.to_i * -1

						if @spread1 > 0

							@spread1 = "+" + @spread1.to_s

						end

					elsif t.under_line == @pick1 || t.over_line == @pick1

						@spread1 = t.total 

					end



				end
			end

			if @wager_type == "two team teaser"

				@pick1 = @teams_for_teaser.sample
				@teams_for_teaser.delete(@pick1) 
				
				@pick2 = @teams_for_teaser.sample
				@teams_for_teaser.delete(@pick2) 

				@teams.each do |t|

					if t.sport == "NFL" || t.sport == "CFB"

						if t.name == @pick1

							@spread1 = t.spread.to_i + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1) + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total.to_i - 6


						end

						if t.under_line == @pick1

							@spread1 = t.total.to_i + 6


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i - 6


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i + 6


						end

					end

					if t.sport == "NBA" || t.sport == "CBB"

						if t.name == @pick1

							@spread1 = t.spread.to_i + 4

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1) + 4

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total.to_i - 4


						end

						if t.under_line == @pick1

							@spread1 = t.total.to_i + 4


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i + 4

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) + 4

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i - 4


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i + 4


						end

					end


				end 


			end

			if @wager_type == "three team teaser"

				@pick1 = @teams_for_teaser.sample
				@teams_for_teaser.delete(@pick1) 
				
				@pick2 = @teams_for_teaser.sample
				@teams_for_teaser.delete(@pick2) 
				
				@pick3 = @teams_for_teaser.sample
				  

				@teams.each do |t|

					if t.sport == "NFL" || t.sport == "CFB"

						if t.name == @pick1

							@spread1 = t.spread.to_i + 9

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1) + 9

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total.to_i - 9


						end

						if t.under_line == @pick1

							@spread1 = t.total.to_i + 9


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i + 9

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) + 9

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i - 9


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i + 9


						end

						if t.name == @pick3

							@spread3 = t.spread.to_i + 9

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.opp == @pick3

							@spread3 = (t.spread.to_i * -1) + 9

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.over_line == @pick3

							@spread3 = t.total.to_i - 9


						end

						if t.under_line == @pick3

							@spread3 = t.total.to_i + 9


						end

					end

					if t.sport == "NBA" || t.sport == "CBB"

						if t.name == @pick1

							@spread1 = t.spread.to_i + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1) + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total.to_i - 6


						end

						if t.under_line == @pick1

							@spread1 = t.total.to_i + 6


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i - 6


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i + 6


						end

						if t.name == @pick3

							@spread3 = t.spread.to_i + 6

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.opp == @pick3

							@spread3 = (t.spread.to_i * -1) + 6

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.over_line == @pick3

							@spread3 = t.total.to_i - 6


						end

						if t.under_line == @pick3

							@spread3 = t.total.to_i + 6


						end

					end


				end 


			end

			if @wager_type == "five team teaser"

				@pick1 = @teams_for_teaser.sample
				@teams_for_teaser.delete(@pick1) 
				
				@pick2 = @teams_for_teaser.sample
				@teams_for_teaser.delete(@pick2) 
				
				@pick3 = @teams_for_teaser.sample
				@teams_for_teaser.delete(@pick3) 
				
				@pick4 = @teams_for_teaser.sample
				@teams_for_teaser.delete(@pick4) 
				
				@pick5 = @teams_for_teaser.sample
				@teams_for_teaser.delete(@pick5)  
 
 

				@teams.each do |t|

					if t.sport == "NFL" || t.sport == "CFB"

						if t.name == @pick1

							@spread1 = t.spread.to_i + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1) + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total.to_i - 6


						end

						if t.under_line == @pick1

							@spread1 = t.total.to_i + 6


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i - 6


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i + 6


						end

						if t.name == @pick3

							@spread3 = t.spread.to_i + 6

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.opp == @pick3

							@spread3 = (t.spread.to_i * -1) + 6

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.over_line == @pick3

							@spread3 = t.total.to_i - 6


						end

						if t.under_line == @pick3

							@spread3 = t.total.to_i + 6


						end

						if t.name == @pick4

							@spread4 = t.spread.to_i + 6

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							end

						end

						if t.opp == @pick4

							@spread4 = (t.spread.to_i * -1) + 6

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							end

						end

						if t.over_line == @pick4

							@spread4 = t.total.to_i - 6


						end

						if t.under_line == @pick4

							@spread4 = t.total.to_i + 6


						end

						if t.name == @pick5

							@spread5 = t.spread.to_i + 6

							if @spread5 > 0

								@spread5 = "+" + @spread5.to_s

							end

						end

						if t.opp == @pick5

							@spread5 = (t.spread.to_i * -1) + 6

							if @spread5 > 0

								@spread5 = "+" + @spread5.to_s

							end

						end

						if t.over_line == @pick5

							@spread5 = t.total.to_i - 6


						end

						if t.under_line == @pick5

							@spread5 = t.total.to_i + 6


						end

					end


					if t.sport == "NBA" || t.sport == "CBB"

						if t.name == @pick1

							@spread1 = t.spread.to_i + 4

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1) + 4

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total.to_i - 4


						end

						if t.under_line == @pick1

							@spread1 = t.total.to_i + 4


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i + 4

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) + 4

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i - 4


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i + 4


						end

						if t.name == @pick3

							@spread3 = t.spread.to_i + 4

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.opp == @pick3

							@spread3 = (t.spread.to_i * -1) + 4

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.over_line == @pick3

							@spread3 = t.total.to_i - 4


						end

						if t.under_line == @pick3

							@spread3 = t.total.to_i + 4


						end

						if t.name == @pick4

							@spread4 = t.spread.to_i + 4

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							end

						end

						if t.opp == @pick4

							@spread4 = (t.spread.to_i * -1) + 4

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							end

						end

						if t.over_line == @pick4

							@spread4 = t.total.to_i - 4


						end

						if t.under_line == @pick4

							@spread4 = t.total.to_i + 4


						end


						if t.name == @pick5

							@spread5 = t.spread.to_i + 4

							if @spread5 > 0

								@spread5 = "+" + @spread5.to_s

							end

						end

						if t.opp == @pick5

							@spread5 = (t.spread.to_i * -1) + 4

							if @spread5 > 0

								@spread5 = "+" + @spread5.to_s

							end

						end

						if t.over_line == @pick5

							@spread5 = t.total.to_i - 4


						end

						if t.under_line == @pick5

							@spread5 = t.total.to_i + 4


						end

					end
				end

			end

			if @wager_type == "two team parlay" || @wager_type == "two team reverse"



				@pick1 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick1)
				
				@pick2 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick2)

				@teams.each do |t|

					if t.sport == "NFL" || t.sport == "CFB" || t.sport == "MLB" || t.sport == "NHL"

						if t.name == @pick1

							@spread1 = t.spread.to_i

							if @spread1 > 0

								@spread1 = "+" + t.spread.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1)

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total


						end

						if t.under_line == @pick1

							@spread1 = t.total


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) 

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i


						end

					end

					if t.sport == "NBA" || t.sport == "CBB"

						if t.name == @pick1

							@spread1 = t.spread.to_i 

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1) 

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total.to_i 


						end

						if t.under_line == @pick1

							@spread1 = t.total.to_i 


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i 

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) 

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i 


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i 


						end

					end


				end 

			end 

			if @wager_type == "three team parlay" || @wager_type == "three team reverse"



				@pick1 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick1)
				
				@pick2 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick2)

				@pick3 = @teams_to_choose.sample

				@teams.each do |t|

					if t.sport == "NFL" || t.sport == "CFB" || t.sport == "MLB" || t.sport == "NHL"

						if t.name == @pick1

							@spread1 = t.spread.to_i

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1)

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total


						end

						if t.under_line == @pick1

							@spread1 = t.total


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) 

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i


						end

						if t.name == @pick3

							@spread3 = t.spread.to_i

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.opp == @pick3

							@spread3 = (t.spread.to_i * -1) 

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.over_line == @pick3

							@spread3 = t.total.to_i


						end

						if t.under_line == @pick3

							@spread3 = t.total.to_i


						end

					end

					if t.sport == "NBA" || t.sport == "CBB"

						if t.name == @pick1

							@spread1 = t.spread.to_i 

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1) 

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total.to_i 


						end

						if t.under_line == @pick1

							@spread1 = t.total.to_i 


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i 

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) 

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i 


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i 


						end

						if t.name == @pick3

							@spread3 = t.spread.to_i 

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.opp == @pick3

							@spread3 = (t.spread.to_i * -1) 

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.over_line == @pick3

							@spread3 = t.total.to_i 


						end

						if t.under_line == @pick3

							@spread3 = t.total.to_i 


						end

					end


				end 

			end 

			if @wager_type == "four team reverse"

				@pick1 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick1)
				
				@pick2 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick2)

				@pick3 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick3)

				@pick4 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick4)

				@teams.each do |t|

					if t.name == @pick1

							@spread1 = t.spread.to_i 

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1)

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total.to_i 


						end

						if t.under_line == @pick1

							@spread1 = t.total.to_i 


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i 

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) 

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i 


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i 


						end

						if t.name == @pick3

							@spread3 = t.spread.to_i

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.opp == @pick3

							@spread3 = (t.spread.to_i * -1) 

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.over_line == @pick3

							@spread3 = t.total.to_i 


						end

						if t.under_line == @pick3

							@spread3 = t.total.to_i 


						end

						if t.name == @pick4

							@spread4 = t.spread.to_i 

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							end

						end

						if t.opp == @pick4

							@spread4 = (t.spread.to_i * -1) 

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							end

						end

						if t.over_line == @pick4

							@spread4 = t.total.to_i 


						end

						if t.under_line == @pick4

							@spread4 = t.total.to_i 


						end


				end




			end

			if @wager_type == "five team parlay"


				@pick1 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick1)
				
				@pick2 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick2)

				@pick3 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick3)

				@pick4 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick4)

				@pick5 = @teams_to_choose.sample
				@teams_to_choose.delete(@pick5)

				@teams.each do |t|

					if t.name == @pick1

							@spread1 = t.spread.to_i 

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.opp == @pick1

							@spread1 = (t.spread.to_i * -1)

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							end

						end

						if t.over_line == @pick1

							@spread1 = t.total.to_i 


						end

						if t.under_line == @pick1

							@spread1 = t.total.to_i 


						end

						if t.name == @pick2

							@spread2 = t.spread.to_i 

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.opp == @pick2

							@spread2 = (t.spread.to_i * -1) 

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							end

						end

						if t.over_line == @pick2

							@spread2 = t.total.to_i 


						end

						if t.under_line == @pick2

							@spread2 = t.total.to_i 


						end

						if t.name == @pick3

							@spread3 = t.spread.to_i

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.opp == @pick3

							@spread3 = (t.spread.to_i * -1) 

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							end

						end

						if t.over_line == @pick3

							@spread3 = t.total.to_i 


						end

						if t.under_line == @pick3

							@spread3 = t.total.to_i 


						end

						if t.name == @pick4

							@spread4 = t.spread.to_i 

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							end

						end

						if t.opp == @pick4

							@spread4 = (t.spread.to_i * -1) 

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							end

						end

						if t.over_line == @pick4

							@spread4 = t.total.to_i 


						end

						if t.under_line == @pick4

							@spread4 = t.total.to_i 


						end

						if t.name == @pick5

							@spread5 = t.spread.to_i 

							if @spread5 > 0

								@spread5 = "+" + @spread5.to_s

							end

						end

						if t.opp == @pick5

							@spread5 = (t.spread.to_i * -1) 

							if @spread5 > 0

								@spread5 = "+" + @spread5.to_s

							end

						end

						if t.over_line == @pick5

							@spread5 = t.total.to_i 


						end

						if t.under_line == @pick5

							@spread5 = t.total.to_i 


						end

				end

			end

		end

		def qualify_clients

			current_user.clients.each do |c|

				@client = c

				@counter = 0

				c.wagers.each do |w|

					if w.graded == false

						@counter = @counter + 1

					end

				end

				if @counter < c.wager_limit.to_i

					@qualify = true

					display()
					pick_type()

				end


				if @qualify == true && @straight_container.length > 0

					@todays_wagers.push(c.id)

				end


			end

		end

		def score_straight

			@teams.each do |t|

				if t.name == @wager.team1

				elsif t.opp == @wager.team1

				elsif t.over_line == @wager.team1

				elsif t.under_line == @wager.team1


				end

			end
		end

end

		# 	@teams.each do |t|

		# 		if t.name == @wager.team1

		# 			if t.sport == "NFL" || if t.sport == "CFB" || if t.sport == "NBA" || if t.sport == "CBB" ||

		# 				if t.spread_result == "loss"

		# 					@net_p_l = (@wager.amount.to_i * 1.1) * -1

		# 				elsif t.spread_result == "win"

		# 					@net_p_l = @wager.amount.to_i

		# 				end

		# 			elsif t.sport == "MLB" || t.sport == "NHL"

		# 				if t.spread_result == "loss"

		# 					if t.spread.to_i > 0

		# 						@net_p_l = @wager.amount.to_i * -1

		# 					elsif t.spread.to_i < 0

		# 						@net_p_l = @wager.amount.to_i * (t.spread.to_i/100)


		# 					end



		# 				end


		# 			end 

		# 				# elsif t.opp == @wager.team1

		# 				# if t.spread_result == "loss"

		# 				# 	@net_p_l = @wager.amount.to_i

		# 				# end




		# 		end


		# 	end

		# end

	







