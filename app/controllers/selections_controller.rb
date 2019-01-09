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
		@pool
		selections = []

		Pool.all.each do |p|

			if p.id.to_i == @selection.pool_id.to_i

				@pool = p 

			end

		end

		@pool.selections.each do |s|

			if s.date != @my_date && s.result == "none"

				selections.push(s.id)


			end


		end

		selections.delete(@selection.id)

		if @selection.update(selection_params)

			if selections.length > 0

				redirect_to edit_selection_path(selections[0])

			else

				redirect_to pool_path(@selection.pool_id)

			end
		else

			redirect_to pool_path(@selection.pool_id)

		end

	end

	private

	def selection_params

		params.require(:selection).permit(:date, :user_id, :pool_id, :group_id, :selection, :result)

	end

end

