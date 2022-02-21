require "rails_helper"

RSpec.describe Venue, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:neighborhood) }

    it { should have_many(:very_bests) }
  end

  describe "InDirect Associations" do
    it { should have_many(:entrees) }
  end

  describe "Validations" do
  end
end
