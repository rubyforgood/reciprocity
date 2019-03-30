class CreateParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :participants do |t|
      t.string :display_name
      t.text :about_me
      t.string :zip_code

      t.timestamps
    end
  end
end
