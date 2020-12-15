class Application < ApplicationRecord
  validates :name, :address, :city, :state, :zip, :description, presence: { message: "Field cannot be empty"}
end
