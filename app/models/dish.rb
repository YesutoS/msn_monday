class Dish < ApplicationRecord
  # Direct associations

  belongs_to :cuisine,
             counter_cache: true

  has_many   :very_bests,
             dependent: :destroy

  # Indirect associations

  has_many   :venues,
             through: :very_bests,
             source: :venue

  # Validations

  # Scopes

  def to_s
    name
  end
end
