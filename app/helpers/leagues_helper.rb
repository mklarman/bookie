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
end
