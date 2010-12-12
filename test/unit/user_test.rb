require 'test_helper'

class UserTest < ActiveSupport::TestCase
  context "A User" do
    should "have a working factory" do
      assert Factory(:user).valid?
    end
  end
end
