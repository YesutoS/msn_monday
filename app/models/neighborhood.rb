class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :venues,
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    neighborhood
  end
end
