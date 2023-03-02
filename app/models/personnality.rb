class Personnality < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  has_many :joinskills
  has_many :skills, through: :joinskills
end
