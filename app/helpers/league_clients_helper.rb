module LeagueClientsHelper

	def convert_spread(num_string)

		@half_point = false

		num = num_string.to_s

		for pos in 0...num.length

			if num[pos].chr == "."

				@half_point = true

			end


		end


	end

	def convert_total(total)

		@total_half_point = false

		tot = total.to_s

		for pos in 0...tot.length

			if tot[pos].chr == "."

				@total_half_point = true

			end


		end


	end

end
