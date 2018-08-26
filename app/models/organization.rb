class Organization < ApplicationRecord
  belongs_to :user
  has_many :campaigns, dependent: :destroy
  validates :name, presence: true
end
