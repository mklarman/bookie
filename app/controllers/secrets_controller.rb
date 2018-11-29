class SecretsController < ApplicationController

	def new

		@secret = Secret.new


	end

	def create

		@leagues = League.all 
		@lg_id
		my_bool = false
		secret = Secret.new(secret_params)
		@pass = secret.pass

		@leagues.each do |l|

			if l.pass == @pass

				@lg_id = l.id
				my_bool = true


			end

		end

		if secret.save!

			if my_bool == true

				puts @lg_id

				redirect_to league_path(@lg_id)

			else

				redirect_to leagues_path

			end
		
		else

			redirect_to leagues_path

		end


	end

	private

	def secret_params

		params.require(:secret).permit(:pass, :user_id, :date)

	end
end
