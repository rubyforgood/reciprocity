class CreatePositions < ActiveRecord::Migration[5.2]
  def change
    create_table :positions do |t|
      t.text :bio
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :show_on_team_page

      t.timestamps
    end
  end
end
