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

		@date = Time.now 
		@day = @date.strftime("%d")
		@month = @date.strftime("%b") 
		@year = @date.strftime("%Y") 


		@my_date = @day << " " <<@month << " " <<@year 

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

					start_day = l.start_date[0] << l.start_date[1]
					start_month = l.start_date[3] << l.start_date[4] << l.start_date[5]
					start_year = l.start_date[7] << l.start_date[8] << l.start_date[9] << l.start_date[10]

					current_day = @my_date[0] << @my_date[1]
					current_month = @my_date[3] << @my_date[4] << @my_date[5]
					current_year = @my_date[7] << @my_date[8] << @my_date[9] << @my_date[10]

					if start_month == "Jan"

						start_month = "01"

					elsif start_month == "Feb"

						start_month = "02"

					elsif start_month == "Mar"

						start_month = "03"

					elsif start_month == "Apr"

						start_month = "04"

					elsif start_month == "May"

						start_month = "05"

					elsif start_month == "Jun"

						start_month = "06"

					elsif start_month == "Jul"

						start_month = "07"

					elsif start_month == "Aug"

						start_month = "08"

					elsif start_month == "Sep"

						start_month = "09"

					elsif start_month == "Oct"

						start_month = "10"

					elsif start_month == "Nov"

						start_month = "11"

					elsif start_month == "Dec"

						start_month = "12"

					end

					if current_month == "Jan"

						current_month = "01"

					elsif current_month == "Feb"

						current_month = "02"

					elsif current_month == "Mar"

						current_month = "03"

					elsif current_month == "Apr"

						current_month = "04"

					elsif current_month == "May"

						current_month = "05"

					elsif current_month == "Jun"

						current_month = "06"

					elsif current_month == "Jul"

						current_month = "07"

					elsif current_month == "Aug"

						current_month = "08"

					elsif current_month == "Sep"

						current_month = "09"

					elsif current_month == "Oct"

						current_month = "10"

					elsif current_month == "Nov"

						current_month = "11"

					elsif current_month == "Dec"

						current_month = "12"

					end

					@start_date = start_year << start_month << start_year
					@current_date = current_year << current_month << current_day

					if @start_date.to_i >= @current_date.to_i && my_bool == true

						if secret.save!

								redirect_to league_path(@page_id)

						end

					else

						redirect_to leagues_path

					end


				end

			end

			
		else

			@pools.each do |p|

				if p.pass == @pass

					@page_id = p.id
					my_bool = true
					self.convert_date(p.date)
					@serial_num_check = @start_date
					self.convert_date(secret.date)
					@serial_num_check = @current_date


				end

			end

			if secret.save!

				if my_bool == true && @start_date.to_i > @current_date.to_i


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
