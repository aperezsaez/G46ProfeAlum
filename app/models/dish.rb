class Dish < ApplicationRecord
  has_many :dishes_ingredients, dependent: :destroy
  has_many :ingredients, through: :dishes_ingredients

  accepts_nested_attributes_for :dishes_ingredients, reject_if: :all_blank, allow_destroy: true
end
