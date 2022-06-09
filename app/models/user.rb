class User < ApplicationRecord

  has_many :rooms, dependent: :destroy
  has_many :reservations, dependent: :destroy

  mount_uploader :icon, IconUploader
  
  validates :name, presence: true
  validates :email, presence: true
  validates :icon, presence: true
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
