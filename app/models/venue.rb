class Venue < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood,
             counter_cache: true

  has_many   :very_bests,
             dependent: :destroy

  # Indirect associations

  has_many   :entrees,
             through: :very_bests,
             source: :entree

  # Validations

  # Scopes

  def to_s
    name
  end
end
