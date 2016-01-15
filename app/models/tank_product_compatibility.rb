class TankProductCompatibility < ActiveRecord::Base
  belongs_to :tank
  belongs_to :product
end
