class Product < ApplicationRecord
  validates :name,
            presence: true,
            uniqueness: true
  validates :client_taxes_percentage, inclusion: 0..100
  belongs_to :provider

  mount_uploader :image, ImageUploader
end
