module ClientsHelper

	def client_bank

		current_user.clients.each do |c|

			@client_results = []

			@client_hash = Hash.new

			@combo_name = c.first_name + " " + c.last_name

			@client_hash[:name] = @combo_name
			@client_hash[:c_id] = c.id
			@client_hash[:stakes] = c.stakes

			c.wagers.each do |w|

				if w.graded == true

					if w.net_result != "push"

						@client_results.push(w.net_result)

					end

				end

			end

			@current_client_br = @client_results.inject(0){|sum,x| sum + x }

			if @current_client_br.to_i > 0

				@current_client_br = "+" + @current_client_br.to_s

			else

				@current_client_br = @current_client_br.to_s

			end

			@client_hash[:bank] = @current_client_br

			@array_of_results.push(@client_hash)

		end


	end

	def get_pending

		current_user.wagers.each do |w|

			if w.date == @my_date

					@pending = @pending + 1

			end


		end

	end

	def sort_clients

		current_user.clients.each do |c|

			if c.stakes == "small timer"

				@small_timers = "Small Timers"
				@small = @small + 1

			elsif c.stakes == "pay dumper"

				@pay_dumpers = "Pay Dumpers"
				@pay = @pay + 1

			elsif c.stakes == "whale"

				@whales = "Whales"
				@high_roll = @high_roll + 1

			end

		end

	end

end
