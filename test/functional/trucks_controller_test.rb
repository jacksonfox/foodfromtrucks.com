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

    context "w/ logged-in user" do
      setup do
        sign_in Factory(:user)
      end

      context "on GET to #new" do
        setup do
          get :new
        end

        should respond_with :success
        should render_template :new
        should assign_to :truck
      end

      context "on POST to #create" do
        context "with good data" do
          setup do
            post :create, :truck => { :name => "OnlyBurger" }
          end

          should respond_with :redirect
          should_change("# of trucks", :by => 1) { Truck.count }
        end

        context "with good data" do
          setup do
            post :create, :truck => { :name => "" }
          end

          should respond_with :success
          should render_template :new
          should_not_change("# of trucks") { Truck.count }
        end
      end
    end
  end
end
