require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "A User" do
    should have_many :trucks

    should "have a working factory" do
      assert Factory.build(:user).valid?
    end
  end
end
