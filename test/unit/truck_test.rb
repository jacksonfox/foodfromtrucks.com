require 'test_helper'

class TruckTest < ActiveSupport::TestCase
  context "A Truck" do
    should validate_presence_of :name
    should validate_presence_of :user
    should belong_to :user

    should "have a working factory" do
      assert Factory.build(:truck).valid?
    end
  end
end
