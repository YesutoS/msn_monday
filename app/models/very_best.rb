class VeryBest < ApplicationRecord
  # Direct associations

  belongs_to :venue,
             class_name: "User",
             counter_cache: true

  belongs_to :dish,
             class_name: "Venue",
             counter_cache: true

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
