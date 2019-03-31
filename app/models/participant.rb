class Participant < ApplicationRecord
  belongs_to :user
  has_many :referral_codes

  acts_as_taggable_on :interests
end
