class Order < ApplicationRecord
	has_many :items, class_name: 'OrderItem'
	has_many :products, through:  :items
	belongs_to :user


	before_save do
		self.repeat.gsub!(/[\[\]\"]/,"") if attribute_present?("repeat")
	end
end
