class DogsController < ApplicationController
  def index
    @dogs = Dog.all

    if params[:query]
      @dogs = @dogs.where("breed ILIKE ?", "%#{params[:query]}%")
    end

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
