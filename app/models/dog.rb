class Dog < ApplicationRecord
  belongs_to :user

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  
  def next_dog
    Dog.where("id > ?", id).first
  end

  def previous_dog
    Dog.where("id < ?", id).last
  end
end
