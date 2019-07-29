class AgentController < ApplicationController
  def orders
  	@items = OrderNotification.all
  	@register = RegisterationNumber.create!(user_id:params[:q]) if params[:q].present?
  end

end
