require "rails_helper"

RSpec.describe Dish, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:cuisine) }

    it { should have_many(:very_bests) }
  end

  describe "InDirect Associations" do
    it { should have_many(:venues) }
  end

  describe "Validations" do
  end
end
