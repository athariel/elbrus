class Measurement < ActiveRecord::Base
  belongs_to :product
  belongs_to :measurement_type
  validates :measurement_type_id, presence: true, uniqueness: { scope: :product_id, message: "ta miara jest już zdefiniowana dla tego produktu" }

end
