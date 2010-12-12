require 'test_helper'

class TrucksControllerTest < ActionController::TestCase
  context "A TrucksController" do
    setup do
      Factory(:truck)
    end

    context "on GET to #index" do
      setup do
        get :index
      end

      should respond_with :success
      should render_template :index
      should assign_to :trucks
    end
  end
end
