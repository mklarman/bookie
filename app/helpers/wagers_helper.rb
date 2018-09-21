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

			@current_client_br = @current_client_br.to_i

			@teams.each do |t|

				if t.name == @wager.team1

					if t.sport == "NFL" || t.sport == "CFB" || t.sport == "NBA" || t.sport == "CBB"

						if t.spread_result == "loss"

							@net_p_l = (@wager.amount.to_i * 1.1) * -1

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "loss"

						elsif t.spread_result == "win"

							@net_p_l = @wager.amount.to_i

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"


						elsif t.spread_result == "push"

							@net_p_l = "push"

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br
							@current_br = @current_br 
							@wager.outcome = "push"


						end

					elsif t.sport == "MLB" || t.sport == "NHL"

						if t.spread_result == "loss"

							if t.spread.to_i > 0

								@net_p_l = @wager.amount.to_i * -1

								@wager.net_result = (@net_p_l).round(2)
								@current_client_br = @current_client_br + @net_p_l
								@current_br = @current_br + (@net_p_l * -1)
								@wager.outcome = "loss"

							elsif t.spread.to_i < 0

								@net_p_l = @wager.amount.to_i * (t.spread.to_i/100.00)

								@wager.net_result = (@net_p_l).round(2)
								@current_client_br = @current_client_br + @net_p_l
								@current_br = @current_br + (@net_p_l * -1)
								@wager.outcome = "loss"


							end

						elsif t.spread_result == "win"

							if t.spread.to_i > 0

								@net_p_l = @wager.amount.to_i * (t.spread.to_i/100.00)

								@wager.net_result = @net_p_l
								@current_client_br = @current_client_br + @net_p_l
								@current_br = @current_br + (@net_p_l * -1)
								@wager.outcome = "win"

							elsif t.spread.to_i < 0

								@net_p_l = @wager.amount.to_i

								@wager.net_result = @net_p_l
								@current_client_br = @current_client_br + @net_p_l
								@current_br = @current_br + (@net_p_l * -1)
								@wager.outcome = "win"


							end

						elsif t.spread_result == "push"

							@net_p_l = "push"

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br 
							@current_br = @current_br 
							@wager.outcome = "win"

						end

					end

				elsif t.opp == @wager.team1

					if t.sport == "NFL" || t.sport == "CFB" || t.sport == "NBA" || t.sport == "CBB"

						if t.spread_result == "loss"

							@net_p_l = @wager.amount.to_i

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"


						elsif t.spread_result == "win"

							@net_p_l = (@wager.amount.to_i * -1.1)

							@wager.net_result = (@net_p_l).round(2)
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "loss"

						elsif t.spread_result == "push"

							@net_p_l = "push"

							@wager.net_result = @net_p_l
					
							@wager.outcome = "push"

						end

					elsif t.sport == "MLB" || t.sport == "NHL"

						if t.spread_result == "loss"

							if t.opp_line.to_i > 0

								
								@net_p_l = @wager.amount.to_i * (t.opp_line.to_i/100.00)

								@wager.net_result = @net_p_l
								@current_client_br = @current_client_br + @net_p_l
								@current_br = @current_br + (@net_p_l * -1)
								@wager.outcome = "win"

							elsif t.opp_line.to_i < 0

								@net_p_l = @wager.amount.to_i 

								@wager.net_result = @net_p_l
								@current_client_br = @current_client_br + @net_p_l
								@current_br = @current_br + (@net_p_l * -1)
								@wager.outcome = "win"
							
							end

						elsif t.spread_result == "win"

							if t.opp_line.to_i > 0

								@net_p_l = @wager.amount.to_i * -1

								@wager.net_result = @net_p_l
								@current_client_br = @current_client_br + @net_p_l
								@current_br = @current_br + (@net_p_l * -1)
								@wager.outcome = "loss"


							elsif t.opp_line.to_i < 0

								@net_p_l = @wager.amount.to_i * (t.opp_line.to_i/100.00)

								@wager.net_result = @net_p_l
								@current_client_br = @current_client_br + @net_p_l
								@current_br = @current_br + (@net_p_l * -1)
								@wager.outcome = "loss"


							end

						elsif t.spread_result == "push"

								@net_p_l = "push"

								@wager.net_result = @net_p_l
								@current_client_br = @current_client_br 
								@current_br = @current_br 
								@wager.outcome = "push"

						end

					end

				elsif t.over_line == @wager.team1

					if t.total_points > t.total

						@net_p_l = @wager.amount.to_i

						@wager.net_result = @net_p_l
						@current_client_br = @current_client_br + @net_p_l
						@current_br = @current_br + (@net_p_l * -1)
						@wager.outcome = "win"
					
					elsif t.total_points < t.total

						@net_p_l = @wager.amount.to_i * -1.1

						@wager.net_result = @net_p_l
						@current_client_br = @current_client_br + @net_p_l
						@current_br = @current_br + (@net_p_l * -1)
						@wager.outcome = "loss"

					else

						if t.total_points == t.total 

							@net_p_l = "push"

							@wager.net_result = @net_p_l
							
							@wager.outcome = "push"

						end

					end

				elsif t.under_line == @wager.team1

					if t.total_points > t.total

						@net_p_l = @wager.amount.to_i * -1.1 

						@wager.net_result = @net_p_l
						@current_client_br = @current_client_br + @net_p_l
						@current_br = @current_br + (@net_p_l * -1)
						@wager.outcome = "loss"
						

					elsif t.total_points < t.total

						@net_p_l = @wager.amount.to_i 

						@wager.net_result = @net_p_l
						@current_client_br = @current_client_br + @net_p_l
						@current_br = @current_br + (@net_p_l * -1)
						@wager.outcome = "win"

					else

						if t.total_points == t.total 

							@net_p_l = "push"

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br 
							@current_br = @current_br 
							@wager.outcome = "push"

						end

					end

				end

			end
		end

		def two_team_parlay

			@winners = []
			@losers = []
			@pushes = []
			@current_client_br = @current_client_br.to_i

			if @wager.wager_type == "two team parlay"

				@teams.each do |t|

					if t.name == @wager.team1

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.name
								@wager_hash[:spread] = t.spread

								@winners.push(@wager_hash)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "loss"

							@losers.push(t.name)

						elsif t.spread_result == "push"

							@pushes.push(t.name)

						end

					elsif t.opp == @wager.team1

						if t.spread_result == "win"

							@losers.push(t.opp)

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.opp
								@wager_hash[:spread] = t.opp_line

								@winners.push(@wager_hash)

							else

								@winners.push(t.opp)

							end

						elsif t.spread_result == "push"

							@pushes.push(t.opp)

						end

					elsif t.over_line == @wager.team1

						if t.total_result == "over"

							@winners.push(t.over_line)

						elsif t.total_result == "under"

							@losers.push(t.over_line)

						elsif t.total_result == "push"

							@pushes.push(t.over_line)

						end

					elsif t.under_line == @wager.team1

						if t.total_result == "over"

							@losers.push(t.under_line)

						elsif t.total_result == "under"

							@winners.push(t.under_line)

						elsif t.total_result == "push"

							@pushes.push(t.under_line)

						end

					end 

					if t.name == @wager.team2

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread

								@winners.push(@wager_hash_two)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "loss"

							@losers.push(t.name)

						elsif t.spread_result == "push"

							@pushes.push(t.name)

						end

					elsif t.opp == @wager.team2

						if t.spread_result == "win"

							@losers.push(t.opp)

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line

								@winners.push(@wager_hash_two)

							else

								@winners.push(t.opp)

							end


						elsif t.spread_result == "push"

							@pushes.push(t.opp)

						end

					elsif t.over_line == @wager.team2

						if t.total_result == "over"

							@winners.push(t.over_line)

						elsif t.total_result == "under"

							@losers.push(t.over_line)

						elsif t.total_result == "push"

							@pushes.push(t.over_line)

						end

					elsif t.under_line == @wager.team2

						if t.total_result == "over"

							@losers.push(t.under_line)

						elsif t.total_result == "under"

							@winners.push(t.under_line)

						elsif t.total_result == "push"

							@pushes.push(t.under_line)

						end

					end


				end

				if @losers.length > 0

					@net_p_l = @wager.amount.to_i * -1

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				elsif @losers.length == 0

					if @winners.length == 0

						@net_p_l = "push"

						@wager.net_result = @net_p_l
						
						@wager.outcome = "loss"

					elsif @winners.length == 1

						if @winners[0][1].to_i > 100

							@net_p_l = @wager.amount.to_i * (@winners[0][:spread]/100.00)

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						else 

							@net_p_l = @wager.amount.to_i

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					elsif @winners.length == 2

						@ml_counter = 0

						@winners.each do |w|

							if w.class == Hash

								@ml_counter = @ml_counter + 1

							end

						end


						if @ml_counter == 0

							@net_p_l = @wager.amount.to_i * 2.5

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"


						elsif @ml_counter == 1 || @ml_counter == 2

							@get_val = @winners[1][:spread].to_i

							if @winners[0].class == Hash


								if @winners[0][:spread].to_i > 100

									@parlay_one = (@winners[0][:spread].to_i/100.00) + 1
								

								elsif @winners[0][:spread].to_i < -100

									@parlay_one = (100.00/(@winners[0][:spread].to_i * -1)) + 1

								else

									@parlay_one = (100.00/110) + 1

								end

							else

									@parlay_one = (100.00/110) + 1

							end

							if @winners[1].class == Hash


								if @winners[1][:spread].to_i > 100

									@parlay_two = (@winners[1][:spread].to_i/100.00) + 1
								

								elsif @winners[1][:spread].to_i < -100

									@parlay_two = (100.00/(@winners[1][:spread].to_i * -1)) + 1


								else

									@parlay_two = (100.00/110) + 1


								end

							else

									@parlay_two = (100.00/110) + 1

							end

							@net_p_l = @wager.amount.to_i * @parlay_one * @parlay_two

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					end

				end

			end

		end

		def three_team_parlay

			@winners = []
			@losers = []
			@pushes = []
			@current_client_br = @current_client_br.to_i
			@parlay_one
			@parlay_two
			@parlay_three
			@net_p_l = 0
			

			if @wager.wager_type == "three team parlay"

				@teams.each do |t|

					if t.name == @wager.team1

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.name
								@wager_hash[:spread] = t.spread.to_i

								@winners.push(@wager_hash)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "loss"

							@losers.push(t.name)

						elsif t.spread_result == "push"

							@pushes.push(t.name)

						end

					elsif t.opp == @wager.team1

						if t.spread_result == "win"

							@losers.push(t.opp)

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.opp
								@wager_hash[:spread] = t.opp_line.to_i

								@winners.push(@wager_hash)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "push"

							@pushes.push(t.opp)

						end

					elsif t.over_line == @wager.team1

						if t.total_result == "over"

							@winners.push(t.over_line)

						elsif t.total_result == "under"

							@losers.push(t.over_line)

						elsif t.total_result == "push"

							@pushes.push(t.over_line)

						end

					elsif t.under_line == @wager.team1

						if t.total_result == "over"

							@losers.push(t.under_line)

						elsif t.total_result == "under"

							@winners.push(t.under_line)

						elsif t.total_result == "push"

							@pushes.push(t.under_line)

						end

					end 

					if t.name == @wager.team2

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@winners.push(@wager_hash_two)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "loss"

								@losers.push(t.name)

						elsif t.spread_result == "push"

								@pushes.push(t.name)

							end

					elsif t.opp == @wager.team2

						if t.spread_result == "win"

							@losers.push(t.opp)

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@winners.push(@wager_hash_two)

							else

								@winners.push(t.opp)

							end


						elsif t.spread_result == "push"

							@pushes.push(t.opp)

						end

					elsif t.over_line == @wager.team2

						if t.total_result == "over"

							@winners.push(t.over_line)

						elsif t.total_result == "under"

							@losers.push(t.over_line)

						elsif t.total_result == "push"

							@pushes.push(t.over_line)

						end

					elsif t.under_line == @wager.team2

						if t.total_result == "over"

							@losers.push(t.under_line)

						elsif t.total_result == "under"

							@winners.push(t.under_line)

						elsif t.total_result == "push"

							@pushes.push(t.under_line)

						end

					end

					if t.name == @wager.team3

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_three = Hash.new

								@wager_hash_three[:team] = t.name
								@wager_hash_three[:spread] = t.spread.to_i

								@winners.push(@wager_hash_three)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "loss"

							@losers.push(t.name)

						elsif t.spread_result == "push"

							@pushes.push(t.name)

						end

					elsif t.opp == @wager.team3

						if t.spread_result == "win"

							@losers.push(t.opp)

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_three = Hash.new

								@wager_hash_three[:team] = t.opp
								@wager_hash_three[:spread] = t.opp_line.to_i

								@winners.push(@wager_hash_three)

							else

								@winners.push(t.opp)

							end


						elsif t.spread_result == "push"

							@pushes.push(t.opp)

						end

					elsif t.over_line == @wager.team3

						if t.total_result == "over"

							@winners.push(t.over_line)

						elsif t.total_result == "under"

							@losers.push(t.over_line)

						elsif t.total_result == "push"

							@pushes.push(t.over_line)

						end

					elsif t.under_line == @wager.team3

						if t.total_result == "over"

							@losers.push(t.under_line)

						elsif t.total_result == "under"

							@winners.push(t.under_line)

						elsif t.total_result == "push"

							@pushes.push(t.under_line)

						end

					end

				end

				if @losers.length > 0

					@net_p_l = @wager.amount.to_i * -1

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				elsif @losers.length == 0

					if @winners.length == 0

						@net_p_l = "push"

						@wager.net_result = @net_p_l
						
						@wager.outcome = "loss"

					elsif @winners.length == 1

						if @winners[0][1].to_i > 100

							@net_p_l = @wager.amount.to_i * (@winners[0][:spread]/100.00)

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						else 

							@net_p_l = @wager.amount.to_i

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					elsif @winners.length == 2

						@ml_counter = 0

						@winners.each do |w|

							if w.class == Hash

								@ml_counter = @ml_counter + 1

							end

						end


						if @ml_counter == 0

							@net_p_l = @wager.amount.to_i * 2.5

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"


						elsif @ml_counter == 1 || @ml_counter == 2


							if @winners[0].class == Hash


								if @winners[0][:spread].to_i > 100

									@parlay_one = (@winners[0][:spread].to_i/100.00) + 1
							

								elsif @winners[0][:spread].to_i < -100

									@parlay_one = (100.00/(@winners[0][:spread].to_i * -1)) + 1


								else
								
								@parlay_one = (100.00/110) + 1

								end

							else

									@parlay_one = (100.00/110) + 1

							end

							if @winners[1].class == Hash


								if @winners[1][:spread].to_i > 100

									@parlay_two = (@winners[1][:spread].to_i/100.00) + 1
								

								elsif @winners[1][:spread].to_i < -100

									@parlay_two = (100.00/(@winners[1][:spread].to_i * -1)) + 1


								else

									@parlay_two = (100.00/110) + 1


								end

							else

									@parlay_two = (100.00/110) + 1

							end

							@net_p_l = @wager.amount.to_i * @parlay_one * @parlay_two

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					elsif @winners.length == 3

						@ml_counter = 0

						@winners.each do |w|

							if w.class == Hash

								@ml_counter = @ml_counter + 1

							end

						end


						if @ml_counter == 0

							@net_p_l = @wager.amount.to_i * 5

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"


						elsif @ml_counter > 0


							if @winners[0].class == Hash


								if @winners[0][:spread].to_i > 100

									@parlay_one = (@winners[0][:spread].to_i/100.00) + 9/10.00

								elsif @winners[0][:spread].to_i < -100

									@parlay_one = (100.00/(@winners[0][:spread].to_i * -1)) + 9/10.00

								else

									@parlay_one = (100.00/110) + 1

								
								end


							else

									@parlay_one = (100.00/110) + 1

							end

							if @winners[1].class == Hash


								if @winners[1][:spread].to_i > 100

									@parlay_two = (@winners[1][:spread].to_i/100.00) + 9/10.00
								

								elsif @winners[1][:spread].to_i < -100

									@parlay_two = (100.00/(@winners[1][:spread].to_i * -1)) + 9/10.00

								else

									@parlay_two = (100.00/110) + 9/10.00

								end

							else

									@parlay_two = (100.00/110) + 9/10.00

							end

						if @winners[2].class == Hash


							if @winners[2][:spread].to_i > 100

								@parlay_three = (@winners[2][:spread].to_i/100.00) + 9/10.00

							elsif @winners[2][:spread].to_i < -100

								@parlay_three = (100.00/(@winners[2][:spread].to_i * -1)) + 9/10.00

							else

								@parlay_three = (100.00/110) + 9/10.00

							end

						else

							@parlay_three = (100.00/110) + 9/10.00
						
						end

							@net_p_l = @wager.amount.to_i * @parlay_one * @parlay_two * @parlay_three

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					end

				end

			end

		end

		def five_team_parlay

			@winners = []
			@losers = []
			@pushes = []
			@current_client_br = @current_client_br.to_i

			if @wager.wager_type == "five team parlay"

				@teams.each do |t|

					if t.name == @wager.team1

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.name
								@wager_hash[:spread] = t.spread.to_i

								@winners.push(@wager_hash)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "loss"

							@losers.push(t.name)

						elsif t.spread_result == "push"

							@pushes.push(t.name)

						end

					elsif t.opp == @wager.team1

						if t.spread_result == "win"

							@losers.push(t.opp)

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.opp
								@wager_hash[:spread] = t.opp_line.to_i

								@winners.push(@wager_hash)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "push"

							@pushes.push(t.opp)

						end

					elsif t.over_line == @wager.team1

						if t.total_result == "over"

							@winners.push(t.over_line)

						elsif t.total_result == "under"

							@losers.push(t.over_line)

						elsif t.total_result == "push"

							@pushes.push(t.over_line)

						end

					elsif t.under_line == @wager.team1

						if t.total_result == "over"

							@losers.push(t.under_line)

						elsif t.total_result == "under"

							@winners.push(t.under_line)

						elsif t.total_result == "push"

							@pushes.push(t.under_line)

						end

					end 

					if t.name == @wager.team2

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@winners.push(@wager_hash_two)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "loss"

								@losers.push(t.name)

						elsif t.spread_result == "push"

								@pushes.push(t.name)

							end

					elsif t.opp == @wager.team2

						if t.spread_result == "win"

							@losers.push(t.opp)

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@winners.push(@wager_hash_two)

							else

								@winners.push(t.opp)

							end


						elsif t.spread_result == "push"

							@pushes.push(t.opp)

						end

					elsif t.over_line == @wager.team2

						if t.total_result == "over"

							@winners.push(t.over_line)

						elsif t.total_result == "under"

							@losers.push(t.over_line)

						elsif t.total_result == "push"

							@pushes.push(t.over_line)

						end

					elsif t.under_line == @wager.team2

						if t.total_result == "over"

							@losers.push(t.under_line)

						elsif t.total_result == "under"

							@winners.push(t.under_line)

						elsif t.total_result == "push"

							@pushes.push(t.under_line)

						end

					end

					if t.name == @wager.team3

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_three = Hash.new

								@wager_hash_three[:team] = t.name
								@wager_hash_three[:spread] = t.spread.to_i

								@winners.push(@wager_hash_three)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "loss"

							@losers.push(t.name)

						elsif t.spread_result == "push"

							@pushes.push(t.name)

						end

					elsif t.opp == @wager.team3

						if t.spread_result == "win"

							@losers.push(t.opp)

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_three = Hash.new

								@wager_hash_three[:team] = t.opp
								@wager_hash_three[:spread] = t.opp_line.to_i

								@winners.push(@wager_hash_three)

							else

								@winners.push(t.opp)

							end


						elsif t.spread_result == "push"

							@pushes.push(t.opp)

						end

					elsif t.over_line == @wager.team3

						if t.total_result == "over"

							@winners.push(t.over_line)

						elsif t.total_result == "under"

							@losers.push(t.over_line)

						elsif t.total_result == "push"

							@pushes.push(t.over_line)

						end

					elsif t.under_line == @wager.team3

						if t.total_result == "over"

							@losers.push(t.under_line)

						elsif t.total_result == "under"

							@winners.push(t.under_line)

						elsif t.total_result == "push"

							@pushes.push(t.under_line)

						end

					end

					if t.name == @wager.team4

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_four = Hash.new

								@wager_hash_four[:team] = t.name
								@wager_hash_four[:spread] = t.spread.to_i

								@winners.push(@wager_hash_four)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "loss"

							@losers.push(t.name)

						elsif t.spread_result == "push"

							@pushes.push(t.name)

						end

					elsif t.opp == @wager.team4

						if t.spread_result == "win"

							@losers.push(t.opp)

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_four = Hash.new

								@wager_hash_four[:team] = t.opp
								@wager_hash_four[:spread] = t.opp_line.to_i

								@winners.push(@wager_hash_four)

							else

								@winners.push(t.opp)

							end


						elsif t.spread_result == "push"

							@pushes.push(t.opp)

						end

					elsif t.over_line == @wager.team4

						if t.total_result == "over"

							@winners.push(t.over_line)

						elsif t.total_result == "under"

							@losers.push(t.over_line)

						elsif t.total_result == "push"

							@pushes.push(t.over_line)

						end

					elsif t.under_line == @wager.team4

						if t.total_result == "over"

							@losers.push(t.under_line)

						elsif t.total_result == "under"

							@winners.push(t.under_line)

						elsif t.total_result == "push"

							@pushes.push(t.under_line)

						end

					end

					if t.name == @wager.team5

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_five = Hash.new

								@wager_hash_five[:team] = t.name
								@wager_hash_five[:spread] = t.spread.to_i

								@winners.push(@wager_hash_five)

							else

								@winners.push(t.name)

							end

						elsif t.spread_result == "loss"

							@losers.push(t.name)

						elsif t.spread_result == "push"

							@pushes.push(t.name)

						end

					elsif t.opp == @wager.team5

						if t.spread_result == "win"

							@losers.push(t.opp)

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_five = Hash.new

								@wager_hash_five[:team] = t.opp
								@wager_hash_five[:spread] = t.opp_line.to_i

								@winners.push(@wager_hash_three)

							else

								@winners.push(t.opp)

							end


						elsif t.spread_result == "push"

							@pushes.push(t.opp)

						end

					elsif t.over_line == @wager.team5

						if t.total_result == "over"

							@winners.push(t.over_line)

						elsif t.total_result == "under"

							@losers.push(t.over_line)

						elsif t.total_result == "push"

							@pushes.push(t.over_line)

						end

					elsif t.under_line == @wager.team5

						if t.total_result == "over"

							@losers.push(t.under_line)

						elsif t.total_result == "under"

							@winners.push(t.under_line)

						elsif t.total_result == "push"

							@pushes.push(t.under_line)

						end

					end


				end

				if @losers.length > 0

					@net_p_l = @wager.amount.to_i * -1

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				elsif @losers.length == 0

					if @winners.length == 0

						@net_p_l = "push"

						@wager.net_result = @net_p_l
						
						@wager.outcome = "loss"

					elsif @winners.length == 1

						if @winners[0][1].to_i > 100

							@net_p_l = @wager.amount.to_i * (@winners[0][:spread]/100.00)

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						else 

							@net_p_l = @wager.amount.to_i

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					elsif @winners.length == 2

						@ml_counter = 0

						@winners.each do |w|

							if w.class == Hash

								@ml_counter = @ml_counter + 1

							end

						end


						if @ml_counter == 0

							@net_p_l = @wager.amount.to_i * 2.5

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"


						elsif @ml_counter == 1 || @ml_counter == 2


							if @winners[0].class == Hash


								if @winners[0][:spread].to_i > 100

									@parlay_one = (@winners[0][:spread].to_i/100.00) + 9/10.00

								elsif @winners[0][:spread].to_i < -100

									@parlay_one = (100.00/(@winners[0][:spread].to_i * -1)) + 9/10.00

								else

									@parlay_one = (100.00/110) + 9/10.00

								end

							else

									@parlay_one = (100.00/110) + 9/10.00

							end

							if @winners[1].class == Hash


								if @winners[1][:spread].to_i > 100

									@parlay_two = (@winners[1][:spread].to_i/100.00) + 9/10.00
								end

								if @winners[1][:spread].to_i < -100

									@parlay_two = (100.00/(@winners[1][:spread].to_i * -1)) + 9/10.00

								end

							else

									@parlay_two = (100.00/110) + 9/10.00

							end

							@net_p_l = @wager.amount.to_i * @parlay_one * @parlay_two

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					elsif @winners.length == 3

						@ml_counter = 0

						@winners.each do |w|

							if w.class == Hash

								@ml_counter = @ml_counter + 1

							end

						end


						if @ml_counter == 0

							@net_p_l = @wager.amount.to_i * 5

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"


						elsif @ml_counter == 1 || @ml_counter == 2 || @ml_counter == 3


							if @winners[0].class == Hash


								if @winners[0][:spread].to_i > 100

									@parlay_one = (@winners[0][:spread].to_i/100.00) + 9/10.00
								end

								if @winners[0][:spread].to_i < -100

									@parlay_one = (100.00/(@winners[0][:spread].to_i * -1)) + 9/10.00

								end

							else

									@parlay_one = (100.00/110) + 1

							end

							if @winners[1].class == Hash


								if @winners[1][:spread].to_i > 100

									@parlay_two = (@winners[1][:spread].to_i/100.00) + 9/10.00
								end

								if @winners[1][:spread].to_i < -100

									@parlay_two = (100.00/(@winners[1][:spread].to_i * -1)) + 9/10.00

								end

							else

									@parlay_two = (100.00/110) + 9/10.00

							end

						if @winners[2].class == Hash


							if @winners[2][:spread].to_i > 100

								@parlay_three = (@winners[2][:spread].to_i/100.00) + 9/10.00

							elsif @winners[2][:spread].to_i < -100

								@parlay_three = (100.00/(@winners[2][:spread].to_i * -1)) + 9/10.00

							else

								@parlay_three = (100.00/110) + 9/10.00

							end

						else 

							@parlay_three = (100.00/110) + 9/10.00
						
						end

							@net_p_l = @wager.amount.to_i * @parlay_one * @parlay_two * @parlay_three

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					elsif @winners.length == 4

						@ml_counter = 0

						@winners.each do |w|

							if w.class == Hash

								@ml_counter = @ml_counter + 1

							end

						end


						if @ml_counter == 0

							@net_p_l = @wager.amount.to_i * 10

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"


						elsif @ml_counter == 1 || @ml_counter == 2 || @ml_counter == 3 || @ml_counter == 4 || @ml_counter == 5


							if @winners[0].class == Hash


								if @winners[0][:spread].to_i > 100

									@parlay_one = (@winners[0][:spread].to_i/100.00) + 9/10.00
								end

								if @winners[0][:spread].to_i < -100

									@parlay_one = (100.00/(@winners[0][:spread].to_i * -1)) + 9/10.00

								end

							else

									@parlay_one = (100.00/110) + 1

							end

							if @winners[1].class == Hash


								if @winners[1][:spread].to_i > 100

									@parlay_two = (@winners[1][:spread].to_i/100.00) + 9/10.00
								end

								if @winners[1][:spread].to_i < -100

									@parlay_two = (100.00/(@winners[1][:spread].to_i * -1)) + 9/10.00

								end

							else

									@parlay_two = (100.00/110) + 9/10.00

							end

							if @winners[2].class == Hash


								if @winners[2][:spread].to_i > 100

									@parlay_three = (@winners[2][:spread].to_i/100.00) + 9/10.00

								elsif @winners[2][:spread].to_i < -100

									@parlay_three = (100.00/(@winners[2][:spread].to_i * -1)) + 9/10.00

								else

									@parlay_three = (100.00/110) + 9/10.00

								end

							else

								@parlay_three = (100.00/110) + 9/10.00

						
							end

							if @winners[3].class == Hash


								if @winners[3][:spread].to_i > 100

									@parlay_four = (@winners[3][:spread].to_i/100.00) + 9/10.00

								elsif @winners[3][:spread].to_i < -100

									@parlay_four = (100.00/(@winners[3][:spread].to_i * -1)) + 9/10.00

								else

									@parlay_four = (100.00/110) + 9/10.00

								end

							else

								@parlay_four = (100.00/110) + 9/10.00
						
							end

							@net_p_l = @wager.amount.to_i * @parlay_one * @parlay_two * @parlay_three * @parlay_four

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					elsif @winners.length == 5

						@ml_counter = 0

						@winners.each do |w|

							if w.class == Hash

								@ml_counter = @ml_counter + 1

							end

						end


						if @ml_counter == 0

							@net_p_l = @wager.amount.to_i * 20

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"


						elsif @ml_counter == 1 || @ml_counter == 2 || @ml_counter == 3 || @ml_counter == 4


							if @winners[0].class == Hash


								if @winners[0][:spread].to_i > 100

									@parlay_one = (@winners[0][:spread].to_i/100.00) + 9/10.00

								elsif @winners[0][:spread].to_i < -100

									@parlay_one = (100.00/(@winners[0][:spread].to_i * -1)) + 9/10.00

								else

									@parlay_one = (100.00/110) + 1

								end

							else

									@parlay_one = (100.00/110) + 1

							end

							if @winners[1].class == Hash


								if @winners[1][:spread].to_i > 100

									@parlay_two = (@winners[1][:spread].to_i/100.00) + 9/10.00
								

								elsif @winners[1][:spread].to_i < -100

									@parlay_two = (100.00/(@winners[1][:spread].to_i * -1)) + 9/10.00


								else

									@parlay_two = (100.00/110) + 9/10.00

								end

							else

									@parlay_two = (100.00/110) + 9/10.00

							end

							if @winners[2].class == Hash


								if @winners[2][:spread].to_i > 100

									@parlay_three = (@winners[2][:spread].to_i/100.00) + 9/10.00

								elsif @winners[2][:spread].to_i < -100

									@parlay_three = (100.00/(@winners[2][:spread].to_i * -1)) + 9/10.00

								else

									@parlay_three = (100.00/110) + 9/10.00

								end

							else

									@parlay_three = (100.00/110) + 9/10.00
						
							end

							if @winners[3].class == Hash


								if @winners[3][:spread].to_i > 100

									@parlay_four = (@winners[3][:spread].to_i/100.00) + 9/10.00

								elsif @winners[3][:spread].to_i < -100

									@parlay_four = (100.00/(@winners[3][:spread].to_i * -1)) + 9/10.00

								else

									@parlay_four = (100.00/110) + 9/10.00

								end

							else

									@parlay_four = (100.00/110) + 9/10.00
						
							end

							if @winners[4].class == Hash


								if @winners[4][:spread].to_i > 100

									@parlay_five = (@winners[4][:spread].to_i/100.00) + 9/10.00

								elsif @winners[4][:spread].to_i < -100

									@parlay_five = (100.00/(@winners[4][:spread].to_i * -1)) + 9/10.00

								else

									@parlay_five = (100.00/110) + 9/10.00

								end

							else

								@parlay_five = (100.00/110) + 9/10.00

						
							end

							@net_p_l = @wager.amount.to_i * @parlay_one * @parlay_two * @parlay_three * @parlay_four * @parlay_five

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end


					end

				end
			end

		end

		def two_team_teaser

			@winners = []
			@losers = []
			@current_client_br = @current_client_br.to_i

			if @wager.wager_type == "two team teaser"

				@teams.each do |t|

					if t.name == @wager.team1

						if (t.score.to_i + @wager.spread1.to_i) > t.opp_score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.opp == @wager.team1

						if (t.opp_score.to_i + @wager.spread1.to_i) > t.score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.over_line == @wager.team1

						if t.total_points.to_i > @wager.spread1

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.under_line == @wager.team1

						if t.total_points.to_i < @wager.spread1

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					end

					if t.name == @wager.team2

						if (t.score.to_i + @wager.spread2.to_i) > t.opp_score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.opp == @wager.team2

						if (t.opp_score.to_i + @wager.spread2.to_i) > t.score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.over_line == @wager.team2

						if t.total_points.to_i > @wager.spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team1)

						end

					elsif t.under_line == @wager.team2

						if t.total_points.to_i < @wager.spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					end


				end

				if @losers.length > 0

					@net_p_l = @wager.amount * -1.2

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				else

					@net_p_l = @wager.amount.to_i

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"

				end


			end


		end

		def three_team_teaser

			@winners = []
			@losers = []
			@current_client_br = @current_client_br.to_i

			if @wager.wager_type == "three team teaser"

				@teams.each do |t|

					if t.name == @wager.team1

						if (t.score.to_i + @wager.spread1.to_i) > t.opp_score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.opp == @wager.team1

						if (t.opp_score.to_i + @wager.spread1.to_i) > t.score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.over_line == @wager.team1

						if t.total_points.to_i > @wager.spread1

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.under_line == @wager.team1

						if t.total_points.to_i < @wager.spread1.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					end

					if t.name == @wager.team2

						if (t.score.to_i + @wager.spread2.to_i) > t.opp_score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.opp == @wager.team2

						if (t.opp_score.to_i + @wager.spread2.to_i) > t.score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.over_line == @wager.team2

						if t.total_points.to_i > @wager.spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.under_line == @wager.team2

						if t.total_points.to_i < @wager.spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					end

					if t.name == @wager.team3

						if (t.score.to_i + @wager.spread3.to_i) > t.opp_score.to_i

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.opp == @wager.team3

						if (t.opp_score.to_i + @wager.spread3.to_i) > t.score.to_i

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.over_line == @wager.team3

						if t.total_points.to_i > @wager.spread3

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.under_line == @wager.team3

						if t.total_points.to_i < @wager.spread3

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					end


				end

				if @losers.length > 0

					@net_p_l = @wager.amount * -1.3

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"


				else

					@net_p_l = @wager.amount.to_i

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"


				end


			end


		end

		def five_team_teaser

			@winners = []
			@losers = []
			@current_client_br = @current_client_br.to_i

			if @wager.wager_type == "five team teaser"

				@teams.each do |t|

					if t.name == @wager.team1

						if (t.score.to_i + @wager.spread1.to_i) > t.opp_score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.opp == @wager.team1

						if (t.opp_score.to_i + @wager.spread1.to_i) > t.score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.over_line == @wager.team1

						if t.total_points.to_i > @wager.spread1

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.under_line == @wager.team1

						if t.total_points.to_i < @wager.spread1

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					end

					if t.name == @wager.team2

						if (t.score.to_i + @wager.spread2.to_i) > t.opp_score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.opp == @wager.team2

						if (t.opp_score.to_i + @wager.spread2.to_i) > t.score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.over_line == @wager.team2

						if t.total_points.to_i > @wager.spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.under_line == @wager.team2

						if t.total_points.to_i < @wager.spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					end

					if t.name == @wager.team3

						if (t.score.to_i + @wager.spread3.to_i) > t.opp_score.to_i

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.opp == @wager.team3

						if (t.opp_score.to_i + @wager.spread3.to_i) > t.score.to_i

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.over_line == @wager.team3

						if t.total_points.to_i > @wager.spread3

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.under_line == @wager.team3

						if t.total_points.to_i < @wager.spread3

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					end

					if t.name == @wager.team4

						if (t.score.to_i + @wager.spread4.to_i) > t.opp_score.to_i

							@winners.push(@wager.team4)

						else

							@losers.push(@wager.team4)

						end

					elsif t.opp == @wager.team4

						if (t.opp_score.to_i + @wager.spread4.to_i) > t.score.to_i

							@winners.push(@wager.team4)

						else

							@losers.push(@wager.team4)

						end

					elsif t.over_line == @wager.team4

						if t.total_points.to_i > @wager.spread4

							@winners.push(@wager.team4)

						else

							@losers.push(@wager.team4)

						end

					elsif t.under_line == @wager.team4

						if t.total_points.to_i < @wager.spread4

							@winners.push(@wager.team4)

						else

							@losers.push(@wager.team4)

						end

					end

					if t.name == @wager.team5

						if (t.score.to_i + @wager.spread5.to_i) > t.opp_score.to_i

							@winners.push(@wager.team5)

						else

							@losers.push(@wager.team5)

						end

					elsif t.opp == @wager.team5

						if (t.opp_score.to_i + @wager.spread5.to_i) > t.score.to_i

							@winners.push(@wager.team5)

						else

							@losers.push(@wager.team5)

						end

					elsif t.over_line == @wager.team5

						if t.total_points.to_i > @wager.spread5

							@winners.push(@wager.team5)

						else

							@losers.push(@wager.team5)

						end

					elsif t.under_line == @wager.team5

						if t.total_points.to_i < @wager.spread5

							@winners.push(@wager.team5)

						else

							@losers.push(@wager.team5)

						end

					end


				end

				if @losers.length > 0

					@net_p_l = @wager.amount * -1.2

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				else

					@net_p_l = @wager.amount.to_i * 1.5

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"


				end


			end



		end

		def two_team_reverse

			@rev_win = []
			@rev_lose = []
			@rev_push = []
			@current_client_br = @current_client_br.to_i

			if @wager.wager_type == "two team reverse"

				@teams.each do |t|

					if t.name == @wager.team1

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.name
								@wager_hash[:spread] = t.spread.to_i

								@rev_win.push(@wager_hash)

							else

								@rev_win.push(t.name)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.name
								@wager_hash[:spread] = t.spread.to_i

								@rev_lose.push(@wager_hash)

							else

								@rev_lose.push(t.name)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.name)

						end

					elsif t.opp == @wager.team1

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.opp
								@wager_hash[:spread] = t.opp_line.to_i

								@rev_lose.push(@wager_hash)

							else

								@rev_lose.push(t.opp)

							end


						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.opp
								@wager_hash[:spread] = t.opp_line.to_i

								@rev_win.push(@wager_hash)

							else

								@rev_win.push(t.opp)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.opp)

						end

					elsif t.over_line == @wager.team1

						if t.total_result == "over"

							@rev_win.push(t.over_line)

						elsif t.total_result == "under"

							@rev_lose.push(t.over_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line)

						end

					elsif t.under_line == @wager.team1

						if t.total_result == "over"

							@rev_lose.push(t.under_line)

						elsif t.total_result == "under"

							@rev_win.push(t.under_line)

						elsif t.total_result == "push"

							@rev_push.push(t.under_line)

						end

					end 

					if t.name == @wager.team2

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.name)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.name)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.name)

						end

					elsif t.opp == @wager.team2

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.opp)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.opp)

							end


						elsif t.spread_result == "push"

							@rev_push.push(t.opp)

						end

					elsif t.over_line == @wager.team2

						if t.total_result == "over"

							@rev_win.push(t.over_line)

						elsif t.total_result == "under"

							@rev_lose.push(t.over_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line)

						end

					elsif t.under_line == @wager.team2

						if t.total_result == "over"

							@rev_lose.push(t.under_line)

						elsif t.total_result == "under"

							@rev_win.push(t.under_line)

						elsif t.total_result == "push"

							@rev_push.push(t.under_line)

						end

					end


				end

				if @rev_push.length == 2

					@net_p_l = "push"

					@wager.net_result = @net_p_l
					
					@wager.outcome = "push"

				elsif @rev_push.length == 1 && @rev_lose.length == 1

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@net_p_l = @wager.amount.to_i * -1

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "loss"

						elsif @rev_lose[0][:spread] < -100

							@net_p_l = @wager.amount * (@rev_lose[0][:spread].to_i/100.00)

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "loss"

						end

					else

						@net_p_l = @wager.amount.to_i * -1.1

						@wager.net_result = @net_p_l
						@current_client_br = @current_client_br + @net_p_l
						@current_br = @current_br + (@net_p_l * -1)
						@wager.outcome = "loss"

					end

				elsif @rev_push.length == 1 && @rev_win.length == 1

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@net_p_l = @wager.amount.to_i 

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						elsif @rev_win[0][:spread] > 100

							@net_p_l = @wager.amount * (@rev_win[0][:spread].to_i/100.00)

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					else

						@net_p_l = @wager.amount.to_i 

						@wager.net_result = @net_p_l
						@current_client_br = @current_client_br + @net_p_l
						@current_br = @current_br + (@net_p_l * -1)
						@wager.outcome = "win"

					end

				elsif @rev_win.length == 1 && @rev_lose.length == 1

					@rev_team1
					@rev_team2

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i 

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00)

						end

					else

						@rev_team1 = @wager.amount.to_i 

					end

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -2

						elsif @rev_lose[0][:spread] < -100

							@rev_team2 = (@wager.amount * (@rev_lose[0][:spread].to_i/100.00)) * 2

						end

					else

						@rev_team2 = @wager.amount.to_i * -2.2

					end

					@net_p_l = @rev_team1 + @rev_team2

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				elsif @rev_win.length == 2

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 2

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 2

						end

					else

						@rev_team1 = @wager.amount.to_i * 2

					end

					if @rev_win[1].class == Hash

						if @rev_win[1][:spread] < -100

							@rev_team2 = @wager.amount.to_i * 2

						elsif @rev_win[1][:spread] > 100

							@rev_team2 = @wager.amount * (@rev_win[1][:spread].to_i/100.00) * 2

						end

					else

						@rev_team2 = @wager.amount.to_i * 2

					end

					@net_p_l = @rev_team1 + @rev_team2

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"

				elsif @rev_lose.length == 2

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team1 = @wager.amount.to_i * -1

						elsif @rev_lose[0][:spread] < -100

							@rev_team1 = @wager.amount * (@rev_lose[0][:spread].to_i/100.00) 

						end

					else

						@rev_team1 = @wager.amount.to_i * -1.1

					end

					if @rev_lose[1].class == Hash

						if @rev_lose[1][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -1

						elsif @rev_lose[1][:spread] < -100

							@rev_team2 = @wager.amount * (@rev_lose[1][:spread].to_i/100.00)

						end

					else

						@rev_team2 = @wager.amount.to_i * -1.1

					end

					@net_p_l = @rev_team1 + @rev_team2

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				end

			end


		end

		def three_team_reverse

			@rev_win = []
			@rev_lose = []
			@rev_push = []
			@current_client_br = @current_client_br.to_i
			@net_p_l = 0

			if @wager.wager_type == "three team reverse"

				@teams.each do |t|

					if t.name == @wager.team1

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.name
								@wager_hash[:spread] = t.spread.to_i

								@rev_win.push(@wager_hash)

							else

								@rev_win.push(t.name)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.name
								@wager_hash[:spread] = t.spread.to_i

								@rev_lose.push(@wager_hash)

							else

								@rev_lose.push(t.name)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.name)

						end

					elsif t.opp == @wager.team1

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.opp
								@wager_hash[:spread] = t.opp_line.to_i

								@rev_lose.push(@wager_hash)

							else

								@rev_lose.push(t.opp)

							end


						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.opp
								@wager_hash[:spread] = t.opp_line.to_i

								@rev_win.push(@wager_hash)

							else

								@rev_win.push(t.opp)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.opp)

						end

					elsif t.over_line == @wager.team1

						if t.total_result == "over"

							@rev_win.push(t.over_line)

						elsif t.total_result == "under"

							@rev_lose.push(t.over_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line)

						end

					elsif t.under_line == @wager.team1

						if t.total_result == "over"

							@rev_lose.push(t.under_line)

						elsif t.total_result == "under"

							@rev_win.push(t.under_line)

						elsif t.total_result == "push"

							@rev_push.push(t.under_line)

						end

					end 

					if t.name == @wager.team2

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.name)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.name)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.name)

						end

					elsif t.opp == @wager.team2

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.opp)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.opp)

							end


						elsif t.spread_result == "push"

							@rev_push.push(t.opp)

						end

					elsif t.over_line == @wager.team2

						if t.total_result == "over"

							@rev_win.push(t.over_line)

						elsif t.total_result == "under"

							@rev_lose.push(t.over_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line)

						end

					elsif t.under_line == @wager.team2

						if t.total_result == "over"

							@rev_lose.push(t.under_line)

						elsif t.total_result == "under"

							@rev_win.push(t.under_line)

						elsif t.total_result == "push"

							@rev_push.push(t.under_line)

						end

					end

					if t.name == @wager.team3

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.name)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.name)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.name)

						end

					elsif t.opp == @wager.team3

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.opp)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.opp)

							end


						elsif t.spread_result == "push"

							@rev_push.push(t.opp)

						end

					elsif t.over_line == @wager.team3

						if t.total_result == "over"

							@rev_win.push(t.over_line)

						elsif t.total_result == "under"

							@rev_lose.push(t.over_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line)

						end

					elsif t.under_line == @wager.team3

						if t.total_result == "over"

							@rev_lose.push(t.under_line)

						elsif t.total_result == "under"

							@rev_win.push(t.under_line)

						elsif t.total_result == "push"

							@rev_push.push(t.under_line)

						end

					end


				end

				if @rev_push.length == 3

					@net_p_l = "push"
					
					@wager.net_result = @net_p_l
					
					@wager.outcome = "push"

				elsif @rev_push.length == 2 && @rev_lose.length == 1

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@net_p_l = @wager.amount.to_i * -1

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "loss"

						elsif @rev_lose[0][:spread] < -100

							@net_p_l = @wager.amount * (@rev_lose[0][:spread].to_i/100.00)

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "loss"

						end

					else

						@net_p_l = @wager.amount.to_i * -1.1

						@wager.net_result = @net_p_l
						@current_client_br = @current_client_br + @net_p_l
						@current_br = @current_br + (@net_p_l * -1)
						@wager.outcome = "loss"

					end

				elsif @rev_push.length == 2 && @rev_win.length == 1

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@net_p_l = @wager.amount.to_i 

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						elsif @rev_win[0][:spread] > 100

							@net_p_l = @wager.amount * (@rev_win[0][:spread].to_i/100.00)

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					else

						@net_p_l = @wager.amount.to_i 

						@wager.net_result = @net_p_l
						@current_client_br = @current_client_br + @net_p_l
						@current_br = @current_br + (@net_p_l * -1)
						@wager.outcome = "win"

					end

				elsif @rev_push.length == 1 && @rev_win.length == 2

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 3

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 3

						end

					else

						@rev_team1 = @wager.amount.to_i * 3

					end

					if @rev_win[1].class == Hash

						if @rev_win[1][:spread] < -100

							@rev_team2 = @wager.amount.to_i * 3

						elsif @rev_win[1][:spread] > 100

							@rev_team2 = @wager.amount * (@rev_win[1][:spread].to_i/100.00) * 3

						end

					else

						@rev_team2 = @wager.amount.to_i * 3

					end

					@net_p_l = @rev_team1 + @rev_team2

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"

				elsif @rev_push.length == 1 && @rev_lose.length == 2

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team1 = @wager.amount.to_i * -2

						elsif @rev_lose[0][:spread] < -100

							@rev_team1 = @wager.amount * (@rev_lose[0][:spread].to_i/100.00) * 2 

						end

					else

						@rev_team1 = @wager.amount.to_i * -2.2

					end

					if @rev_lose[1].class == Hash

						if @rev_lose[1][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -2

						elsif @rev_lose[1][:spread] < -100

							@rev_team2 = @wager.amount * (@rev_lose[1][:spread].to_i/100.00) * 2

						end

					else

						@rev_team2 = @wager.amount.to_i * -2.2

					end

					@net_p_l = @rev_team1 + @rev_team2

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				elsif @rev_push.length == 1 && @rev_lose.length == 1 && @rev_win.length == 1

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 2

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 2

						end

					else

						@rev_team1 = @wager.amount.to_i * 2 

					end

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -3

						elsif @rev_lose[0][:spread] < -100

							@rev_team2 = (@wager.amount * (@rev_lose[0][:spread].to_i/100.00)) * 3

						end

					else

						@rev_team2 = @wager.amount.to_i * -3.3

					end

					@net_p_l = @rev_team1 + @rev_team2

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"


				elsif @rev_win.length == 1 && @rev_lose.length == 2

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 2

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 2

						end

					else

						@rev_team1 = @wager.amount.to_i * 2 

					end

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -3

						elsif @rev_lose[0][:spread] < -100

							@rev_team2 = (@wager.amount * (@rev_lose[0][:spread].to_i/100.00)) * 3

						end

					else

						@rev_team2 = @wager.amount.to_i * -3.3

					end

					if @rev_lose[1].class == Hash

						if @rev_lose[1][:spread] > 100

							@rev_team3 = @wager.amount.to_i * -3

						elsif @rev_lose[1][:spread] < -100

							@rev_team3 = (@wager.amount * (@rev_lose[1][:spread].to_i/100.00)) * 3

						end

					else

						@rev_team3 = @wager.amount.to_i * -3.3

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				elsif @rev_win.length == 2 && @rev_lose.length == 1

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 3

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 3

						end

					else

						@rev_team1 = @wager.amount.to_i * 3 

					end

					if @rev_win[1].class == Hash

						if @rev_win[1][:spread] < -100

							@rev_team2 = @wager.amount.to_i * 3

						elsif @rev_win[1][:spread] > 100

							@rev_team2 = @wager.amount * (@rev_win[1][:spread].to_i/100.00) * 3

						end

					else

						@rev_team2 = @wager.amount.to_i * 3 

					end

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team3 = @wager.amount.to_i * -4

						elsif @rev_lose[0][:spread] < -100

							@rev_team3 = (@wager.amount * (@rev_lose[0][:spread].to_i/100.00)) * 4

						end

					else

						@rev_team3 = @wager.amount.to_i * -4.4

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"

	

				elsif @rev_win.length == 3

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 4

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 4

						end

					else

						@rev_team1 = @wager.amount.to_i * 4 

					end

					if @rev_win[1].class == Hash

						if @rev_win[1][:spread] < -100

							@rev_team2 = @wager.amount.to_i * 4

						elsif @rev_win[1][:spread] > 100

							@rev_team2 = @wager.amount * (@rev_win[1][:spread].to_i/100.00) * 4

						end

					else

						@rev_team2 = @wager.amount.to_i * 4

					end

					if @rev_win[2].class == Hash

						if @rev_win[2][:spread] < -100

							@rev_team3 = @wager.amount.to_i * 4

						elsif @rev_win[2][:spread] > 100

							@rev_team3 = (@wager.amount * (@rev_win[2][:spread].to_i/100.00)) * 4

						end

					else

						@rev_team3 = @wager.amount.to_i * 4

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"
				
				elsif @rev_lose.length == 3

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team1 = @wager.amount.to_i * -2

						elsif @rev_lose[0][:spread] < -100

							@rev_team1 = @wager.amount * (@rev_lose[0][:spread].to_i/100.00) * 2

						end

					else

						@rev_team1 = @wager.amount.to_i * -2.2 

					end

					if @rev_lose[1].class == Hash

						if @rev_lose[1][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -2

						elsif @rev_lose[1][:spread] < -100

							@rev_team2 = (@wager.amount * (@rev_lose[1][:spread].to_i/100.00)) * 2

						end

					else

						@rev_team2 = @wager.amount.to_i * -2.2

					end

					if @rev_lose[2].class == Hash

						if @rev_lose[2][:spread] > 100

							@rev_team3 = @wager.amount.to_i * -2

						elsif @rev_lose[2][:spread] < -100

							@rev_team3 = (@wager.amount * (@rev_lose[2][:spread].to_i/100.00)) * 2

						end

					else

						@rev_team3 = @wager.amount.to_i * -2.2

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				end

			end

		end

		def four_team_reverse

			@rev_win = []
			@rev_lose = []
			@rev_push = []
			@current_client_br = @current_client_br.to_i

			if @wager.wager_type == "four team reverse"

				@teams.each do |t|

					if t.name == @wager.team1

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.name
								@wager_hash[:spread] = t.spread.to_i

								@rev_win.push(@wager_hash)

							else

								@rev_win.push(t.name)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.name
								@wager_hash[:spread] = t.spread.to_i

								@rev_lose.push(@wager_hash)

							else

								@rev_lose.push(t.name)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.name)

						end

					elsif t.opp == @wager.team1

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.opp
								@wager_hash[:spread] = t.opp_line.to_i

								@rev_lose.push(@wager_hash)

							else

								@rev_lose.push(t.opp)

							end


						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.opp
								@wager_hash[:spread] = t.opp_line.to_i

								@rev_win.push(@wager_hash)

							else

								@rev_win.push(t.opp)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.opp)

						end

					elsif t.over_line == @wager.team1

						if t.total_result == "over"

							@rev_win.push(t.over_line)

						elsif t.total_result == "under"

							@rev_lose.push(t.over_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line)

						end

					elsif t.under_line == @wager.team1

						if t.total_result == "over"

							@rev_lose.push(t.under_line)

						elsif t.total_result == "under"

							@rev_win.push(t.under_line)

						elsif t.total_result == "push"

							@rev_push.push(t.under_line)

						end

					end 

					if t.name == @wager.team2

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.name)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.name)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.name)

						end

					elsif t.opp == @wager.team2

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.opp)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.opp)

							end


						elsif t.spread_result == "push"

							@rev_push.push(t.opp)

						end

					elsif t.over_line == @wager.team2

						if t.total_result == "over"

							@rev_win.push(t.over_line)

						elsif t.total_result == "under"

							@rev_lose.push(t.over_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line)

						end

					elsif t.under_line == @wager.team2

						if t.total_result == "over"

							@rev_lose.push(t.under_line)

						elsif t.total_result == "under"

							@rev_win.push(t.under_line)

						elsif t.total_result == "push"

							@rev_push.push(t.under_line)

						end

					end

					if t.name == @wager.team3

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.name)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.name)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.name)

						end

					elsif t.opp == @wager.team3

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.opp)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.opp)

							end


						elsif t.spread_result == "push"

							@rev_push.push(t.opp)

						end

					elsif t.over_line == @wager.team3

						if t.total_result == "over"

							@rev_win.push(t.over_line)

						elsif t.total_result == "under"

							@rev_lose.push(t.over_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line)

						end

					elsif t.under_line == @wager.team3

						if t.total_result == "over"

							@rev_lose.push(t.under_line)

						elsif t.total_result == "under"

							@rev_win.push(t.under_line)

						elsif t.total_result == "push"

							@rev_push.push(t.under_line)

						end

					end

					if t.name == @wager.team4

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.name)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.name)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.name)

						end

					elsif t.opp == @wager.team4

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.opp)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.opp)

							end


						elsif t.spread_result == "push"

							@rev_push.push(t.opp)

						end

					elsif t.over_line == @wager.team4

						if t.total_result == "over"

							@rev_win.push(t.over_line)

						elsif t.total_result == "under"

							@rev_lose.push(t.over_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line)

						end

					elsif t.under_line == @wager.team4

						if t.total_result == "over"

							@rev_lose.push(t.under_line)

						elsif t.total_result == "under"

							@rev_win.push(t.under_line)

						elsif t.total_result == "push"

							@rev_push.push(t.under_line)

						end

					end


				end

				if @rev_push.length == 4

					@net_p_l = "push"

					@wager.net_result = @net_p_l
	
					@wager.outcome = "push"

				elsif @rev_push.length == 3 && @rev_lose.length == 1

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@net_p_l = @wager.amount.to_i * -1

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "loss"

						elsif @rev_lose[0][:spread] < -100

							@net_p_l = @wager.amount * (@rev_lose[0][:spread].to_i/100.00)

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "loss"

						end

					else

						@net_p_l = @wager.amount.to_i * -1.1

						@wager.net_result = @net_p_l
						@current_client_br = @current_client_br + @net_p_l
						@current_br = @current_br + (@net_p_l * -1)
						@wager.outcome = "loss"

					end

				elsif @rev_push.length == 3 && @rev_win.length == 1

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@net_p_l = @wager.amount.to_i 

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						elsif @rev_win[0][:spread] > 100

							@net_p_l = @wager.amount * (@rev_win[0][:spread].to_i/100.00)

							@wager.net_result = @net_p_l
							@current_client_br = @current_client_br + @net_p_l
							@current_br = @current_br + (@net_p_l * -1)
							@wager.outcome = "win"

						end

					else

						@net_p_l = @wager.amount.to_i 

						@wager.net_result = @net_p_l
						@current_client_br = @current_client_br + @net_p_l
						@current_br = @current_br + (@net_p_l * -1)
						@wager.outcome = "win"

					end

				elsif @rev_push.length == 2 && @rev_win.length == 1 && @rev_lose.length == 1

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 3

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 3

						end

					else

						@rev_team1 = @wager.amount.to_i * 3 

					end

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -4

						elsif @rev_lose[0][:spread] < -100

							@rev_team2 = (@wager.amount * (@rev_lose[0][:spread].to_i/100.00)) * 4

						end

					else

						@rev_team2 = @wager.amount.to_i * -4.4

					end

					@net_p_l = @rev_team1 + @rev_team2

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				elsif @rev_push.length == 2 && @rev_win.length == 2

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 3

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 3

						end

					else

						@rev_team1 = @wager.amount.to_i * 3

					end

					if @rev_win[1].class == Hash

						if @rev_win[1][:spread] < -100

							@rev_team2 = @wager.amount.to_i * 3

						elsif @rev_win[1][:spread] > 100

							@rev_team2 = @wager.amount * (@rev_win[1][:spread].to_i/100.00) * 3

						end

					else

						@rev_team2 = @wager.amount.to_i * 3

					end

					@net_p_l = @rev_team1 + @rev_team2

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"


				
				elsif @rev_push.length == 2 && @rev_lose.length == 2

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team1 = @wager.amount.to_i * -3

						elsif @rev_lose[0][:spread] < -100

							@rev_team1 = @wager.amount * (@rev_lose[0][:spread].to_i/100.00) * 3 

						end

					else

						@rev_team1 = @wager.amount.to_i * -3.3

					end

					if @rev_lose[1].class == Hash

						if @rev_lose[1][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -3

						elsif @rev_lose[1][:spread] < -100

							@rev_team2 = @wager.amount * (@rev_lose[1][:spread].to_i/100.00) * 3

						end

					else

						@rev_team2 = @wager.amount.to_i * -3.3

					end

					@net_p_l = @rev_team1 + @rev_team2

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				
				
				elsif @rev_push.length == 1 && @rev_win.length == 2 && @rev_lose.length == 1

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 4

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 4

						end

					else

						@rev_team1 = @wager.amount.to_i * 4 

					end

					if @rev_win[1].class == Hash

						if @rev_win[1][:spread] < -100

							@rev_team2 = @wager.amount.to_i * 4

						elsif @rev_win[1][:spread] > 100

							@rev_team2 = @wager.amount * (@rev_win[1][:spread].to_i/100.00) * 4

						end

					else

						@rev_team2 = @wager.amount.to_i * 4 

					end

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team3 = @wager.amount.to_i * -5

						elsif @rev_lose[0][:spread] < -100

							@rev_team3 = (@wager.amount * (@rev_lose[0][:spread].to_i/100.00)) * 5

						end

					else

						@rev_team3 = @wager.amount.to_i * -5.5

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"
				
				elsif @rev_push.length == 1 && @rev_win.length == 1 && @rev_lose.length == 2

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 3

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 3

						end

					else

						@rev_team1 = @wager.amount.to_i * 3 

					end

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -4

						elsif @rev_lose[0][:spread] < -100

							@rev_team2 = (@wager.amount * (@rev_lose[0][:spread].to_i/100.00)) * 4

						end

					else

						@rev_team2 = @wager.amount.to_i * -4.4

					end

					if @rev_lose[1].class == Hash

						if @rev_lose[1][:spread] > 100

							@rev_team3 = @wager.amount.to_i * -4

						elsif @rev_lose[1][:spread] < -100

							@rev_team3 = (@wager.amount * (@rev_lose[1][:spread].to_i/100.00)) * 4

						end

					else

						@rev_team3 = @wager.amount.to_i * -4.4

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				elsif @rev_push.length == 1 && @rev_win.length == 3

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 5

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 5

						end

					else

						@rev_team1 = @wager.amount.to_i * 5 

					end

					if @rev_win[1].class == Hash

						if @rev_win[1][:spread] < -100

							@rev_team2 = @wager.amount.to_i * 5

						elsif @rev_win[1][:spread] > 100

							@rev_team2 = @wager.amount * (@rev_win[1][:spread].to_i/100.00) * 5

						end

					else

						@rev_team2 = @wager.amount.to_i * 5

					end

					if @rev_win[2].class == Hash

						if @rev_win[2][:spread] < -100

							@rev_team3 = @wager.amount.to_i * 5

						elsif @rev_win[2][:spread] > 100

							@rev_team3 = (@wager.amount * (@rev_win[2][:spread].to_i/100.00)) * 5

						end

					else

						@rev_team3 = @wager.amount.to_i * 5

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"

				elsif @rev_push.length == 1 && @rev_lose.length == 3

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team1 = @wager.amount.to_i * -3

						elsif @rev_lose[0][:spread] < -100

							@rev_team1 = @wager.amount * (@rev_lose[0][:spread].to_i/100.00) * 3

						end

					else

						@rev_team1 = @wager.amount.to_i * -3.3 

					end

					if @rev_lose[1].class == Hash

						if @rev_lose[1][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -3

						elsif @rev_lose[1][:spread] < -100

							@rev_team2 = (@wager.amount * (@rev_lose[1][:spread].to_i/100.00)) * 3

						end

					else

						@rev_team2 = @wager.amount.to_i * -3.3

					end

					if @rev_lose[2].class == Hash

						if @rev_lose[2][:spread] > 100

							@rev_team3 = @wager.amount.to_i * -3

						elsif @rev_lose[2][:spread] < -100

							@rev_team3 = (@wager.amount * (@rev_lose[2][:spread].to_i/100.00)) * 3

						end

					else

						@rev_team3 = @wager.amount.to_i * -3.3

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				elsif @rev_win.length == 1 && @rev_lose.length == 3

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 3 + 5

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 3

						end

					else

						@rev_team1 = @wager.amount.to_i * 3 

					end

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -4

						elsif @rev_lose[0][:spread] < -100

							@rev_team2 = @wager.amount * (@rev_lose[0][:spread].to_i/100.00) * 4

						end

					else

						@rev_team2 = @wager.amount.to_i * -4.4 

					end

					if @rev_lose[1].class == Hash

						if @rev_lose[1][:spread] > 100

							@rev_team3 = @wager.amount.to_i * -4

						elsif @rev_lose[1][:spread] < -100

							@rev_team3 = (@wager.amount * (@rev_lose[1][:spread].to_i/100.00)) * 4

						end

					else

						@rev_team3 = @wager.amount.to_i * -4.4

					end

					if @rev_lose[2].class == Hash

						if @rev_lose[2][:spread] > 100

							@rev_team4 = @wager.amount.to_i * -4

						elsif @rev_lose[2][:spread] < -100

							@rev_team4 = (@wager.amount * (@rev_lose[2][:spread].to_i/100.00)) * 4

						end

					else

						@rev_team4 = @wager.amount.to_i * -4.4

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3 + @rev_team4

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

					

				elsif @rev_win.length == 2 && @rev_lose.length == 2

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team1 = @wager.amount.to_i * -5

						elsif @rev_lose[0][:spread] < -100

							@rev_team1 = @wager.amount * (@rev_lose[0][:spread].to_i/100.00) * 5 

						end

					else

						@rev_team1 = @wager.amount.to_i * -5.5

					end

					if @rev_lose[1].class == Hash

						if @rev_lose[1][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -5

						elsif @rev_lose[1][:spread] < -100

							@rev_team2 = @wager.amount * (@rev_lose[1][:spread].to_i/100.00) * 5

						end

					else

						@rev_team2 = @wager.amount.to_i * -5.5

					end

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team3 = @wager.amount.to_i * 4

						elsif @rev_win[0][:spread] > 100

							@rev_team3 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 4

						end

					else

						@rev_team3 = @wager.amount.to_i * 4

					end

					if @rev_win[1].class == Hash

						if @rev_win[1][:spread] < -100

							@rev_team4 = @wager.amount.to_i * 4

						elsif @rev_win[1][:spread] > 100

							@rev_team4 = @wager.amount * (@rev_win[1][:spread].to_i/100.00) * 4

						end

					else

						@rev_team4 = @wager.amount.to_i * 4

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3 + @rev_team4

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				elsif @rev_win.length == 3 && @rev_lose.length == 1

					
					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 5

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 5

						end

					else

						@rev_team1 = @wager.amount.to_i * 5 

					end

					if @rev_win[1].class == Hash

						if @rev_win[1][:spread] < -100

							@rev_team2 = @wager.amount.to_i * 5

						elsif @rev_win[1][:spread] > 100

							@rev_team2 = @wager.amount * (@rev_win[1][:spread].to_i/100.00) * 5

						end

					else

						@rev_team2 = @wager.amount.to_i * 5

					end

					if @rev_win[2].class == Hash

						if @rev_win[2][:spread] < -100

							@rev_team3 = @wager.amount.to_i * 5

						elsif @rev_win[2][:spread] > 100

							@rev_team3 = (@wager.amount * (@rev_win[2][:spread].to_i/100.00)) * 5

						end

					else

						@rev_team3 = @wager.amount.to_i * 5

					end

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team4 = @wager.amount.to_i * -6

						elsif @rev_lose[0][:spread] < -100

							@rev_team4 = @wager.amount * (@rev_lose[0][:spread].to_i/100.00) * 6 

						end

					else

						@rev_team4 = @wager.amount.to_i * -6.6

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3 + @rev_team4

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"



				elsif @rev_win.length == 4

					if @rev_win[0].class == Hash

						if @rev_win[0][:spread] < -100

							@rev_team1 = @wager.amount.to_i * 6

						elsif @rev_win[0][:spread] > 100

							@rev_team1 = @wager.amount * (@rev_win[0][:spread].to_i/100.00) * 6

						end

					else

						@rev_team1 = @wager.amount.to_i * 6 

					end

					if @rev_win[1].class == Hash

						if @rev_win[1][:spread] < -100

							@rev_team2 = @wager.amount.to_i * 6

						elsif @rev_win[1][:spread] > 100

							@rev_team2 = @wager.amount * (@rev_win[1][:spread].to_i/100.00) * 6

						end

					else

						@rev_team2 = @wager.amount.to_i * 6

					end

					if @rev_win[2].class == Hash

						if @rev_win[2][:spread] < -100

							@rev_team3 = @wager.amount.to_i * 6

						elsif @rev_win[2][:spread] > 100

							@rev_team3 = (@wager.amount * (@rev_win[2][:spread].to_i/100.00)) * 6

						end

					else

						@rev_team3 = @wager.amount.to_i * 6

					end

					if @rev_win[3].class == Hash

						if @rev_win[3][:spread] < -100

							@rev_team4 = @wager.amount.to_i * 6

						elsif @rev_win[3][:spread] > 100

							@rev_team4 = (@wager.amount * (@rev_win[3][:spread].to_i/100.00)) * 6

						end

					else

						@rev_team4 = @wager.amount.to_i * 6

					end
					
					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3 + @rev_team4

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "win"


				elsif @rev_lose.length == 4

					if @rev_lose[0].class == Hash

						if @rev_lose[0][:spread] > 100

							@rev_team2 = @wager.amount.to_i * -3

						elsif @rev_lose[0][:spread] < -100

							@rev_team2 = @wager.amount * (@rev_lose[0][:spread].to_i/100.00) * 3

						end

					else

						@rev_team2 = @wager.amount.to_i * -3.3 

					end

					if @rev_lose[1].class == Hash

						if @rev_lose[1][:spread] > 100

							@rev_team3 = @wager.amount.to_i * -3

						elsif @rev_lose[1][:spread] < -100

							@rev_team3 = (@wager.amount * (@rev_lose[1][:spread].to_i/100.00)) * 3

						end

					else

						@rev_team3 = @wager.amount.to_i * -3.3

					end

					if @rev_lose[2].class == Hash

						if @rev_lose[2][:spread] > 100

							@rev_team4 = @wager.amount.to_i * -3

						elsif @rev_lose[2][:spread] < -100

							@rev_team4 = (@wager.amount * (@rev_lose[2][:spread].to_i/100.00)) * 3

						end

					else

						@rev_team4 = @wager.amount.to_i * -3.3

					end

					if @rev_lose[3].class == Hash

						if @rev_lose[3][:spread] > 100

							@rev_team1 = @wager.amount.to_i * -3

						elsif @rev_lose[3][:spread] < -100

							@rev_team1 = (@wager.amount * (@rev_lose[3][:spread].to_i/100.00)) * 3

						end

					else

						@rev_team1 = @wager.amount.to_i * -3.3

					end

					@net_p_l = @rev_team1 + @rev_team2 + @rev_team3 + @rev_team4

					@wager.net_result = @net_p_l
					@current_client_br = @current_client_br + @net_p_l
					@current_br = @current_br + (@net_p_l * -1)
					@wager.outcome = "loss"

				end

			end

		end

		def get_client_br

			current_user.clients.each do |c|

				if c.id == @wager.client_id

					c.wagers.each do |w|

						if w.graded == true

							if w.net_result == "push"

								w.net_result = "push"

							else

								@client_results.push(w.net_result)

							end

						end

					end

				end

			end

			@current_client_br = @client_results.inject(0){|sum,x| sum + x }

		end

		def get_user_br

			current_user.wagers.each do |w|

				if w.graded == true

					if w.net_result == "push"

					else

						@user_results.push(w.net_result)

					end

				end

			end

			@current_br = (@user_results.inject(0){|sum,x| sum + x }) * -1

		end


end

			

	







