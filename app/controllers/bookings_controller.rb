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
    @current_bookings = Booking.where(user: current_user, start_date: ..Date.today, end_date: Date.today + 1..)
    @past_bookings = Booking.where(user: current_user, end_date: ..Date.today - 1)
    @future_bookings = Booking.where(user: current_user, start_date: Date.today + 1..)
  end

  private

  def set_dog
    @dog = Dog.find(params[:dog_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end

end
