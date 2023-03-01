class Personnality < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_one_attached :photo

  has_many :joinskills
  has_many :skills, through: :joinskills
end
