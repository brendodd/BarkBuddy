class Booking < ApplicationRecord
  belongs_to :dog
  belongs_to :user
  has_many :reviews, dependent: :destroy
end
