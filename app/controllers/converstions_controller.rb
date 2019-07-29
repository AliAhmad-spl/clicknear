class ConverstionsController < ApplicationController
	before_action :authenticate_user!

	def index
		@users = User.all
		@converstions = Converstion.all
	end

	def create
		if Converstion.between(params[:sender_id] ,params[:recipient_id]).present?
			@converstion = Converstion.between(params[:sender_id] ,params[:recipient_id]).first
		else
			@converstion = Converstion.create!(converstion_params)
		end
	  redirect_to converstion_messages_path(@converstion)
	end

   def show
   	
   end
	private
	def converstion_params
		params.permit(:sender_id ,:recipient_id)
	end
end
