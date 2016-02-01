class Measurement < ActiveRecord::Base
  NAMES = ["łyżka", "łyżeczka", "szklanka"]
  belongs_to :product
end
