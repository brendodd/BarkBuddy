class Dog < ApplicationRecord
  belongs_to :user
  has_one_attached :photo
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :name, :birthday, :size, :breed, :address, presence: true #, :image

  def next_dog
    Dog.where("id > ?", id).first
  end

  def previous_dog
    Dog.where("id < ?", id).last
  end
end
