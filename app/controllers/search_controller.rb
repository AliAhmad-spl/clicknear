class SearchController < ApplicationController
  def index
  	search = params[:q] if params[:q].present?
  	@products = Product.where("name LIKE ? OR area LIKE ? OR city LIKE ? OR state LIKE ? OR category LIKE ?", "%#{search}%","%#{search}%","%#{search}%","%#{search}%", "%#{search}%") if params[:q].present?	
  	end
end
