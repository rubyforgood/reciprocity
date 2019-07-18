class Organization < ApplicationRecord
  has_one_attached :logo_upload

  validates :name, presence: true
end
