class Booking < ApplicationRecord
  belongs_to :personnality
  belongs_to :user
end
