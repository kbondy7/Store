class ItemSize < ActiveRecord::Base
  belongs_to :size
  belongs_to :item
end
