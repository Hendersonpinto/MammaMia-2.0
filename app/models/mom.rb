class Mom < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :owner, class_name: 'User'
  has_many :bookings, dependent: :destroy
  has_many :moms, through: :bookings
  validates :name, uniqueness:true, presence:true
  validates :last_name, presence:true
  validates :location, presence:true
  validates :email, presence:true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :photo, presence:true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
