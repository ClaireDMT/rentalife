class Booking < ApplicationRecord
  belongs_to :life
  belongs_to :user
end
