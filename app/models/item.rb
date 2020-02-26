class Item < ApplicationRecord
  validates :name, presence: true
  validates :quantity, presence: true
  validates :place, presence: true
  validates :deliverydate, presence: true

end

