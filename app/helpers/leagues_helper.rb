module LeaguesHelper

	def check_end_date

		if @month_chk == "Jan"

			@month_chk = "1"

		elsif @month_chk == "Feb"

			@month_chk = "2"

		elsif @month_chk == "Mar"

			@month_chk = "3"

		elsif @month_chk == "Apr"

			@month_chk = "4"

		elsif @month_chk == "May"

			@month_chk = "5"

		elsif @month_chk == "Jun"

			@month_chk = "6"

		elsif @month_chk == "Jul"

			@month_chk = "7"

		elsif @month_chk == "Aug"

			@month_chk = "8"

		elsif @month_chk == "Sep"

			@month_chk = "9"

		elsif @month_chk == "Oct"

			@month_chk = "10"

		elsif @month_chk == "Nov"

			@month_chk = "11"

		elsif @month_chk == "Dec"

			@month_chk = "12"

		end

		@end_date_ser = @year_chk + @month_chk + @day_chk  
		@end_date_ser = @end_date_ser.to_i


	end

	def convert_my_date

		@my_month = @my_date[3] + @my_date[4] + @my_date[5] 

		if @my_month == "Jan"

			@my_month = "1"

		elsif @my_month == "Feb"

			@my_month = "2"

		elsif @my_month == "Mar"

			@my_month = "3"

		elsif @my_month == "Apr"

			@my_month = "4"

		elsif @my_month == "May"

			@my_month = "5"

		elsif @my_month == "Jun"

			@my_month = "6"

		elsif @my_month == "Jul"

			@my_month = "7"

		elsif @my_month == "Aug"

			@my_month = "8"

		elsif @my_month == "Sep"

			@my_month = "9"

		elsif @my_month == "Oct"

			@my_month = "10"

		elsif @my_month == "Nov"

			@my_month = "11"

		elsif @my_month == "Dec"

			@my_month = "12"

		end

		@my_date = @my_date[7] + @my_date[8] + @my_date[9] + @my_date[10] + @my_month + @my_date[0] + @my_date[1] 
		@my_date = @my_date.to_i


	end

	def create_league_wager(obj)

		@bet_type = " "

		if obj.stakes == "small timer"

			@amount_arr = [50, 75, 100]
			@amount = @amount_arr.sample

		elsif obj.stakes == "pay dumper"

			@amount_arr = [200, 250, 300]
			@amount = @amount_arr.sample

		elsif obj.stakes == "whale"

			@amount_arr = [500, 1000, 2000]
			@amount = @amount_arr.sample

		end


		if obj.bet_types == "All"

			if @teaser_options.to_i > 4

				@bet_opt = ["straight", "two team teaser", "straight", "three team teaser", "five team teaser", "three team parlay", "two team parlay", "straight", "five team parlay", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample

			elsif @teaser_options.to_i == 4 && @all_other_options.to_i > 4

				@bet_opt = ["straight", "two team teaser", "straight", "three team teaser", "five team teaser", "three team parlay", "two team parlay", "straight", "five team parlay", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample
			
			elsif @teaser_options.to_i == 4 && @all_other_options.to_i == 4

				@bet_opt = ["straight", "two team teaser", "straight", "three team teaser", "three team parlay", "two team parlay", "straight", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample
			
			elsif @teaser_options.to_i == 3 && @all_other_options.to_i > 4 

				@bet_opt = ["straight", "two team teaser", "straight", "three team teaser", "three team parlay", "five team parlay", "two team parlay", "straight", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample
			
			elsif @teaser_options.to_i == 3 && @all_other_options.to_i == 4

				@bet_opt = ["straight", "two team teaser", "straight", "three team teaser", "three team parlay", "two team parlay", "straight", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample 

			elsif @teaser_options.to_i == 3 && @all_other_options == 3

				@bet_opt = ["straight", "two team teaser", "straight", "three team teaser", "three team parlay", "two team parlay", "straight", "two team reverse", "three team reverse"]
				@bet_type = @bet_opt.sample

			elsif @teaser_options == 2 && @all_other_options > 4

				@bet_opt = ["straight", "two team teaser", "straight", "three team parlay", "five team parlay", "two team parlay", "straight", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample

			elsif @teaser_options == 2 && @all_other_options == 4

				@bet_opt = ["straight", "two team teaser", "straight", "three team parlay", "two team parlay", "straight", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample
			
			elsif @teaser_options == 2 && @all_other_options == 3

				@bet_opt = ["straight", "two team teaser", "straight", "three team parlay", "two team parlay", "straight", "two team reverse", "three team reverse"]
				@bet_type = @bet_opt.sample
			
			elsif @teaser_options == 2 && @all_other_options == 2

				@bet_opt = ["straight", "two team teaser", "two team parlay", "two team reverse"]
				@bet_type = @bet_opt.sample

			elsif @teaser_options == 0

				if @all_other_options == 2

					@bet_opt = ["straight", "two team parlay", "two team reverse"]
					@bet_type = @bet_opt.sample

				elsif @all_other_options == 3

					@bet_opt = ["straight", "three team parlay", "two team parlay", "straight", "two team reverse", "three team reverse"]
					@bet_type = @bet_opt.sample
				
				elsif @all_other_options == 4

					@bet_opt = ["straight", "straight", "three team parlay", "two team parlay", "two team reverse", "three team reverse", "four team reverse"]
					@bet_type = @bet_opt.sample
				
				elsif @all_other_options > 4

					@bet_opt = ["straight", "straight", "three team parlay", "two team parlay", "five team parlay", "two team reverse", "three team reverse", "four team reverse"]
					@bet_type = @bet_opt.sample

				end


			end

		elsif obj.bet_types == "Exotics"

			if @teaser_options.to_i > 4

				@bet_opt = [ "two team teaser", "three team teaser", "five team teaser", "three team parlay", "two team parlay", "five team parlay", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample

			elsif @teaser_options == 4 && @all_other_options > 4

				@bet_opt = ["two team teaser", "three team teaser", "five team teaser", "three team parlay", "two team parlay", "five team parlay", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample
			
			elsif @teaser_options == 4 && @all_other_options == 4

				@bet_opt = ["two team teaser", "three team teaser", "three team parlay", "two team parlay", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample
			
			elsif @teaser_options == 3 && @all_other_options > 4

				@bet_opt = ["two team teaser", "three team teaser", "three team parlay", "five team parlay", "two team parlay", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample 
			
			elsif @teaser_options == 3 && @all_other_options == 4 

				@bet_opt = ["two team teaser", "three team teaser", "three team parlay", "two team parlay", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample 

			elsif @teaser_options == 3 && @all_other_options == 3

				@bet_opt = ["two team teaser", "three team teaser", "three team parlay", "two team parlay", "two team reverse", "three team reverse"]
				@bet_type = @bet_opt.sample

			elsif @teaser_options == 2 && @all_other_options > 4

				@bet_opt = ["two team teaser", "three team parlay", "five team parlay", "two team parlay", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample

			elsif @teaser_options == 2 && @all_other_options == 4

				@bet_opt = ["two team teaser", "three team parlay", "two team parlay", "two team reverse", "three team reverse", "four team reverse"]
				@bet_type = @bet_opt.sample
			
			elsif @teaser_options == 2 && @all_other_options == 3

				@bet_opt = ["two team teaser", "three team parlay", "two team parlay", "two team reverse", "three team reverse"]
				@bet_type = @bet_opt.sample
			
			elsif @teaser_options == 2 && @all_other_options == 2

				@bet_opt = ["two team teaser", "two team parlay", "two team reverse"]
				@bet_type = @bet_opt.sample

			elsif @teaser_options == 0

				if @all_other_options == 2

					@bet_opt = ["two team parlay", "two team reverse"]
					@bet_type = @bet_opt.sample

				elsif @all_other_options == 3

					@bet_opt = ["three team parlay", "two team parlay", "two team reverse", "three team reverse"]
					@bet_type = @bet_opt.sample
				
				elsif @all_other_options == 4

					@bet_opt = ["three team parlay", "two team parlay", "two team reverse", "three team reverse", "four team reverse"]
					@bet_type = @bet_opt.sample
				
				elsif @all_other_options > 4

					@bet_opt = ["three team parlay", "two team parlay", "five team parlay", "two team reverse", "three team reverse", "four team reverse"]
					@bet_type = @bet_opt.sample

				end
			

			end

		elsif obj.bet_types == "Straight"

			@bet_type = "straight"

		end


	end

	def sort_teams_for_leagues

		@teams.each do |t|

			if t.display == "on"

				if t.sport == "NFL"

					@nfl_games.push(t)

				elsif t.sport == "FAN"

					@fan_games.push(t)

				elsif t.sport == "NBA"

					@nba_games.push(t)
				
				elsif t.sport == "CBB"

					@cbb_games.push(t)

				elsif t.sport == "CFB"

					@cfb_games.push(t)

				elsif t.sport == "MLB"

					@mlb_games.push(t)

				elsif t.sport == "NHL"

					@nhl_games.push(t)

				end



			end


		end

	end

	def count_options

		@teaser_options = (@nfl_games.length * 2) + (@cfb_games.length * 2) + (@nba_games.length * 2) + (@cbb_games.length * 2) + (@fan_games.length * 2)

		@all_other_options = (@nfl_games.length * 2) + (@cfb_games.length * 2) + (@nba_games.length * 2) + (@cbb_games.length * 2) + (@fan_games.length * 2) + (@mlb_games.length * 2) + (@nhl_games.length * 2)

	end

	def get_picks(obj)

		obj.league_wagers.each do |w|	

			if w.graded == false

				@teams.each do |t|

					if t.name == w.team1

						@selections.push(t.name)
						@oppo_picks.push(t.opp)

					elsif t.opp == w.team1

						@selections.push(t.opp)
						@oppo_picks.push(t.name)


					elsif t.under_line == w.team1

						@selections.push(t.under_line)
						@oppo_picks.push(t.over_line)


					elsif t.over_line == w.team1

						@selections.push(t.over_line)
						@oppo_picks.push(t.under_line)


					end

					if t.name == w.team2

						if @selections.include? t.name



						else

							@selections.push(t.name)
							@oppo_picks.push(t.opp)

						end

					elsif t.opp == w.team2

						if @selections.include? t.opp


						else

							@selections.push(t.opp)
							@oppo_picks.push(t.name)

						end


					elsif t.under_line == w.team2

						if @selections.include? t.under_line


						else

							@selections.push(t.under_line)
							@oppo_picks.push(t.over_line)

						end


					elsif t.over_line == w.team2

						if @selections.include? t.over_line


						else

							@selections.push(t.over_line)
							@oppo_picks.push(t.under_line)

						end

					end

					if t.name == w.team3

						if @selections.include? t.name



						else

							@selections.push(t.name)
							@oppo_picks.push(t.opp)

						end

					elsif t.opp == w.team3

						if @selections.include? t.opp


						else

							@selections.push(t.opp)
							@oppo_picks.push(t.name)

						end


					elsif t.under_line == w.team3

						if @selections.include? t.under_line


						else

							@selections.push(t.under_line)
							@oppo_picks.push(t.over_line)

						end


					elsif t.over_line == w.team3

						if @selections.include? t.over_line


						else

							@selections.push(t.over_line)
							@oppo_picks.push(t.under_line)

						end


					end 

					if t.name == w.team4

						if @selections.include? t.name



						else

							@selections.push(t.name)
							@oppo_picks.push(t.opp)

						end

					elsif t.opp == w.team4

						if @selections.include? t.opp


						else

							@selections.push(t.opp)
							@oppo_picks.push(t.name)

						end


					elsif t.under_line == w.team4

						if @selections.include? t.under_line


						else

							@selections.push(t.under_line)
							@oppo_picks.push(t.over_line)

						end


					elsif t.over_line == w.team4

						if @selections.include? t.over_line


						else

							@selections.push(t.over_line)
							@oppo_picks.push(t.under_line)

						end


					end 

					if t.name == w.team5

						if @selections.include? t.name



						else

							@selections.push(t.name)
							@oppo_picks.push(t.opp)

						end

					elsif t.opp == w.team5

						if @selections.include? t.opp


						else

							@selections.push(t.opp)
							@oppo_picks.push(t.name)

						end


					elsif t.under_line == w.team5

						if @selections.include? t.under_line


						else

							@selections.push(t.under_line)
							@oppo_picks.push(t.over_line)

						end


					elsif t.over_line == w.team5

						if @selections.include? t.over_line


						else

							@selections.push(t.over_line)
							@oppo_picks.push(t.under_line)

						end


					end 



				end


			end

		end
	end

	def pick_games(obj)

		if obj.sports == "NFL"

			@nfl_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end
		
		elsif obj.sports == "FAN"

			@fan_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end
		
		elsif obj.sports == "CFB"

			@cfb_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end
		
		elsif obj.sports == "CBB"

			@cbb_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end
		
		elsif obj.sports == "NBA"

			@nba_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end
		
		elsif obj.sports == "MLB"

			@mlb_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end
		
		elsif obj.sports == "NHL"

			@nhl_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end
		
		elsif obj.sports == "All"

			@nhl_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end

			@mlb_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end

			@cfb_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end

			@cbb_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end

			@nfl_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end

			@fan_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end

			@nba_games.each do |g|

				@ran_num = [1, 2]

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.name)

				else

					@client_picks.push(g.opp)

				end

				@num = @ran_num.sample

				if @num == 1

					@client_picks.push(g.over_line)

				else

					@client_picks.push(g.under_line)

				end

			end

		end


	end

	def create_hash

		@selections.each do |s|

			@team_hash = Hash.new

			@teams.each do |t|

				if s == t.name

					@team_hash[:pick] = t.name
					@team_hash[:opp] = t.opp

					@pick_hashes.push(@team_hash)

				elsif s == t.opp

					@team_hash[:pick] = t.opp
					@team_hash[:opp] = t.name

					@pick_hashes.push(@team_hash)
				
				elsif s == t.over_line

					@team_hash[:pick] = t.over_line
					@team_hash[:opp] = t.under_line

					@pick_hashes.push(@team_hash)
				
				elsif s == t.under_line

					@team_hash[:pick] = t.under_line
					@team_hash[:opp] = t.over_line

					@pick_hashes.push(@team_hash)

				end

			end


		end

	end

	def correct_oppos

		@selections.each do |s|

			@team_hashes.each do |t|

				if s == t[:opp]

					t[:pick] = t[:opp]

				end

			end

		end


	end

	def create_avail_picks

		@team_hashes.each do |h|

			@avail_picks.push(h[:pick])

			@teams.each do |t|

				if t.name == h[:pick] || t.opp == h[:pick] || t.over_line == h[:pick] || t.under_line == h[:pick]

					if t.sport == "NFL" || t.sport == "CFB" || t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

						@teaser_choices.push(h[:pick])

				end

			end

		end

	end

	def fill_league_wagers

		if @bet_type == "straight"

			@pick1 = @avail_picks.sample


			@teams.each do |t|

				if t.name == @pick1

					@spread1 = t.spread

					if @spread1.to_i == 0

						@spread1 = "PK"

					end

				elsif t.opp == @pick1

					@spread1 = t.opp_line

					if @spread1.to_i == 0

						@spread1 = "PK"

					end

				elsif t.under_line == @pick1 || t.over_line == @pick1

					@spread1 = t.total 

				end

			end
		end

		if @bet_type == "two team teaser"

			@pick1 = @teaser_choices.sample
			@teaser_choices.delete(@pick1) 
				
			@pick2 = @teaser_choices.sample
			@teaser_choices.delete(@pick2) 

			@teams.each do |t|

				if t.sport == "NFL" || t.sport == "CFB"

					if t.name == @pick1

						@spread1 = t.spread.to_i + 6

						if @spread1 > 0

							@spread1 = "+" + @spread1.to_s

						elsif @spread1 == 0

							@spread1 = "PK"

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

				if t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

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

					if t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

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


					if t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

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

					if t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

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

					if t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

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
end
