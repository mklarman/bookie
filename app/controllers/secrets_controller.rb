class SecretsController < ApplicationController

	def new

		@secret = Secret.new


	end

	def convert_date(date)

			day = date[0] << date[1]
			
			month = date[3] << date[4] << date[5]

			

			year = date[7] << date[8] << date[9] << date[10]

			@serial_num_check = year << month << day
			@serial_num_check = @serial_num_check.to_i



		end

	def create


		@leagues = League.all 
		@pools = Pool.all 
		@page_id = nil
		secret = Secret.new(secret_params)
		@pass = secret.pass

		if secret.kind == "league"

			@leagues.each do |l|

				if l.pass == @pass

					@page_id = l.id
				end
			

			end			

			if secret.save!

				redirect_to league_path(@page_id)

			else

				redirect_to leagues_path

			end

			
		else

			@pools.each do |p|

				if p.pass == @pass

					@page_id = p.id
					
				end

			end

			if secret.save!

				if @page_id != nil

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
