class Application < ApplicationRecord
  has_many :pet_applications
  has_many :pets, through: :pet_applications
  validates :name, :address, :city, :state, :zip, :description, presence: { message: "Field cannot be empty"}

  enum status: [:in_progress, :pending, :accepted, :rejected]
  
end
