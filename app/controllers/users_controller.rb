class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			flash[:notice] = "Account Succesfully Created"
			redirect_to "user#index"
		else
			flash[:alert] = "Error Creating Account"
			redirect_to :back
		end
	end
	def show

	end
	def update
		
	end
	def destroy
		
	end
	def user_params
		params.require(:user).permit(:first_name, :last_name, :user_name, :email, :password, :password_confirmation)
	end
end
