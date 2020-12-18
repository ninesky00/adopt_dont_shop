class PetApplication < ApplicationRecord
  belongs_to :application
  belongs_to :pet

  enum status: [:in_progress, :approved, :rejected]
end