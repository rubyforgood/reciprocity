class Listing < ApplicationRecord
  belongs_to :creator, foreign_key: 'created_by_id', class_name: 'Participant'
  has_many_attached :photos

  acts_as_taggable_on :tags

  validates :type, :creator, presence: true
end
