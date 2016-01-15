class Product < ActiveRecord::Base
  has_many :tanks, :through => :tank_product_compatibilities
  has_many :orders

  ## CONSTANTS ##

  ACID_START = 0
  ACID_END = 6

  NEUTRAL_START = 6
  NEUTRAL_END = 8

  ALKALINE_START = 8
  ALKALINE_END = 14


  ## REQUIRED FOR COMPATIBILITY TESTS ##

  def acid?
    return self.ph >= ACID_START && self.ph <= ACID_END
  end

  def neutral?
    return self.ph > NEUTRAL_START && self.ph < NEUTRAL_END
  end

  def alkaline?
    return self.ph >= ALKALINE_START && self.ph <= ALKALINE_END
  end

  ## INSTANCE LEVEL COMPATIBILITY METHODS ##

  def compatible?(other_product)
    return (self.acid? && other_product.acid?) ||
           (self.neutral? && other_product.neutral?) ||
           (self.alkaline? && other_product.alkaline?)

  end

  def incompatible?(other_product)
    return !(self.compatible?(other_product))
  end

  ## CLASS LEVEL COMPATIBILITY METHODS ##

  def self.compatible?(product_a, product_b)
    return product_a.compatible?(product_b)
  end

  def self.incompatible?(product_a, product_b)
    return product_a.incompatible?(product_b)
  end
end
