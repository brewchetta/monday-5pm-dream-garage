class CarsController < ApplicationController
  before_action :find_car, only: [:show, :edit, :update, :destroy]

  def index
    @brands = Brand.all
  end

  def new
    @brand = Brand.new
    @car = Car.new
  end

  def create
    if params[:brand][:name]
    @car = Car.new(car_params)
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :edit
    end
  end

  def destroy
    @car.destroy
    redirect_to cars_path
  end

  private

  def find_car
    @car = Car.find_by_id(params[:id])
    redirect_to cars_path if !@car
  end

  def brand_params
    params.require(:brand).permit(:name)
  end

  def car_params
    params.require(:car).permit(:model, :year, :brand_id)
  end

end
