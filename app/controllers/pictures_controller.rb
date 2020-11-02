class PicturesController < ApplicationController

  def new

  end

  def create

  end

  def destroy

  end

  private

  def picture_params
    params.require(:picture).permit(:img_url, :car_id, :description, :alt_text)
  end

  def find_picture
    @picture = Picture.find_by_id(params[:id])
    redirect_to car_pictures_path(@car) if !@picture
  end

  def find_car
    @car = Car.find_by_id(params[:car_id]) || redirect_to cars_path
  end

end
