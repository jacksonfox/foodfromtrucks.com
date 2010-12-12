class TrucksController < ApplicationController
  before_filter :authenticate_user!, :only => [:new, :create]

  def index
    @trucks = Truck.all
  end

  def new
    @truck = Truck.new
  end

  def create
    @truck = current_user.trucks.build(params[:truck])

    if @truck.save
      redirect_to trucks_path
    else
      render :new
    end
  end
end
