class Mom < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings

  validates :name, uniqueness: true, presence: true
  validates :last_name, presence: true
  validates :location, presence: true
  validates :price, presence: true

  mount_uploader :photo, PhotoUploader
end
