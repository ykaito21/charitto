class Organization < ApplicationRecord
  belongs_to :user
  has_many :campaigns, dependent: :destroy
  validates :name, presence: true
  validates :description, presence: true
  validates :org_image, presence: true
  mount_uploader :org_image, PhotoUploader
end
