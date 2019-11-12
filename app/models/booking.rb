class Booking < ApplicationRecord
  belongs_to :renter, class_name: 'User'
  belongs_to :mom, class_name: 'Mom'
  validates :price, presence: true
end
