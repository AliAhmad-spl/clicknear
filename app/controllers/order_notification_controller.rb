class OrderNotificationController < ApplicationController
  def create
  end
  def order_details
     @orders = Order.find(params[:id])
  end

  def index
  	@notifications = OrderNotification.where(shop_id: current_user.shop.id)
  end
end