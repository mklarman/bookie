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
end
