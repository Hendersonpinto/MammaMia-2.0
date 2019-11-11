class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :mom, foreign_key: 'owner_id'
  has_many :bookings, dependent: :destroy
  has_many :moms, through: :bookings
  validates :name, uniqueness:true, presence:true
  validates :last_name, presence:true
  validates :location, presence:true
  validates :email, presence:true, format: { with: URI::MailTo::EMAIL_REGEXP }
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
