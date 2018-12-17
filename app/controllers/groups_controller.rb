class GroupsController < ApplicationController
	def new
		
		@group = Group.new

	end

	def create

		group = Group.new(group_params)

		if group.save

			redirect_back(fallback_location: pools_path)

		else

			redirect_back(fallback_location: pools_path)

		end

	end

	def index

		@groups = Group.all

	end

	def update

		@group = Group.find_by_id(params[:id])

		if @group.update(group_params)

			redirect_back(fallback_location: pools_path)
		else

			redirect_back(fallback_location: pools_path)

		end

	end

	private

	def group_params

		params.require(:group).permit(:date, :pool_id, :player1, :player2, :player3, :player4, :player5)

	end
end
