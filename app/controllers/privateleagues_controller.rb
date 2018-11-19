class PrivateleaguesController < ApplicationController

	def new

		@pass = PrivateLeague.new


	end

	def create

		my_bool = false
		@lg_id
		pass = PrivateLeague.new(pass_params)
		@leagues = League.all
		

		if pass.save

			@leagues.each do |l|

				if l == params[:pass]

					@lg_id = l.id
					my_bool = true

				end


			end

			if my_bool == true
			
				redirect_to league_path(@lg_id)
		
			else

				redirect_to leagues_path

			end

		end


	end

	private 

	def pass_params

		params.require(:private_league).permit(:pass)

	end
end
