class UsersController < ApplicationController
	def index
	end

	def show
	end

	def new
		@user = User.new
	end

	def create
		
		@user = User.new(user_param)
		if @user.save
			flash[:success] = "User #{@user.email} created successfully"
			redirect_to login_path
		else
			# flash[:alert] = "signup failed please try again"
			# puts @user.errors.full_messages
			# flash.now[:notice] = "flash errors"  status: :unprocessable_entity
			render :new, status: :unprocessable_entity
		end
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def test
		flash.now[:notic] = "test"
		render :test
	end

	def user_param
		params.require(:user).permit(:username,:email,:password,:password_confirmation)
	end

end
