class Tank < ActiveRecord::Base
  has_many :products, :through => :tank_product_compatibilities

  validates :name, uniqueness: true
  validates :name, :capacity_min, :capacity_max, presence: true
end
