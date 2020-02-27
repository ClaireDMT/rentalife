class Life < ApplicationRecord
  belongs_to :accommodation
  belongs_to :user
  has_many_attached :photos
end
