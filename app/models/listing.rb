class Listing < ApplicationRecord
  belongs_to :creator, foreign_key: 'created_by_id', class_name: 'Participant'
end
