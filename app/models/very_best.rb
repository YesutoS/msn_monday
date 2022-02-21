class VeryBest < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :venue

  belongs_to :entree,
             class_name: "Dish",
             foreign_key: "dish_id"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    notes
  end
end
