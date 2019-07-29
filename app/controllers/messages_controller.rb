class MessagesController < ApplicationController
  before_action  do
  	@converstion = Converstion.find(params[:converstion_id])
  end

  def index
  	@messages = @converstion.messages
  	@message = @converstion.messages.new
  end

  def new
  	@message = @converstion.messages.new
  end

  def create
  		@message = @converstion.messages.new(messages_params)
  		if @message.save!
  			redirect_to converstion_messages_path(@message)
  		end
  end

  private

  def message_params
  	params.require(:message).permit(:body, :user_id)
  end
end