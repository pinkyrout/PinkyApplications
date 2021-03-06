class UsersController < ApplicationController
	def index
		@users = User.all
		respond_to do |format|
			format.html
			format.json {render json: @users}
		end
    #@users.each do |user|
		#	user.format_time(user.created_at)
		#end
		#helper method can be used in views only
	end

	def new
		@user = User.new
	end

	def create
		#respond_to do |format|
		#	format.html
		#	format.json {render json: @user}
		#end
	  @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
	end

	def destroy
	  	@user = User.find(params[:id])
      @user.destroy
      redirect_to users_path
	end

	def show
	  	@user = User.find(params[:id])
	  	respond_to do |format|
	  		format.html
	  		format.json {render json: @user.to_json}
	  	end
	end

	def edit
		@user = User.find(params[:id]) 
	end

	def update
		@user = User.find(params[:id])
		if @user.update(user_params)
			redirect_to user_path(@user)
		else
			render 'edit'
		end
	end

  private

  def user_params
  	params.require(:user).permit(:name, :gender, :date_of_birth, :email, :password, :contact_no, :password_confirmation)
  end
end