module ApplicationHelper

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

			 return @my_date

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

		




end
