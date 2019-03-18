module LeaguesHelper

	def check_end_date

		if @month_chk == "Jan"

			@month_chk = "01"

		elsif @month_chk == "Feb"

			@month_chk = "02"

		elsif @month_chk == "Mar"

			@month_chk = "03"

		elsif @month_chk == "Apr"

			@month_chk = "04"

		elsif @month_chk == "May"

			@month_chk = "05"

		elsif @month_chk == "Jun"

			@month_chk = "06"

		elsif @month_chk == "Jul"

			@month_chk = "07"

		elsif @month_chk == "Aug"

			@month_chk = "08"

		elsif @month_chk == "Sep"

			@month_chk = "09"

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

	def check_start_date

		if @month_chk == "Jan"

			@month_chk = "01"

		elsif @month_chk == "Feb"

			@month_chk = "02"

		elsif @month_chk == "Mar"

			@month_chk = "03"

		elsif @month_chk == "Apr"

			@month_chk = "04"

		elsif @month_chk == "May"

			@month_chk = "05"

		elsif @month_chk == "Jun"

			@month_chk = "06"

		elsif @month_chk == "Jul"

			@month_chk = "07"

		elsif @month_chk == "Aug"

			@month_chk = "08"

		elsif @month_chk == "Sep"

			@month_chk = "09"

		elsif @month_chk == "Oct"

			@month_chk = "10"

		elsif @month_chk == "Nov"

			@month_chk = "11"

		elsif @month_chk == "Dec"

			@month_chk = "12"

		end

		@start_date_ser = @year_chk + @month_chk + @day_chk  
		@start_date_ser = @end_date_ser.to_i


	end

	def convert_my_date

		@my_month = @my_date[3] + @my_date[4] + @my_date[5] 

		if @my_month == "Jan"

			@my_month = "01"

		elsif @my_month == "Feb"

			@my_month = "02"

		elsif @my_month == "Mar"

			@my_month = "03"

		elsif @my_month == "Apr"

			@my_month = "04"

		elsif @my_month == "May"

			@my_month = "05"

		elsif @my_month == "Jun"

			@my_month = "06"

		elsif @my_month == "Jul"

			@my_month = "07"

		elsif @my_month == "Aug"

			@my_month = "08"

		elsif @my_month == "Sep"

			@my_month = "09"

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

			if t.display == "on" && t.date == @my_date

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

	def count_options(obj)

		if obj.sports == "NFL"

			@teaser_options = (@nfl_games.length * 2)

			@all_other_options = @teaser_options		

		end

		if obj.sports == "CFB"

			@teaser_options = (@cfb_games.length * 2)

			@all_other_options = @teaser_options		

		end

		if obj.sports == "NBA"

			@teaser_options = (@nba_games.length * 2)

			@all_other_options = @teaser_options		

		end

		if obj.sports == "CBB"

			@teaser_options = (@cbb_games.length * 2)

			@all_other_options = @teaser_options		

		end

		if obj.sports == "FAN"

			@teaser_options = (@fan_games.length * 2)

			@all_other_options = @teaser_options		

		end

		if obj.sports == "MLB"

			@teaser_options = 0

			@all_other_options = (@mlb_games.length * 2)		

		end

		if obj.sports == "NHL"

			@teaser_options = 0

			@all_other_options = (@nhl_games.length * 2)		

		end

		if obj.sports == "All"

			@teaser_options = (@nfl_games.length * 2) + (@cfb_games.length * 2) + (@nba_games.length * 2) + (@cbb_games.length * 2) + (@fan_games.length * 2)

			@all_other_options = (@nfl_games.length * 2) + (@cfb_games.length * 2) + (@nba_games.length * 2) + (@cbb_games.length * 2) + (@fan_games.length * 2) + (@mlb_games.length * 2) + (@nhl_games.length * 2)		

		end		

	end

	def get_picks(obj)

		if obj.league_wagers.count > 0

			obj.league_wagers.each do |w|	

				if w.graded == false

					@teams.each do |t|

						if t.date == w.date

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

		@client_picks.each do |p|

			@team_hash = Hash.new

			@teams.each do |t|

				if t.date == @my_date

					if p == t.name

						@team_hash[:pick] = t.name
						@team_hash[:opp] = t.opp

						@pick_hashes.push(@team_hash)

					elsif p == t.opp

						@team_hash[:pick] = t.opp
						@team_hash[:opp] = t.name

						@pick_hashes.push(@team_hash)
					
					elsif p == t.over_line

						@team_hash[:pick] = t.over_line
						@team_hash[:opp] = t.under_line

						@pick_hashes.push(@team_hash)
					
					elsif p == t.under_line

						@team_hash[:pick] = t.under_line
						@team_hash[:opp] = t.over_line

						@pick_hashes.push(@team_hash)

					end

				end

			end


		end

	end

	def correct_oppos

		@selections.each do |s|

			@pick_hashes.each do |t|

				if s == t[:opp]

					t[:pick] = t[:opp]

				end

			end

		end


	end

	def create_avail_picks

		@pick_hashes.each do |h|

			@avail_picks.push(h[:pick])

			@teams.each do |t|

				if t.date == @my_date

					if t.name == h[:pick] || t.opp == h[:pick] || t.over_line == h[:pick] || t.under_line == h[:pick]

						if t.sport == "NFL" || t.sport == "CFB" || t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

							@teaser_choices.push(h[:pick])

					end

				end

			end

		end

	end

	def fill_league_wagers

		if @bet_type == "straight"

			@pick1 = @avail_picks.sample


			@teams.each do |t|

				if t.date == @my_date

					self.convert_spread(t.spread)
					self.convert_total(t.total)

					if @half_point == true

						@spread = t.spread.to_i
						@spread = @spread.to_f

						if @spread < 0

							@spread = @spread -0.5

						else

							@spread = @spread + 0.5

						end

					else

						@spread = t.spread.to_i

					end

					if @total_half_point == true

						@total = t.total.to_i
						@total = @total.to_f + 0.5

					else

						@total = t.total.to_i



					end


					if t.name == @pick1

						@spread1 = @spread

						if @spread1.to_i == 0

							@spread1 = "PK"

						end

					elsif t.opp == @pick1

						@spread1 = @spread * -1

						if @spread1.to_i == 0

							@spread1 = "PK"

						end

					elsif t.under_line == @pick1 || t.over_line == @pick1

						@spread1 = @total 

					end

				end

			end
		end

		if @bet_type == "two team teaser"

			@pick1 = @teaser_choices.sample
			@teaser_choices.delete(@pick1) 
				
			@pick2 = @teaser_choices.sample
			@teaser_choices.delete(@pick2) 

			@teams.each do |t|

				if t.date == @my_date

					if t.sport == "NFL" || t.sport == "CFB"

						self.convert_spread(t.spread)
						self.convert_total(t.total)

						if @half_point == true

							@spread = t.spread.to_i
							@spread = @spread.to_f

							if @spread < 0

								@spread = @spread -0.5

							else

								@spread = @spread + 0.5

							end

						else

							@spread = t.spread.to_i

						end

						if @total_half_point == true

							@total = t.total.to_i
							@total = @total.to_f + 0.5

						else

							@total = t.total.to_i



						end

						if t.name == @pick1

							@spread1 = @spread + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 = "PK"

							end

						end

						if t.opp == @pick1

							@spread1 = (@spread * -1) + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 = "PK"

							end

						end

						if t.over_line == @pick1

							@spread1 = @total -6

						end

						if t.under_line == @pick1

							@spread1 = @total + 6


						end

						if t.name == @pick2

							@spread2 = @spread + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 = "PK"

							end

						end

						if t.opp == @pick2

							@spread2 = (@spread * -1) + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 = "PK"

							end

						end

						if t.over_line == @pick2

							@spread2 = @total - 6


						end

						if t.under_line == @pick2

							@spread2 = @total + 6


						end

					end

					if t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

						self.convert_spread(t.spread)
						self.convert_total(t.total)

						if @half_point == true

							@spread = t.spread.to_i
							@spread = @spread.to_f

							if @spread < 0

								@spread = @spread -0.5

							else

								@spread = @spread + 0.5

							end

						else

							@spread = t.spread.to_i

						end

						if @total_half_point == true

							@total = t.total.to_i
							@total = @total.to_f + 0.5

						else

							@total = t.total.to_i



						end

						if t.name == @pick1

							@spread1 = @spread + 4

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 = "PK"

							end

						end

						if t.opp == @pick1

							@spread1 = (@spread * -1) + 4

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 = "PK"

							end

						end

						if t.over_line == @pick1

							@spread1 = @total - 4


						end

						if t.under_line == @pick1

							@spread1 = @total + 4


						end

						if t.name == @pick2

							@spread2 = @spread + 4

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 = "PK"

							end

						end

						if t.opp == @pick2

							@spread2 = (@spread * -1) + 4

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 = "PK"

							end

						end

						if t.over_line == @pick2

							@spread2 = @total - 4


						end

						if t.under_line == @pick2

							@spread2 = @total + 4


						end

					end

				end


			end 


		end

		if @bet_type == "three team teaser"

			@pick1 = @teaser_choices.sample
			@teaser_choices.delete(@pick1) 
				
			@pick2 = @teaser_choices.sample
			@teaser_choices.delete(@pick2) 
				
			@pick3 = @teaser_choices.sample
				  

			@teams.each do |t|

				if t.date == @my_date

					if t.sport == "NFL" || t.sport == "CFB"

						self.convert_spread(t.spread)
						self.convert_total(t.total)

						if @half_point == true

							@spread = t.spread.to_i
							@spread = @spread.to_f

							if @spread < 0

								@spread = @spread -0.5

							else

								@spread = @spread + 0.5

							end

						else

							@spread = t.spread.to_i

						end

						if @total_half_point == true

							@total = t.total.to_i
							@total = @total.to_f + 0.5

						else

							@total = t.total.to_i



						end

						if t.name == @pick1

							@spread1 = @spread + 9

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 = "PK"

							end

						end

						if t.opp == @pick1

							@spread1 = (@spread * -1) + 9

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 = "PK"

							end

						end

						if t.over_line == @pick1

							@spread1 = @total - 9

						end

						if t.under_line == @pick1

							@spread1 = @total + 9


						end

						if t.name == @pick2

							@spread2 = @spread + 9

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 = "PK"

							end

						end

						if t.opp == @pick2

							@spread2 = (@spread * -1) + 9

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 = "PK"

							end

						end

						if t.over_line == @pick2

							@spread2 = @total - 9


						end

						if t.under_line == @pick2

								@spread2 = @total + 9


						end

						if t.name == @pick3

							@spread3 = @spread + 9

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							elsif @spread3 == 0

								@spread3 = "PK"

							end

						end

						if t.opp == @pick3

							@spread3 = (@spread * -1) + 9

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							elsif @spread3 == 0

								@spread3 = "PK"

							end

						end

						if t.over_line == @pick3

							@spread3 = @total - 9


						end

						if t.under_line == @pick3

							@spread3 = @total + 9


						end

					end

					if t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

						self.convert_spread(t.spread)
						self.convert_total(t.total)

						if @half_point == true

							@spread = t.spread.to_i
							@spread = @spread.to_f

							if @spread < 0

								@spread = @spread -0.5

							else

								@spread = @spread + 0.5

							end

						else

							@spread = t.spread.to_i

						end

						if @total_half_point == true

							@total = t.total.to_i
							@total = @total.to_f + 0.5

						else

							@total = t.total.to_i



						end

						if t.name == @pick1

							@spread1 = @spread + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 = "PK"

							end

						end

						if t.opp == @pick1

							@spread1 = (@spread * -1) + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 = "PK"

							end

						end

						if t.over_line == @pick1

							@spread1 = @total - 6


						end

						if t.under_line == @pick1

							@spread1 = @total + 6


						end

						if t.name == @pick2

							@spread2 = @spread + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 = "PK"

							end

						end

						if t.opp == @pick2

							@spread2 = (@spread * -1) + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 = "PK"

							end

						end

						if t.over_line == @pick2

							@spread2 = @total - 6


						end

						if t.under_line == @pick2

							@spread2 = @total + 6


						end

						if t.name == @pick3

							@spread3 = @spread + 6

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							elsif @spread3 == 0

								@spread3 = "PK"

							end

						end

						if t.opp == @pick3

							@spread3 = (@spread * -1) + 6

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							elsif @spread3 == 0

								@spread3 = "PK"

							end

						end

						if t.over_line == @pick3

								@spread3 = @total - 6


						end

						if t.under_line == @pick3

								@spread3 = @total + 6


						end

					end

				end


			end 


		end

		if @bet_type == "five team teaser"

			@pick1 = @teaser_choices.sample
			@teaser_choices.delete(@pick1) 
				
			@pick2 = @teaser_choices.sample
			@teaser_choices.delete(@pick2) 
			
			@pick3 = @teaser_choices.sample
			@teaser_choices.delete(@pick3) 
				
			@pick4 = @teaser_choices.sample
			@teaser_choices.delete(@pick4) 
			
			@pick5 = @teaser_choices.sample
			@teaser_choices.delete(@pick5)  



			@teams.each do |t|

				if t.date == @my_date

					if t.sport == "NFL" || t.sport == "CFB"

						self.convert_spread(t.spread)
						self.convert_total(t.total)

						if @half_point == true

							@spread = t.spread.to_i
							@spread = @spread.to_f

							if @spread < 0

								@spread = @spread -0.5

							else

								@spread = @spread + 0.5

							end

						else

							@spread = t.spread.to_i

						end

						if @total_half_point == true

							@total = t.total.to_i
							@total = @total.to_f + 0.5

						else

							@total = t.total.to_i



						end

						if t.name == @pick1

							@spread1 = @spread + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 == "PK"
								

							end

						end

						if t.opp == @pick1

							@spread1 = (@spread * -1) + 6

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 == "PK"

							end

						end

						if t.over_line == @pick1

							@spread1 = @total - 6


						end

						if t.under_line == @pick1

							@spread1 = @total + 6


						end

						if t.name == @pick2

							@spread2 = @spread + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 == "PK"

							end

						end

						if t.opp == @pick2

							@spread2 = (@spread * -1) + 6

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 == "PK"

							end

						end

						if t.over_line == @pick2

							@spread2 = @total - 6


						end

						if t.under_line == @pick2

							@spread2 = @total + 6


						end

						if t.name == @pick3

							@spread3 = @spread + 6

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							elsif @spread3 == 0

								@spread3 == "PK"

							end

						end

						if t.opp == @pick3

							@spread3 = (@spread * -1) + 6

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							elsif @spread3 == 0

								@spread3 == "PK"

							end

						end

						if t.over_line == @pick3

							@spread3 = @total - 6


						end

						if t.under_line == @pick3

							@spread3 = @total + 6


						end

						if t.name == @pick4

							@spread4 = @spread + 6

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							elsif @spread4 == 0

								@spread4 == "PK"

							end

						end

						if t.opp == @pick4

							@spread4 = (@spread * -1) + 6

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							elsif @spread4 == 0

								@spread4 == "PK"

							end

						end

						if t.over_line == @pick4

							@spread4 = @total - 6


						end

						if t.under_line == @pick4

							@spread4 = @total + 6


						end

						if t.name == @pick5

							@spread5 = @spread + 6

							if @spread5 > 0

								@spread5 = "+" + @spread5.to_s

							end

						end

						if t.opp == @pick5

							@spread5 = (@spread * -1) + 6

							if @spread5 > 0

								@spread5 = "+" + @spread5.to_s

							elsif @spread5 == 0

								@spread5 == "PK"

							end

						end

						if t.over_line == @pick5

							@spread5 = @total - 6


						end

						if t.under_line == @pick5

							@spread5 = @total + 6


						end

					end


					if t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

						self.convert_spread(t.spread)
						self.convert_total(t.total)

						if @half_point == true

							@spread = t.spread.to_i
							@spread = @spread.to_f

							if @spread < 0

								@spread = @spread -0.5

							else

								@spread = @spread + 0.5

							end

						else

							@spread = t.spread.to_i

						end

						if @total_half_point == true

							@total = t.total.to_i
							@total = @total.to_f + 0.5

						else

							@total = t.total.to_i



						end

						if t.name == @pick1

							@spread1 = @spread + 4

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 == "PK"

							end

						end

						if t.opp == @pick1

							@spread1 = (@spread * -1) + 4

							if @spread1 > 0

								@spread1 = "+" + @spread1.to_s

							elsif @spread1 == 0

								@spread1 == "PK"

							end

						end

						if t.over_line == @pick1

							@spread1 = @total - 4


						end

						if t.under_line == @pick1

							@spread1 = @total + 4


						end

						if t.name == @pick2

							@spread2 = @spread + 4

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 == "PK"

							end

						end

						if t.opp == @pick2

							@spread2 = (@spread * -1) + 4

							if @spread2 > 0

								@spread2 = "+" + @spread2.to_s

							elsif @spread2 == 0

								@spread2 == "PK"

							end

						end

						if t.over_line == @pick2

							@spread2 = @total - 4


						end

						if t.under_line == @pick2

							@spread2 = @total + 4


						end

						if t.name == @pick3

							@spread3 = @spread + 4

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							elsif @spread3 == 0

								@spread3 == "PK"

							end

						end

						if t.opp == @pick3

							@spread3 = (@spread * -1) + 4

							if @spread3 > 0

								@spread3 = "+" + @spread3.to_s

							elsif @spread3 == 0

								@spread3 == "PK"

							end

						end

						if t.over_line == @pick3

							@spread3 = @total - 4


						end

						if t.under_line == @pick3

							@spread3 = @total + 4


						end

						if t.name == @pick4

							@spread4 = @spread + 4

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							elsif @spread4 == 0

								@spread4 == "PK"

							end

						end

						if t.opp == @pick4

							@spread4 = (@spread * -1) + 4

							if @spread4 > 0

								@spread4 = "+" + @spread4.to_s

							elsif @spread4 == 0

								@spread4 == "PK"

							end

						end

						if t.over_line == @pick4

							@spread4 = @total - 4


						end

						if t.under_line == @pick4

							@spread4 = @total + 4


						end


						if t.name == @pick5

							@spread5 = @spread + 4

							if @spread5 > 0

								@spread5 = "+" + @spread5.to_s

							elsif @spread5 == 0

								@spread5 == "PK"

							end

						end

						if t.opp == @pick5

							@spread5 = (@spread * -1) + 4

							if @spread5 > 0

								@spread5 = "+" + @spread5.to_s

							elsif @spread5 == 0

								@spread5 == "PK"

							end

						end

						if t.over_line == @pick5

							@spread5 = @total - 4


						end

						if t.under_line == @pick5

							@spread5 = @total + 4


						end

					end

				end
			end

	end

	if @bet_type == "two team parlay" || @bet_type == "two team reverse"

		@pick1 = @avail_picks.sample
		@avail_picks.delete(@pick1)
		
		@pick2 = @avail_picks.sample
		@avail_picks.delete(@pick2)

		@teams.each do |t|

			if t.date == @my_date

				self.convert_total(t.total)

				if @total_half_point == true

					@total = t.total.to_i
					@total = @total.to_f + 0.5

				else

					@total = t.total.to_i



				end

				if t.sport == "NFL" || t.sport == "CFB" || t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

					self.convert_spread(t.spread)

					if @half_point == true

						@spread = t.spread.to_i
						@spread = @spread.to_f

						if @spread < 0

							@spread = @spread -0.5

						else

							@spread = @spread + 0.5

						end

					else

						@spread = t.spread.to_i

					end

					if t.name == @pick1

						@spread1 = @spread

						if @spread1 > 0

							@spread1 = "+" + @spread.to_s

						elsif @spread1 == 0

							@spread1 = "PK"

						end

					end

					if t.opp == @pick1

						@spread1 = @spread * -1

						if @spread1 > 0

							@spread1 = "+" + @spread1.to_s

						elsif @spread1 == 0

							@spread1 = "PK"

						end

					end

					if t.over_line == @pick1

						@spread1 = @total


					end

					if t.under_line == @pick1

						@spread1 = @total


					end

					if t.name == @pick2

						@spread2 = @spread

						if @spread2 > 0

							@spread2 = "+" + @spread2.to_s

						elsif @spread2 == 0

							@spread2 = "PK"

						end

					end

					if t.opp == @pick2

						@spread2 = @spread 

						if @spread2 > 0

							@spread2 = "+" + @spread2.to_s

						elsif @spread2 == 0

							@spread2 == "PK"

						end

					end

					if t.over_line == @pick2

						@spread2 = @total


					end

					if t.under_line == @pick2

						@spread2 = @total


					end

				end

				if t.sport == "MLB" || t.sport == "NHL" 

					if t.name == @pick1

						@spread1 = t.spread.to_i 

						if @spread1 > 0

							@spread1 = "+" + @spread1.to_s

						elsif @spread1 == 0

							@spread1 = "PK"

						end

					end

					if t.opp == @pick1

						@spread1 = t.opp_line.to_i 

						if @spread1 > 0

							@spread1 = "+" + @spread1.to_s

						elsif @spread1 == 0

							@spread1 = "PK"

						end

					end

					if t.over_line == @pick1

						@spread1 = @total 


					end

					if t.under_line == @pick1

						@spread1 = @total 


					end

					if t.name == @pick2

						@spread2 = t.spread.to_i 

						if @spread2 > 0

							@spread2 = "+" + @spread2.to_s

						elsif @spread2 == 0

							@spread2 = "PK"

						end

					end

					if t.opp == @pick2

						@spread2 = t.opp_line.to_i

						if @spread2 > 0

							@spread2 = "+" + @spread2.to_s

						elsif @spread2 == 0

							@spread2 = "PK"

						end

					end

					if t.over_line == @pick2

						@spread2 = @total 


					end

					if t.under_line == @pick2

						@spread2 = @total 


					end

				end

			end

		end 

	end 

	if @bet_type == "three team parlay" || @bet_type == "three team reverse"

		@pick1 = @avail_picks.sample
		@avail_picks.delete(@pick1)
		
		@pick2 = @avail_picks.sample
		@avail_picks.delete(@pick2)

		@pick3 = @avail_picks.sample

		@teams.each do |t|

			if t.date == @my_date

				if t.sport == "NFL" || t.sport == "CFB" || t.sport == "MLB" || t.sport == "NHL" || t.sport == "FAN" || t.sport == "NBA" || t.sport == "CBB"

					self.convert_spread(t.spread)
					self.convert_total(t.total)

					if @half_point == true

						@spread = t.spread.to_i
						@spread = @spread.to_f

						if @spread < 0

							@spread = @spread -0.5

						else

							@spread = @spread + 0.5

						end

					else

						@spread = t.spread.to_i

					end

					if @total_half_point == true

						@total = t.total.to_i
						@total = @total.to_f + 0.5

					else

						@total = t.total.to_i



					end

					if t.name == @pick1

						@spread1 = @spread

						if @spread1 > 0

							@spread1 = "+" + @spread1.to_s

						elsif @spread1 == 0

							@spread1 == "PK"

						end

					end

					if t.opp == @pick1

						@spread1 = @spread * -1

						if @spread1 > 0

							@spread1 = "+" + @spread1.to_s

						elsif @spread1 == 0

							@spread1 == "PK"

						end

					end

					if t.over_line == @pick1

						@spread1 = @total


					end

					if t.under_line == @pick1

						@spread1 = @total


					end

					if t.name == @pick2

						@spread2 = @spread

						if @spread2 > 0

							@spread2 = "+" + @spread2.to_s

						elsif @spread2 == 0

							@spread2 == "PK"

						end

					end

					if t.opp == @pick2

						@spread2 = @spread * -1 

						if @spread2 > 0

							@spread2 = "+" + @spread2.to_s

						elsif @spread2 == 0

							@spread2 == "PK"

						end

					end

					if t.over_line == @pick2

						@spread2 = @total


					end

					if t.under_line == @pick2

						@spread2 = @total


					end

					if t.name == @pick3

						@spread3 = @spread

						if @spread3 > 0

							@spread3 = "+" + @spread3.to_s

						elsif @spread3 == 0

							@spread3 == "PK"

						end

					end

					if t.opp == @pick3

						@spread3 = @spread * -1

						if @spread3 > 0

							@spread3 = "+" + @spread3.to_s

						elsif @spread3 == 0

							@spread3 == "PK"

						end

					end

					if t.over_line == @pick3

						@spread3 = @total


					end

					if t.under_line == @pick3

						@spread3 = @total


					end

				end

			end

		end 

	end 

	if @bet_type == "four team reverse"

		@pick1 = @avail_picks.sample
		@avail_picks.delete(@pick1)
		
		@pick2 = @avail_picks.sample
		@avail_picks.delete(@pick2)

		@pick3 = @avail_picks.sample
		@avail_picks.delete(@pick3)
		
		@pick4 = @avail_picks.sample
		@avail_picks.delete(@pick4)

		@teams.each do |t|

			if t.date == @my_date

				self.convert_spread(t.spread)
				self.convert_total(t.total)

				if @half_point == true

					@spread = t.spread.to_i
					@spread = @spread.to_f

					if @spread < 0

						@spread = @spread -0.5

					else

						@spread = @spread + 0.5

					end

				else

					@spread = t.spread.to_i

				end

				if @total_half_point == true

					@total = t.total.to_i
					@total = @total.to_f + 0.5

				else

					@total = t.total.to_i



				end

				if t.name == @pick1

					@spread1 = @spread 

					if @spread1 > 0

						@spread1 = "+" + @spread1.to_s

					elsif @spread1 == 0

						@spread1 == "PK"

					end

				end

				if t.opp == @pick1

					@spread1 = @spread * -1

					if @spread1 > 0

						@spread1 = "+" + @spread1.to_s

					elsif @spread1 == 0

						@spread1 == "PK"

					end

				end

				if t.over_line == @pick1

					@spread1 = @total 


				end

				if t.under_line == @pick1

					@spread1 = @total


				end

				if t.name == @pick2

					@spread2 = @spread

					if @spread2 > 0

						@spread2 = "+" + @spread2.to_s

					elsif @spread2 == 0

						@spread2 == "PK"

					end

				end

				if t.opp == @pick2

					@spread2 = @spread * -1 

					if @spread2 > 0

						@spread2 = "+" + @spread2.to_s

					elsif @spread2 == 0

						@spread2 == "PK"

					end

				end

				if t.over_line == @pick2

					@spread2 = @total 


				end

				if t.under_line == @pick2

					@spread2 = @total 


				end

				if t.name == @pick3

					@spread3 = @spread

					if @spread3 > 0

						@spread3 = "+" + @spread3.to_s

					elsif @spread3 == 0

						@spread3 == "PK"

					end

				end

				if t.opp == @pick3

					@spread3 = @spread * -1

					if @spread3 > 0

						@spread3 = "+" + @spread3.to_s

					elsif @spread3 == 0

						@spread3 == "PK"

					end

				end

				if t.over_line == @pick3

					@spread3 = @total 


				end

				if t.under_line == @pick3

					@spread3 = @total 


				end

				if t.name == @pick4

					@spread4 = @spread 

					if @spread4 > 0

						@spread4 = "+" + @spread4.to_s

					elsif @spread4 == 0

						@spread4 == "PK"

					end

				end

				if t.opp == @pick4

					@spread4 = @spread * -1

					if @spread4 > 0

						@spread4 = "+" + @spread4.to_s

					elsif @spread4 == 0

						@spread4 == "PK"

					end

				end

				if t.over_line == @pick4

					@spread4 = @total


				end

				if t.under_line == @pick4

					@spread4 = @total 


				end

			end

		end

	end

	if @bet_type == "five team parlay"

		@pick1 = @avail_picks.sample
		@avail_picks.delete(@pick1)
		
		@pick2 = @avail_picks.sample
		@avail_picks.delete(@pick2)

		@pick3 = @avail_picks.sample
		@avail_picks.delete(@pick3)
		
		@pick4 = @avail_picks.sample
		@avail_picks.delete(@pick4)

		@pick5 = @avail_picks.sample
		@avail_picks.delete(@pick5)

		@teams.each do |t|

			if t.date == @my_date

				self.convert_spread(t.spread)
				self.convert_total(t.total)

				if @half_point == true

					@spread = t.spread.to_i
					@spread = @spread.to_f

					if @spread < 0

						@spread = @spread -0.5

					else

						@spread = @spread + 0.5

					end

				else

					@spread = t.spread.to_i

				end

				if @total_half_point == true

					@total = t.total.to_i
					@total = @total.to_f + 0.5

				else

					@total = t.total.to_i



				end

				if t.name == @pick1

					@spread1 = @spread 

					if @spread1 > 0

						@spread1 = "+" + @spread1.to_s

					elsif @spread1 == 0

						@spread1 == "PK"

					end

				end

				if t.opp == @pick1

					@spread1 = @spread * -1

					if @spread1 > 0

						@spread1 = "+" + @spread1.to_s

					elsif @spread1 == 0

						@spread1 == "PK"

					end

				end

				if t.over_line == @pick1

					@spread1 = @total 


				end

				if t.under_line == @pick1

					@spread1 = @total


				end

				if t.name == @pick2

					@spread2 = @spread

					if @spread2 > 0

						@spread2 = "+" + @spread2.to_s

					elsif @spread2 == 0

						@spread2 == "PK"

					end

				end

				if t.opp == @pick2

					@spread2 = @spread * -1 

					if @spread2 > 0

						@spread2 = "+" + @spread2.to_s

					elsif @spread2 == 0

						@spread2 == "PK"

					end

				end

				if t.over_line == @pick2

					@spread2 = @total 


				end

				if t.under_line == @pick2

					@spread2 = @total 


				end

				if t.name == @pick3

					@spread3 = @spread

					if @spread3 > 0

						@spread3 = "+" + @spread3.to_s

					elsif @spread3 == 0

						@spread3 == "PK"

					end

				end

				if t.opp == @pick3

					@spread3 = @spread * -1

					if @spread3 > 0

						@spread3 = "+" + @spread3.to_s

					elsif @spread3 == 0

						@spread3 == "PK"

					end

				end

				if t.over_line == @pick3

					@spread3 = @total 


				end

				if t.under_line == @pick3

					@spread3 = @total 


				end

				if t.name == @pick4

					@spread4 = @spread 

					if @spread4 > 0

						@spread4 = "+" + @spread4.to_s

					elsif @spread4 == 0

						@spread4 == "PK"

					end

				end

				if t.opp == @pick4

					@spread4 = @spread * -1

					if @spread4 > 0

						@spread4 = "+" + @spread4.to_s

					elsif @spread4 == 0

						@spread4 == "PK"

					end

				end

				if t.over_line == @pick4

					@spread4 = @total


				end

				if t.under_line == @pick4

					@spread4 = @total 


				end

				if t.name == @pick5

					@spread5 = @spread 

					if @spread5 > 0

						@spread5 = "+" + @spread5.to_s

					elsif @spread5 == 0

						@spread5 == "PK"

					end

				end

				if t.opp == @pick5

					@spread5 = @spread * -1

					if @spread5 > 0

						@spread5 = "+" + @spread5.to_s

					elsif @spread5 == 0

						@spread5 == "PK"

					end

				end

				if t.over_line == @pick5

					@spread5 = @total


				end

				if t.under_line == @pick5

					@spread5 = @total 


				end
			end

		end
	end
