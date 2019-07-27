class OrderNotification < ApplicationRecord
	belongs_to :shop
	belongs_to :order
end
