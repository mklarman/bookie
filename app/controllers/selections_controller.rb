class SelectionsController < ApplicationController

	def new
		
		@selection = Selection.new

	end

	def create

		selection = Selection.new(selection_params)

		if selection.save

			redirect_back(fallback_location: pools_path)

		else

			redirect_to users_profile_path

		end

	end


	def update

		@selection = Selection.find_by_id(params[:id])

		if @selection.update(selection_params)

			redirect_back(fallback_location: new_team_path)
		else

			render pools_path

		end

	end

	private

	def selection_params

		params.require(:selection).permit(:date, :user_id, :pool_id, :group_id, :selection, :result)

	end

end