end
end

def score_straights
	
	@teams.each do |t|

		if t.date == @wager.date

			if t.name == @wager.team1 

				if t.sport == "NFL" || t.sport == "CFB" || t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

					if t.spread_result == "loss"

						@net_p_l = (@wager.amount.to_i * 1.1) * -1

						@wager.net_result = @net_p_l
						@wager.outcome = "loss"

					elsif t.spread_result == "win"

						@net_p_l = @wager.amount.to_i

						@wager.net_result = @net_p_l
						@wager.outcome = "win"


					elsif t.spread_result == "push"

						@net_p_l = "push"

						@wager.net_result = @net_p_l
							
						@wager.outcome = "push"


					end

				elsif t.sport == "MLB" || t.sport == "NHL"

					if t.spread_result == "loss"

						if t.spread.to_i > 0

							@net_p_l = @wager.amount.to_i * -1

							@wager.net_result = (@net_p_l).round(2)
							
							@wager.outcome = "loss"

						elsif t.spread.to_i < 0

							@net_p_l = @wager.amount.to_i * (t.spread.to_i/100.00)

							@wager.net_result = (@net_p_l).round(2)
								
							@wager.outcome = "loss"


						end

					elsif t.spread_result == "win"

						if t.spread.to_i > 0

							@net_p_l = @wager.amount.to_i * (t.spread.to_i/100.00)

							@wager.net_result = @net_p_l
								
							@wager.outcome = "win"

						elsif t.spread.to_i < 0

							@net_p_l = @wager.amount.to_i

							@wager.net_result = @net_p_l
								
							@wager.outcome = "win"


						end

					elsif t.spread_result == "push"

						@net_p_l = "push"

						@wager.net_result = @net_p_l
							
						@wager.outcome = "win"

					end

				end

			elsif t.opp == @wager.team1

				if t.sport == "NFL" || t.sport == "CFB" || t.sport == "NBA" || t.sport == "CBB" || t.sport == "FAN"

					if t.spread_result == "loss"

						@net_p_l = @wager.amount.to_i

						@wager.net_result = @net_p_l
							
						@wager.outcome = "win"


					elsif t.spread_result == "win"

						@net_p_l = (@wager.amount.to_i * -1.1)

						@wager.net_result = (@net_p_l).round(2)
						
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
							
							@wager.outcome = "win"

						elsif t.opp_line.to_i < 0

							@net_p_l = @wager.amount.to_i 

							@wager.net_result = @net_p_l
							
							@wager.outcome = "win"
						
						end

					elsif t.spread_result == "win"

						if t.opp_line.to_i > 0

							@net_p_l = @wager.amount.to_i * -1

							@wager.net_result = @net_p_l
							
							@wager.outcome = "loss"


						elsif t.opp_line.to_i < 0

							@net_p_l = @wager.amount.to_i * (t.opp_line.to_i/100.00)

							@wager.net_result = @net_p_l
							
							@wager.outcome = "loss"


						end

					elsif t.spread_result == "push"

							@net_p_l = "push"

							@wager.net_result = @net_p_l
							
							@wager.outcome = "push"

					end

				end

			elsif t.over_line == @wager.team1

				if t.total_points > t.total

					@net_p_l = @wager.amount.to_i

					@wager.net_result = @net_p_l
					
					@wager.outcome = "win"
				
				elsif t.total_points < t.total

					@net_p_l = @wager.amount.to_i * -1.1

					@wager.net_result = @net_p_l
					
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
					
					@wager.outcome = "loss"
					

				elsif t.total_points < t.total

					@net_p_l = @wager.amount.to_i 

					@wager.net_result = @net_p_l
					
					@wager.outcome = "win"

				else

					if t.total_points == t.total 

						@net_p_l = "push"

						@wager.net_result = @net_p_l
						
						@wager.outcome = "push"

					end

				end

			end

		end

	end
