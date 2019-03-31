class Participant < ApplicationRecord
  belongs_to :user

  acts_as_taggable_on :interests
end
