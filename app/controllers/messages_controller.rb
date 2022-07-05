class MessagesController < ApplicationController

	def create
		@message = current_user.messages.new(message_param)
		if @message && @message.save
			# @messages = Message.all
			ActionCable.server.broadcast("chatroom_channel",{mod_message:render_message})
			# redirect_to root_path
		end
	end

	def render_message
		render(partial:'message',locals:{message:@message})
	end

	private
	def message_param
		params.require(:messages).permit(:body)
	end
	
end