end

	def two_team_parlays

		@winners = []
		@losers = []
		@pushes = []

		if @wager.wager_type == "two team parlay"

			@teams.each do |t|

				if @wager.date == t.date

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


			end

			if @losers.length > 0

				@net_p_l = @wager.amount.to_i * -1

				@wager.net_result = @net_p_l
				
				@wager.outcome = "loss"

			elsif @losers.length == 0

				if @winners.length == 0

					@net_p_l = "push"

					@wager.net_result = @net_p_l
					
					@wager.outcome = "loss"

				elsif @winners.length == 1

					if @winners[0].class == Hash && @winners[0][:spread].to_i > 100

						@net_p_l = @wager.amount.to_i * (@winners[0][:spread]/100.00)

						@wager.net_result = @net_p_l
						
						@wager.outcome = "win"

					else 

						@net_p_l = @wager.amount.to_i

						@wager.net_result = @net_p_l
						
						@wager.outcome = "win"

					end

				elsif @winners.length > 1

					@ml_counter = 0

					@winners.each do |w|

						if w.class == Hash

							@ml_counter = @ml_counter + 1

						end

					end


					if @ml_counter == 0

						@net_p_l = @wager.amount.to_i * 2.5

						@wager.net_result = @net_p_l
						
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
						
						@wager.outcome = "win"

					end

				end

			end

		end

	end

	def three_team_parlays

		@winners = []
		@losers = []
		@pushes = []
		@parlay_one
		@parlay_two
		@parlay_three
		@net_p_l = 0
		

		if @wager.wager_type == "three team parlay"

			@teams.each do |t|

				if @wager.date == t.date

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

			end

			if @losers.length > 0

				@net_p_l = @wager.amount.to_i * -1

				@wager.net_result = @net_p_l
				
				@wager.outcome = "loss"

			elsif @losers.length == 0

				if @winners.length == 0

					@net_p_l = "push"

					@wager.net_result = @net_p_l
					
					@wager.outcome = "loss"

				elsif @winners.length == 1

					if @winners[0].class == Hash && @winners[0][:spread].to_i > 100

						@net_p_l = @wager.amount.to_i * (@winners[0][:spread]/100.00)

						@wager.net_result = @net_p_l
						
						@wager.outcome = "win"

					else 

						@net_p_l = @wager.amount.to_i

						@wager.net_result = @net_p_l
						
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
						
						@wager.outcome = "win"

					end

				end

			end

		end

	end

	def five_team_parlays

		@winners = []
		@losers = []
		@pushes = []
		

		if @wager.wager_type == "five team parlay"

			@teams.each do |t|

				if @wager.date == t.date

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


			end

			if @losers.length > 0

				@net_p_l = @wager.amount.to_i * -1

				@wager.net_result = @net_p_l
				
				@wager.outcome = "loss"

			elsif @losers.length == 0

				if @winners.length == 0

					@net_p_l = "push"

					@wager.net_result = @net_p_l
					
					@wager.outcome = "loss"

				elsif @winners.length == 1

					if @winners[0].class == Hash && @winners[0][:spread].to_i > 100

						@net_p_l = @wager.amount.to_i * (@winners[0][:spread]/100.00)

						@wager.net_result = @net_p_l
						
						@wager.outcome = "win"

					else 

						@net_p_l = @wager.amount.to_i

						@wager.net_result = @net_p_l
						
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
						
						@wager.outcome = "win"

					end


				end

			end
		end

	end

	def two_team_teasers

		@winners = []
		@losers = []
		

		if @wager.wager_type == "two team teaser"

			self.convert_spread(@wager.spread1)

			if @half_point == true

				@spread1 = @wager.spread1.to_i
				@spread1 = @spread1.to_f + 0.5

			else

				@spread1 = @wager.spread1.to_i


			end

			self.convert_spread(@wager.spread2)

			if @half_point == true

				@spread2 = @wager.spread2.to_i
				@spread2 = @spread2.to_f + 0.5

			else

				@spread2 = @wager.spread2.to_i


			end

			@teams.each do |t|

				if @wager.date == t.date

					self.convert_total(t.total)

					if @total_half_point == true

						@total = t.total_points.to_i
						@total = @total.to_f + 0.5


					else

						@total = t.total_points.to_i


					end

					if t.name == @wager.team1

						if (t.score.to_i + @spread1) > t.opp_score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.opp == @wager.team1

						if (t.opp_score.to_i + @spread1)  > t.score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.over_line == @wager.team1

						if @total > @spread1

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.under_line == @wager.team1

						if @total < @spread1

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					end

					if t.name == @wager.team2

						if (t.score.to_i + @spread2) > t.opp_score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.opp == @wager.team2

						if (t.opp_score.to_i + @spread2) > t.score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.over_line == @wager.team2

						if @total > @spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team1)

						end

					elsif t.under_line == @wager.team2

						if @total < @spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					end

				end


			end

			if @losers.length > 0

				@net_p_l = @wager.amount * -1.2

				@wager.net_result = @net_p_l
				
				@wager.outcome = "loss"

			else

				@net_p_l = @wager.amount.to_i

				@wager.net_result = @net_p_l
				
				@wager.outcome = "win"

			end


		end


	end

	def three_team_teasers

		@winners = []
		@losers = []
		

		if @wager.wager_type == "three team teaser"

			self.convert_spread(@wager.spread1)

			if @half_point == true

				@spread1 = @wager.spread1.to_i
				@spread1 = @spread1.to_f + 0.5

			else

				@spread1 = @wager.spread1.to_i


			end

			self.convert_spread(@wager.spread2)

			if @half_point == true

				@spread2 = @wager.spread2.to_i
				@spread2 = @spread2.to_f + 0.5

			else

				@spread2 = @wager.spread2.to_i


			end

			self.convert_spread(@wager.spread3)

			if @half_point == true

				@spread3 = @wager.spread3.to_i
				@spread3 = @spread3.to_f + 0.5

			else

				@spread3 = @wager.spread3.to_i


			end

			@teams.each do |t|

				if @wager.date == t.date

					self.convert_total(t.total)

					if @total_half_point == true

						@total = t.total_points.to_i
						@total = @total.to_f + 0.5


					else

						@total = t.total_points.to_i


					end

					if t.name == @wager.team1

						if (t.score.to_i + @spread1) > t.opp_score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.opp == @wager.team1

						if (t.opp_score.to_i + @spread1) > t.score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.over_line == @wager.team1

						if @total > @spread1

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.under_line == @wager.team1

						if @total < @spread1

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					end

					if t.name == @wager.team2

						if (t.score.to_i + @spread2) > t.opp_score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.opp == @wager.team2

						if (t.opp_score.to_i + @spread2) > t.score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.over_line == @wager.team2

						if @total > @spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.under_line == @wager.team2

						if @total < @spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					end

					if t.name == @wager.team3

						if (t.score.to_i + @spread3) > t.opp_score.to_i

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.opp == @wager.team3

						if (t.opp_score.to_i + @spread3) > t.score.to_i

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.over_line == @wager.team3

						if @total > @spread3

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.under_line == @wager.team3

						if @total < @spread3

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					end

				end


			end

			if @losers.length > 0

				@net_p_l = @wager.amount * -1.3

				@wager.net_result = @net_p_l
				
				@wager.outcome = "loss"


			else

				@net_p_l = @wager.amount.to_i

				@wager.net_result = @net_p_l
				
				@wager.outcome = "win"


			end


		end


	end

	def five_team_teasers

		@winners = []
		@losers = []
		@current_client_br = @current_client_br.to_i

		if @wager.wager_type == "five team teaser"

			self.convert_spread(@wager.spread1)

			if @half_point == true

				@spread1 = @wager.spread1.to_i
				@spread1 = @spread1.to_f + 0.5

			else

				@spread1 = @wager.spread1.to_i


			end

			self.convert_spread(@wager.spread2)

			if @half_point == true

				@spread2 = @wager.spread2.to_i
				@spread2 = @spread2.to_f + 0.5

			else

				@spread2 = @wager.spread2.to_i


			end

			self.convert_spread(@wager.spread3)

			if @half_point == true

				@spread3 = @wager.spread3.to_i
				@spread3 = @spread3.to_f + 0.5

			else

				@spread3 = @wager.spread3.to_i


			end

			self.convert_spread(@wager.spread4)

			if @half_point == true

				@spread4 = @wager.spread4.to_i
				@spread4 = @spread4.to_f + 0.5

			else

				@spread4 = @wager.spread4.to_i


			end

			self.convert_spread(@wager.spread5)

			if @half_point == true

				@spread5 = @wager.spread5.to_i
				@spread5 = @spread5.to_f + 0.5

			else

				@spread5 = @wager.spread5.to_i


			end

			@teams.each do |t|

				if @wager.date == t.date

					self.convert_total(t.total)

					if @total_half_point == true

						@total = t.total_points.to_i
						@total = @total.to_f + 0.5


					else

						@total = t.total_points.to_i


					end

					if t.name == @wager.team1

						if (t.score.to_i + @spread1) > t.opp_score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.opp == @wager.team1

						if (t.opp_score.to_i + @spread1) > t.score.to_i

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.over_line == @wager.team1

						if @total > @spread1

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					elsif t.under_line == @wager.team1

						if @total < @spread1

							@winners.push(@wager.team1)

						else

							@losers.push(@wager.team1)

						end

					end

					if t.name == @wager.team2

						if (t.score.to_i + @spread2) > t.opp_score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.opp == @wager.team2

						if (t.opp_score.to_i + @spread2) > t.score.to_i

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.over_line == @wager.team2

						if @total > @spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					elsif t.under_line == @wager.team2

						if @total < @spread2

							@winners.push(@wager.team2)

						else

							@losers.push(@wager.team2)

						end

					end

					if t.name == @wager.team3

						if (t.score.to_i + @spread3) > t.opp_score.to_i

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.opp == @wager.team3

						if (t.opp_score.to_i + @spread3) > t.score.to_i

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.over_line == @wager.team3

						if @total > @spread3

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					elsif t.under_line == @wager.team3

						if @total < @spread3

							@winners.push(@wager.team3)

						else

							@losers.push(@wager.team3)

						end

					end

					if t.name == @wager.team4

						if (t.score.to_i + @spread4) > t.opp_score.to_i

							@winners.push(@wager.team4)

						else

							@losers.push(@wager.team4)

						end

					elsif t.opp == @wager.team4

						if (t.opp_score.to_i + @spread4) > t.score.to_i

							@winners.push(@wager.team4)

						else

							@losers.push(@wager.team4)

						end

					elsif t.over_line == @wager.team4

						if @total > @spread4

							@winners.push(@wager.team4)

						else

							@losers.push(@wager.team4)

						end

					elsif t.under_line == @wager.team4

						if @total < @wager.spread4

							@winners.push(@wager.team4)

						else

							@losers.push(@wager.team4)

						end

					end

					if t.name == @wager.team5

						if (t.score.to_i + @spread5) > t.opp_score.to_i

							@winners.push(@wager.team5)

						else

							@losers.push(@wager.team5)

						end

					elsif t.opp == @wager.team5

						if (t.opp_score.to_i + @spread5) > t.score.to_i

							@winners.push(@wager.team5)

						else

							@losers.push(@wager.team5)

						end

					elsif t.over_line == @wager.team5

						if @total > @spread5

							@winners.push(@wager.team5)

						else

							@losers.push(@wager.team5)

						end

					elsif t.under_line == @wager.team5

						if @total < @spread5

							@winners.push(@wager.team5)

						else

							@losers.push(@wager.team5)

						end

					end

				end


			end

			if @losers.length > 0

				@net_p_l = @wager.amount * -1.2

				@wager.net_result = @net_p_l
				
				@wager.outcome = "loss"

			else

				@net_p_l = @wager.amount.to_i * 1.5

				@wager.net_result = @net_p_l
				
				@wager.outcome = "win"


			end


		end



	end

	def two_team_reverses

		@rev_win = []
		@rev_lose = []
		@rev_push = []
		

		if @wager.wager_type == "two team reverse"

			@teams.each do |t|

				if @wager.date == t.date

					if t.name == @wager.team1

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.name
								@wager_hash[:spread] = t.spread.to_i

								@rev_win.push(@wager_hash)

							else

								@rev_win.push(t.name) unless @rev_win.include?(t.name)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.name
								@wager_hash[:spread] = t.spread.to_i

								@rev_lose.push(@wager_hash)

							else

								@rev_lose.push(t.name) unless @rev_lose.include?(t.name)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.name) unless @rev_push.include?(t.name)

						end

					elsif t.opp == @wager.team1

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.opp
								@wager_hash[:spread] = t.opp_line.to_i

								@rev_lose.push(@wager_hash)

							else

								@rev_lose.push(t.opp) unless @rev_lose.include?(t.opp)

							end


						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash = Hash.new

								@wager_hash[:team] = t.opp
								@wager_hash[:spread] = t.opp_line.to_i

								@rev_win.push(@wager_hash)

							else

								@rev_win.push(t.opp) unless @rev_win.include?(t.opp)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.opp) unless @rev_push.include?(t.opp)

						end

					elsif t.over_line == @wager.team1

						if t.total_result == "over"

							@rev_win.push(t.over_line) unless @rev_win.include?(t.over_line)

						elsif t.total_result == "under"

							@rev_lose.push(t.over_line) unless @rev_lose.include?(t.over_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line) unless @rev_push.include?(t.over_line)

						end

					elsif t.under_line == @wager.team1

						if t.total_result == "over"

							@rev_lose.push(t.under_line) unless @rev_lose.include?(t.under_line)

						elsif t.total_result == "under"

							@rev_win.push(t.under_line) unless @rev_win.include?(t.under_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line) unless @rev_push.include?(t.over_line)

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

								@rev_win.push(t.name) unless @rev_win.include?(t.name)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.name
								@wager_hash_two[:spread] = t.spread.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.name) unless @rev_lose.include?(t.name)

							end

						elsif t.spread_result == "push"

							@rev_push.push(t.name) unless @rev_push.include?(t.name)

						end

					elsif t.opp == @wager.team2 

						if t.spread_result == "win"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_lose.push(@wager_hash_two)

							else

								@rev_lose.push(t.opp) unless @rev_lose.include?(t.opp)

							end

						elsif t.spread_result == "loss"

							if t.sport == "MLB" || t.sport == "NHL"

								@wager_hash_two = Hash.new

								@wager_hash_two[:team] = t.opp
								@wager_hash_two[:spread] = t.opp_line.to_i

								@rev_win.push(@wager_hash_two)

							else

								@rev_win.push(t.opp) unless @rev_win.include?(t.opp)

							end


						elsif t.spread_result == "push"

							@rev_push.push(t.opp) unless @rev_push.include?(t.opp)

						end

					elsif t.over_line == @wager.team2 

						if t.total_result == "over"

							@rev_win.push(t.over_line) unless @rev_win.include?(t.over_line)

						elsif t.total_result == "under"

							@rev_lose.push(t.over_line) unless @rev_lose.include?(t.over_line)

						elsif t.total_result == "push"

							@rev_push.push(t.over_line) unless @rev_push.include?(t.over_line)

						end

					elsif t.under_line == @wager.team2 

						if t.total_result == "over"

							@rev_lose.push(t.under_line) unless @rev_lose.include?(t.under_line)

						elsif t.total_result == "under"

							@rev_win.push(t.under_line) unless @rev_win.include?(t.under_line)

						elsif t.total_result == "push"

							@rev_push.push(t.under_line) unless @rev_push.include?(t.under_line)

						end

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
						
						@wager.outcome = "loss"

					elsif @rev_lose[0][:spread] < -100

						@net_p_l = @wager.amount * (@rev_lose[0][:spread].to_i/100.00)

						@wager.net_result = @net_p_l
						
						@wager.outcome = "loss"

					end

				else

					@net_p_l = @wager.amount.to_i * -1.1

					@wager.net_result = @net_p_l
					
					@wager.outcome = "loss"

				end

			elsif @rev_push.length == 1 && @rev_win.length == 1

				if @rev_win[0].class == Hash

					if @rev_win[0][:spread] < -100

						@net_p_l = @wager.amount.to_i 

						@wager.net_result = @net_p_l
						
						@wager.outcome = "win"

					elsif @rev_win[0][:spread] > 100

						@net_p_l = @wager.amount * (@rev_win[0][:spread].to_i/100.00)

						@wager.net_result = @net_p_l
						
						@wager.outcome = "win"

					end

				else

					@net_p_l = @wager.amount.to_i 

					@wager.net_result = @net_p_l
					
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
				
				@wager.outcome = "loss"

			end

		end


	end

	def three_team_reverses

		@rev_win = []
		@rev_lose = []
		@rev_push = []
		@net_p_l = 0

		if @wager.wager_type == "three team reverse"

			@teams.each do |t|

				if @wager.date == t.date

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
						
						@wager.outcome = "loss"

					elsif @rev_lose[0][:spread] < -100

						@net_p_l = @wager.amount * (@rev_lose[0][:spread].to_i/100.00)

						@wager.net_result = @net_p_l
						
						@wager.outcome = "loss"

					end

				else

					@net_p_l = @wager.amount.to_i * -1.1

					@wager.net_result = @net_p_l
					
					@wager.outcome = "loss"

				end

			elsif @rev_push.length == 2 && @rev_win.length == 1

				if @rev_win[0].class == Hash

					if @rev_win[0][:spread] < -100

						@net_p_l = @wager.amount.to_i 

						@wager.net_result = @net_p_l
						
						@wager.outcome = "win"

					elsif @rev_win[0][:spread] > 100

						@net_p_l = @wager.amount * (@rev_win[0][:spread].to_i/100.00)

						@wager.net_result = @net_p_l
						
						@wager.outcome = "win"

					end

				else

					@net_p_l = @wager.amount.to_i 

					@wager.net_result = @net_p_l
					
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
				
				@wager.outcome = "loss"

			end

		end

	end

	def four_team_reverses

		@rev_win = []
		@rev_lose = []
		@rev_push = []
		

		if @wager.wager_type == "four team reverse"

			@teams.each do |t|

				if @wager.date == t.date

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
						
						@wager.outcome = "loss"

					elsif @rev_lose[0][:spread] < -100

						@net_p_l = @wager.amount * (@rev_lose[0][:spread].to_i/100.00)

						@wager.net_result = @net_p_l
						
						@wager.outcome = "loss"

					end

				else

					@net_p_l = @wager.amount.to_i * -1.1

					@wager.net_result = @net_p_l
					
					@wager.outcome = "loss"

				end

			elsif @rev_push.length == 3 && @rev_win.length == 1

				if @rev_win[0].class == Hash

					if @rev_win[0][:spread] < -100

						@net_p_l = @wager.amount.to_i 

						@wager.net_result = @net_p_l
						
						@wager.outcome = "win"

					elsif @rev_win[0][:spread] > 100

						@net_p_l = @wager.amount * (@rev_win[0][:spread].to_i/100.00)

						@wager.net_result = @net_p_l
						
						@wager.outcome = "win"

					end

				else

					@net_p_l = @wager.amount.to_i 

					@wager.net_result = @net_p_l
					
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
				
				@wager.outcome = "loss"

			end

		end

	end

	def get_standings(array)

		@bank_holder = []
		@name_holder = []
		@off_stand = []


		array.each do |a|

			if a.class == Hash 

				@bank_holder.push(a[:bank].to_i)

			else

				@bank_holder.push(a)

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

					if s == a[:bank] 

						@off_stand.push(a) unless @off_stand.include? (a)

					end

				end


			end


		end

		
	end

	def sum_league_wagers(obj)

		sum = 0

		obj.league_wagers.each do |w|

			if w.graded == true

				if w.net_result.to_i > 0 || w.net_result.to_i < 0

					sum = sum + w.net_result.to_i

				end


			end

		end

		@client_hash = Hash.new
		@client_hash[:name] = obj.league_name
		@client_hash[:score] = sum

		@clients_info.push(@client_hash)

	end

	def get_league_players

		Secret.all.each do |s|

			if s.pass == @league.pass

				 @contestants.push(s.user_id) 

	 		end  


		end

		@contestants.each do |c|

			User.all.each do |u|

				if u.id == c.to_i

					@league_players.push(u)


				end


			end

		end

	end

	

	
end
