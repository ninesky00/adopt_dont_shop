class Application < ApplicationRecord
  has_many :pet_applications
  has_many :pets, through: :pet_applications
  validates :name, :address, :city, :state, :zip, :description, presence: { message: "Field cannot be empty"}
  validates :pets, :includsion: { in: %w(false), message: "pet must be adoptable" }
  enum status: [:in_progress, :pending, :accepted, :rejected]
  
end
