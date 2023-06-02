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
    @user_booking = Booking.find_by(user: current_user, dog: @dog) if current_user
    @review = Review.new
    @booking = Booking.new
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user = current_user
    if @dog.save
      redirect_to dog_path(@dog)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :birthday, :size, :breed, :address, :photo)
  end
end
