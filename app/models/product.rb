class Product < ActiveRecord::Base

  has_many :measurements
  accepts_nested_attributes_for :measurements, reject_if: :all_blank, allow_destroy: true
  has_many :ingredients
  has_many :dishes, through: :ingredients

  validates :name, presence: true
  validates :calories, presence: true
  validates :standard_measure, presence: true

end
