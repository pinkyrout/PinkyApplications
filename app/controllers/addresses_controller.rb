class AddressesController < ApplicationController
	def show
		@address = Address.find_by(user_id: params[:id]) 
	end
end
