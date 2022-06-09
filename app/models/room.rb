class Room < ApplicationRecord
  has_many :reservations, dependent: :destroy

  belongs_to :user
  
  mount_uploader :avatar, AvatarUploader
  validates :name, presence: true
  validates :introduction, presence: true
  validates :price, presence: true
  validates :adress, presence: true
  validates :avatar, presence: true
end
