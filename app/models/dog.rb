class Dog < ApplicationRecord
  belongs_to :user

  def next_dog
    Dog.where("id > ?", id).first
  end

  def previous_dog
    Dog.where("id < ?", id).last
  end
end
