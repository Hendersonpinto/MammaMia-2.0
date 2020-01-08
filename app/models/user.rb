class User < ApplicationRecord
  has_one :mom, foreign_key: 'owner_id'
  has_many :bookings, dependent: :destroy
  has_many :moms, through: :bookings
  validates :name, uniqueness: true, presence: true
  validates :last_name, presence: true
  # validates :location, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
