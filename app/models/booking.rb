class Booking < ApplicationRecord
  has_many :personnalities
  belongs_to :user
end
