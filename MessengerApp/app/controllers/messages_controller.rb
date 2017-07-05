class MessagesController < ApplicationController

	# This renders index.html.haml
	def	index
		@messages = Message.all
		render 'index'
	end
	
	# This renders new.html.haml
	def	new
		@message = Message.new
		render 'new'
	end
	
	def	create
		@message = Message.new(message_params)
		if @message.save
			redirect_to '/messages'
		else
			render 'new'
		end
	end
	
	private
	def	message_params
		params.require(:message).permit(:content)
	end
end
