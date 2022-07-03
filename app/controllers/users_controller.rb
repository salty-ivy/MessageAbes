class UsersController < ApplicationController
	def index
	end

	def show
	end

	def new
		@user = User.new
	end

	def create
		if params[:user][:password] == params[:user][:confirm_password]
			@user = User.new(username:params[:user][:username],email:params[:user][:email],password:params[:user][:password])
			if @user.save
				flash[:success] = "User #{@user.email} created successfully"
				redirect_to root_path
			else
				flash[:alert] = "signup failed please try again"
				render :new
			end
		else
			flash[:alert] = "Confirm Password didn't match"
			# redirect_to signup_path
			render action: "new"
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
		params.require(:user).permit(:username,:email,:password)
	end

end
