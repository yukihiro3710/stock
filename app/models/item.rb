class Item < ApplicationRecord
  validates :name, presence: true
  validates :quantity, presence: true
  validates :place, presence: true
  validates :deliverydate, presence: true
  scope :name_like, -> name { where('name like ?', "%#{name}%") if name.present? }
  def self.search(search)
    if search
      Item.where(['content LIKE ?', "%#{search}%"])
    else
      Item.all
    end
  end
end

