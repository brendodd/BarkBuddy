class DogsController < ApplicationController
  def show
    @dog = Dog.find(params[:id])
    @booking = Booking.new
  end


end
