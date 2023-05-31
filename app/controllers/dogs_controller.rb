class DogsController < ApplicationController
  def index
    @dogs = Dog.all

    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude
      }
    end
  end

  def show
    @dog = Dog.find(params[:id])
    @booking = Booking.new
  end
end
