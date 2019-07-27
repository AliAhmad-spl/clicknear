class AgentController < ApplicationController
  def orders
  	@items = OrderItem.where(product_id:current_user.shop.products.ids)
  end
end
