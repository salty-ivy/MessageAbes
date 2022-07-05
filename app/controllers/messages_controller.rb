class MessagesController < ApplicationController

	def create
		@message = current_user.messages.new(message_param)
		if @message && @message.save
			# @messages = Message.all
			redirect_to root_path
		end
	end

	def message_param
		params.require(:messages).permit(:body)
	end
	
end
