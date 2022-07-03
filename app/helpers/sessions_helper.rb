module SessionsHelper
	def login(user)
		session[:current_user_id] = user.id
		@current_user = user
	end

	def logout
		if session[:current_user_id]
			session.delete(:current_user_id)
			@current_user = nil
		end
	end

	def current_user
		if session[:current_user_id]
			@current_user ||= User.find(session[:current_user_id])
		else
			return nil
		end
	end

	def current_user?(user)
		@current_user == user
	end

	def logged_in?
		!current_user.nil?
	end

	def store_location
		session[:requested_url] = request.original_url if request.get?
	end

	def redirect_back_or(default)
		redirect_to(session[:requested_url]||default)
		session.delete(:requested_url)
	end

end
