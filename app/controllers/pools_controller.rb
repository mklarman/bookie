class PoolsController < ApplicationController

	def new

		@pool = Pool.new
		
	end

	def create

		pool = Pool.new(pool_params)
		pool_id = pool.id

		if pool.save
			
			redirect_to pool_path(pool.id)
		
		else

			redirect_back(fallback_location: players_path)

		end
	

	end

	def index


		@secret = Secret.new

		@pools = Pool.all

		@pool = Pool.new



	end

	def show

		@pool = Pool.find_by_id(params[:id])
		@pool_id = @pool.id
		@users = User.all
		@tickets = Ticket.all



	end

	

	private

	def pool_params

	params.require(:pool).permit(:commish_id, :sport, :date, :pass, :pool_name)

	end

	def priv_params

		params.require(:priv).permit(:pass, :date, :user_id)

	end
end
