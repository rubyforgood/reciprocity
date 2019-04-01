class Participant < ApplicationRecord
  belongs_to :user
  has_many :referral_codes
  has_many :listings, foreign_key: :created_by_id
  has_one_attached :avatar

  acts_as_taggable_on :interests

  INTERESTS = %w[
    Art
    Social\ Justice
    Family
    Labor\ &\ Jobs
    Music
    Environment
    Permaculture
    Black\ Lives
    Healing\ Arts
    Education
    Technology
    Civic\ Engagement
    Theater
    Spirit
    Indigenous
    Policy
    NVDA
    Clean\ Water
    Youth
    Government
    Climate
    Food\ Justice
    Green\ Business
    Self\ Care
  ].freeze
end
