class AgentController < ApplicationController
  def orders
  	@items = OrderItem.where(product_id:current_user&.shop&.products&.ids)
  	 @register = RegisterationNumber.create!(user_id:params[:q]) if params[:q].present?
  end

end
