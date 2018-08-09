class ClientsController < ApplicationController

	def new

		@client = Client.new


	end
	
	def show

		@user = User.all
	end

	def index

		@user = User.all


	end

	def create

		user = current_user
		client = Client.new(client_params)
		user.id = client.user_id

		if client.save
			
			redirect_back(fallback_location: clients_path)
		
		else

			render new_client_path

		end


	end

	private

	def client_params

		params.require(:client).permit(:user_id, :first_name, :last_name, :style, :stakes, :quantity)

	end

end


