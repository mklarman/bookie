class SecretsController < ApplicationController

	def new

		@secret = Secret.new


	end

	def create

		@leagues = League.all 
		@pools = Pool.all 
		@page_id
		my_bool = false
		secret = Secret.new(secret_params)
		@pass = secret.pass
		@current_date
		@start_date
		@serial_num_check

		if secret.kind == "league"

			@leagues.each do |l|

				if l.pass == @pass

					@page_id = l.id
					my_bool = true

					convert_date(l.start_date)
					@serial_num_check = @start_date
					convert_date(secret.date)
					@serial_num_check = @current_date

				end

			end

			if secret.save!

				if my_bool == true && @start_date.to_i > @current_date.to_i

					redirect_to league_path(@page_id)

				else

					redirect_to leagues_path

				end
		
			else

				redirect_to leagues_path

			end

		else

			@pools.each do |p|

				if p.pass == @pass

					@page_id = p.id
					my_bool = true


				end

			end

			if secret.save!

				if my_bool == true


					redirect_to pool_path(@page_id)

				else

					redirect_to pools_path

				end
		
			else

				redirect_to pools_path

			end


		end


	end

	private

	def secret_params

		params.require(:secret).permit(:pass, :user_id, :date, :kind)

	end
end
