class ChatroomController < ApplicationController
	before_action :login_required, 

	def home
		@message = Message.new
		@messages = Message.all
	end

	def about

	end
end
