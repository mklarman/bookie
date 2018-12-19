class PoolsController < ApplicationController

	def new

		@pool = Pool.new
		
	end

	def create

		pool = Pool.new(pool_params)
		pool_id = pool.id

		if pool.save
			
			redirect_back(fallback_location: players_path)
		
		else

			redirect_back(fallback_location: players_path)			

		end
	

	end

	def index


		@pools = Pool.all

		@pool = Pool.new

		@secret = Secret.new



	end

	def show

		@pool = Pool.find_by_id(params[:id])
		@pool_id = @pool.id
		@users = User.all
		@tickets = Ticket.all
		@groups = Group.all
		@group = Group.new
		@selection = Selection.new



	end

	

	private

	def pool_params

	params.require(:pool).permit(:commish_id, :sport, :date, :pass, :pool_name)

	end

	def secret_params

		params.require(:secret).permit(:pass, :date, :user_id, :kind)

	end
end
