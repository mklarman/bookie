module ApplicationHelper

	def get_access

		LeagueClient.all.each do |c|

			if c.id.to_i == 267

				@my_client = c

			end

		end

	end

	def display_client_form

		@client = LeagueClient.new

	end

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

  	end

  	def get_client_br

			current_user.clients.each do |c|

				if c.id == @wager.client_id

					c.wagers.each do |w|

						if w.graded == true

							if w.net_result == "push"

								w.net_result = "push"

							else

								@client_results.push(w.net_result.to_i)

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

						@user_results.push(w.net_result.to_i)

					end

				end

			end

			@current_br = (@user_results.inject(0){|sum,x| sum + x }) * -1

		end

		def display_straight_stats

			@client.wagers.each do |w|

				if w.graded == true

					if w.wager_type == "straight"

						if w.net_result == "push"

						else

							@straight_results.push(w.net_result)

						end

					end

				end

			end

			@straight_net = (@straight_results.inject(0){|sum,x| sum + x })

		end

		def display_teaser_stats

			@client.wagers.each do |w|

				if w.graded == true

					if w.wager_type == "two team teaser"

						if w.net_result == "push"

						else

							@two_t_results.push(w.net_result)

						end

					elsif w.wager_type == "three team teaser"

						
						if w.net_result == "push"

						else

							@three_t_results.push(w.net_result)

						end

					elsif w.wager_type == "five team teaser"

						if w.net_result == "push"

						else

							@five_t_results.push(w.net_result)

						end
						

					end

				end

			end

			@two_t_net = (@two_t_results.inject(0){|sum,x| sum + x })
			@three_t_net = (@three_t_results.inject(0){|sum,x| sum + x })
			@five_t_net = (@five_t_results.inject(0){|sum,x| sum + x })

		end

		def display_parlay_stats

			@client.wagers.each do |w|

				if w.graded == true

					if w.wager_type == "two team parlay"

						if w.net_result == "push"

						else

							@two_p_results.push(w.net_result)

						end

					elsif w.wager_type == "three team parlay"

						
						if w.net_result == "push"

						else

							@three_p_results.push(w.net_result)

						end

					elsif w.wager_type == "five team parlay"

						if w.net_result == "push"

						else

							@five_p_results.push(w.net_result)

						end
						

					end

				end

			end

			@two_p_net = (@two_p_results.inject(0){|sum,x| sum + x })
			@three_p_net = (@three_p_results.inject(0){|sum,x| sum + x })
			@five_p_net = (@five_p_results.inject(0){|sum,x| sum + x })



		end

		def display_reverse_stats

			@client.wagers.each do |w|

				if w.graded == true

					if w.wager_type == "two team reverse"

						if w.net_result == "push"

						else

							@two_r_results.push(w.net_result)

						end

					elsif w.wager_type == "three team reverse"

						
						if w.net_result == "push"

						else

							@three_r_results.push(w.net_result)

						end

					elsif w.wager_type == "four team reverse"

						if w.net_result == "push"

						else

							@four_r_results.push(w.net_result)

						end
						

					end

				end

			end

			@two_r_net = (@two_r_results.inject(0){|sum,x| sum + x })
			@three_r_net = (@three_r_results.inject(0){|sum,x| sum + x })
			@four_r_net = (@four_r_results.inject(0){|sum,x| sum + x })

		end

		def get_ungraded

			current_user.wagers.each do |w|

				if w.graded == false && w.date != @my_date

					@ungraded = @ungraded + 1

				end


			end

		end

		def convert_date(date)

			day = date[0] << date[1]
			
			month = date[3] << date[4] << date[5]

			if month == "Jan"

				month = "01"

			elsif month == "Feb"

				month = "02"

			elsif month == "Mar"

				month = "03"

			elsif month == "Apr"

				month = "04"

			elsif month == "May"

				month = "05"

			elsif month == "Jun"

				month = "06"

			elsif month == "Jul"

				month = "07"

			elsif month == "Aug"

				month = "08"

			elsif month == "Sep"

				month = "09"

			elsif month == "Oct"

				month = "10"

			elsif month == "Nov"

				month = "11"

			elsif month == "Dec"

				month = "12"

			end

			year = date[7] << date[8] << date[9] << date[10]

			@serial_num_check = day << month << year
			@serial_num_check = @serial_num_check.to_i



		end

		def convert_start_time(date)

			day = date[0] << date[1]
			
			month = date[3] << date[4] << date[5]

			if month == "Jan"

				month = "01"

			elsif month == "Feb"

				month = "02"

			elsif month == "Mar"

				month = "03"

			elsif month == "Apr"

				month = "04"

			elsif month == "May"

				month = "05"

			elsif month == "Jun"

				month = "06"

			elsif month == "Jul"

				month = "07"

			elsif month == "Aug"

				month = "08"

			elsif month == "Sep"

				month = "09"

			elsif month == "Oct"

				month = "10"

			elsif month == "Nov"

				month = "11"

			elsif month == "Dec"

				month = "12"

			end

			year = date[7] << date[8] << date[9] << date[10]

			@start_time = day << month << year
			@start_time = @start_time.to_i



		end

		def convert_end_time(date)

			day = date[0] << date[1]
			
			month = date[3] << date[4] << date[5]

			if month == "Jan"

				month = "01"

			elsif month == "Feb"

				month = "02"

			elsif month == "Mar"

				month = "03"

			elsif month == "Apr"

				month = "04"

			elsif month == "May"

				month = "05"

			elsif month == "Jun"

				month = "06"

			elsif month == "Jul"

				month = "07"

			elsif month == "Aug"

				month = "08"

			elsif month == "Sep"

				month = "09"

			elsif month == "Oct"

				month = "10"

			elsif month == "Nov"

				month = "11"

			elsif month == "Dec"

				month = "12"

			end

			year = date[7] << date[8] << date[9] << date[10]

			@end_time = day << month << year
			@end_time = @end_time.to_i



		end

		




end
