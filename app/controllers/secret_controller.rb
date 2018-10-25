class SecretController < ApplicationController

	def new

		@secret = Secret.new


	end

	def create

		@leagues = League.all 
		@lg_id
		my_bool = false
		pass = Secret.new(pass_params)

		if pass.save!

			@leagues.each do |l|

				if l.pass == pass(params[:pass])

					@lg_id = l.id
					my_bool = true

				end


			end

			if my_bool == true

				redirect_to leagues_path(@lg_id)

			else

				redirect_to leagues_path

			end


		else

			redirect_to leagues_path

		end


	end

	private

	def pass_params

		params.require(:secret).permit(:pass)

	end
end
