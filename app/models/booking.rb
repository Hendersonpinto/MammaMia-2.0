class Booking < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  belongs_to :renter, class_name: 'User'
  belongs_to :mom, class_name: 'Mom'
  validates :price, presence:true
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
