class Campaign < ApplicationRecord
  belongs_to :organization
  validates :sku, uniqueness: true
  validates :sku, :name, :camp_image, :price_cents, presence: true
  monetize :price_cents
  mount_uploader :camp_image, PhotoUploader
end
