class Booking < ApplicationRecord
  belongs_to :personnality, dependent: :destroy
  belongs_to :user
end
