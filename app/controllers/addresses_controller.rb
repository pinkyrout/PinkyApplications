class AddressesController < ApplicationController
	def show
		@user = User.find(params[:id])
		@address = Address.find_by(user_id: params[:id])
	end

	def new
		#@user.address = @address
		@address = Address.new
		#@address.user_id = params[:id]
	end

	def create
		#@address = @user.create_address(address_params)
		#@user = current_user
		#@address = @user.addresses.create(address_params)
		@address = Address.new(address_params)
		@user = User.find(params[:user_id])
		if @address.save 
			puts 'Address have been added successfully'
			redirect_to users_path
		else
			render 'new'
		end

	end

	def address_params
		params.require(:address).permit(:hometown, :state, :country, :pincode, :user_id)
	end
end
