class Participant < ApplicationRecord
  belongs_to :user
  has_many :referral_codes
  has_many :listings, foreign_key: :created_by_id
  has_one_attached :avatar

  acts_as_taggable_on :interests
end
