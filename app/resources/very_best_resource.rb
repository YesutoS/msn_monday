class VeryBestResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :notes, :string
  attribute :dish_id, :integer
  attribute :venue_id, :integer
  attribute :user_id, :integer

  # Direct associations

  belongs_to :user

  belongs_to :venue

  belongs_to :entree,
             resource: DishResource,
             foreign_key: :dish_id

  # Indirect associations
end
