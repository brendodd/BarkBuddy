class BookingsController < ApplicationController
  before_action :set_dog, only: %i[create]

  def create
    @booking = Booking.new(booking_params)
    @booking.dog = @dog
    @booking.user = current_user
    @booking.save
    redirect_to dog_path(@dog), notice: "Booking confirmed!"
  end

  def index
    @bookings = Booking.where(user: current_user)
  end

  private

  def set_dog
    @dog = Dog.find(params[:dog_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
