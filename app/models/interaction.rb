class Interaction < ApplicationRecord
  belongs_to :reciprocator, foreign_key: 'reciprocator_id', class_name: 'Participant'
  belongs_to :listing
end
