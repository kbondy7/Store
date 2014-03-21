class Item < ActiveRecord::Base
  has_many :colors
  has_many :orders
  has_many :sizes
end
