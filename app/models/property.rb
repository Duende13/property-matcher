class Property < ApplicationRecord
  # mount_uploader :photo, PhotoUploader
  has_one_attached :photo
  belongs_to :account

  scope :latest, -> { order created_at: :desc}
end
