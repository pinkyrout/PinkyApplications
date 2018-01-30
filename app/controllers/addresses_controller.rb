class AddressesController < ApplicationController
	def show
		#@user = User.find(params[:id])
		@address = Address.find_by(user_id: params[:user_id])
	end

	def new
		@address = Address.new
	end

	def create
		@address = Address.new(address_params)
		if @address.save 
			puts 'Address have been added successfully'
			 #render 'show'
			redirect_to user_address_path
		else
			render 'new'
		end

	end

	def edit
		@address = Address.find_by(user_id: params[:user_id])
	end

	def update
		@address = Address.find_by(user_id: params[:user_id])
		@user = User.find(params[:user_id])
		if @address.update(address_params)
			redirect_to user_address_path(@user)
		else
			render 'edit'
		end
	end

	def address_params
		params.require(:address).permit(:hometown, :state, :country, :pincode, :user_id)
	end
end
