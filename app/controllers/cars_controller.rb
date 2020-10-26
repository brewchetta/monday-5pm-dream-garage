class CarsController < ApplicationController
  before_action :find_car, only: [:show]

  def index
    @cars = Car.all
  end

  private

  def find_car
    @car = Car.find_by_id(params[:id])
    redirect_to cars_path if !@car
  end

end
