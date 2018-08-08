class ClientsController < ApplicationController
	def show

		@user = User.all
	end

	def index

		@user = User.all


	end
end
