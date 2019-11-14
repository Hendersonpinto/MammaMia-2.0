class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :mom, class_name: 'Mom'
  validates :price, presence: true
end
