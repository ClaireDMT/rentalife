class Life < ApplicationRecord
  belongs_to :accommodation
  belongs_to :user
  has_many_attached :photos
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end
