module WagersHelper

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

			 			@NFL_sides.push(t.sides_line) 
						@NFL_totals.push(t.total_line) 

		 			elsif t.sport == "MLB" 

			 			@MLB_sides.push(t.sides_line) 
			 			@MLB_totals.push(t.total_line) 

		 			elsif t.sport == "NBA" 

					 	@NBA_sides.push(t.sides_line) 
			 			@NBA_totals.push(t.total_line) 

		 			elsif t.sport == "NHL" 

						 @NHL_sides.push(t.sides_line) 
			 			@NHL_totals.push(t.total_line) 

		 			elsif t.sport == "CBB" 

			 			@CBB_sides.push(t.sides_line) 
			 			@CBB_totals.push(t.total_line) 

		 			elsif t.sport == "CFB" 

						@CFB_sides.push(t.sides_line) 
						@CFB_totals.push(t.total_line) 

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

	  		if @client.bet_types == "Exotics" 


	  			if @client.sports[0] + @client.sports[1] + @client.sports[2] == "NFL" || @client.sports[8] + @client.sports[9] + @client.sports[10] == "NFL" 

	  				choices = []
	  				nfl_sides = ["bears", "falcons", "giants"]
	  				nfl_totals = [45, 60, 55, 34]

	  				nfl_sides.each do NFL

	  					choices.push(NFL)

	  				end

	  				nfl_totals.each do |totals|

	  					choices.push(totals)

	  				end

	  			end

	  			return choices

	  		end

	  	end







end
