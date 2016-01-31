class Ingredient < ActiveRecord::Base
  belongs_to :product
  belongs_to :measurement
  belongs_to :dish
end
