class ApplicationController < ActionController::Base
	include SessionsHelper
	private
	def login_required
		unless logged_in?
			store_location
			redirect_to login_path
		end
	end
end
