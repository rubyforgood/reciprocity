class Listing < ApplicationRecord
  belongs_to :creator, foreign_key: 'created_by_id', class_name: 'Participant'
  has_many_attached :photos

  acts_as_taggable_on :tags

  validates(
    :type,
    :title,
    :publish_start_date,
    :publish_end_date,
    :interaction_start_date,
    :interaction_end_date,
    :zip_code,
    presence: true
  )
end
