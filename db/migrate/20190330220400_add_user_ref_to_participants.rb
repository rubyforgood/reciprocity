class AddUserRefToParticipants < ActiveRecord::Migration[5.2]
  def change
    add_reference :participants, :user, foreign_key: true
  end
end
