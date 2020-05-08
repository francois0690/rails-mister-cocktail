class Dose < ApplicationRecord
  validates :description, presence: true
  validates :cocktail, uniqueness: { scope: [:cocktail, :ingredient] }
  # validates :ingredient, uniqueness: { scope: [:cocktail, :ingredient] }

  belongs_to :cocktail
  belongs_to :ingredient
end
