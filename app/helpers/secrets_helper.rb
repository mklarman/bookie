module SecretsHelper

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

			@serial_num_check = year << month << day
			@serial_num_check = @serial_num_check.to_i



		end
end
