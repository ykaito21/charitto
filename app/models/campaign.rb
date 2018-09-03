class Campaign < ApplicationRecord
  belongs_to :organization
  validates :sku, presence: true, uniqueness: true
  validates :name, presence: true
  validates :image_url, presence: true
  validates :price_cents, presence: true
  monetize :price_cents
  mount_uploader :image_url, PhotoUploader
end
