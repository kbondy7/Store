class Cart < ActiveRecord::Base
  has_many :item_orders
end
