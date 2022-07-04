class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by(email: params[:session][:email])
		if @user && @user.authenticate(params[:session][:password])
			login @user
			flash[:success] = "login successful"
			redirect_back_or root_path
		else
			flash.now[:danger] = "login failed, incorrect credential"
			render :new, status: :unprocessable_entity
		end
	end

	def destroy
		if current_user
			logout
			redirect_to root_path
		end
	end

	def session_params
		params.require(:sessions).permit(:email,:password)
	end
end
