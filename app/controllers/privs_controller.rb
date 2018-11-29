class PrivsController < ApplicationController

	def new

		@priv = Priv.new


	end

	def create

		@pools = Pool.all 
		@pl_id
		my_bool = false
		priv = Priv.new(priv_params)
		@pass = priv.pass

		@pools.each do |l|

			if l.pass == @pass

				@pl_id = l.id
				my_bool = true


			end

		end

		if priv.save!

			if my_bool == true

				redirect_to pool_path(@pl_id)

			else

				redirect_to pools_path

			end
		
		else

			redirect_to pools_path

		end


	end

	private

	def priv_params

		params.require(:priv).permit(:pass, :user_id, :date)

	end
end
