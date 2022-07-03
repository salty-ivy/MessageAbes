class UsersController < ApplicationController
	def index
	end

	def show
	end

	def new
		@user = User.new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def user_param
		params.require(:user).permit(:usernme,:email,:password)
	end

end
