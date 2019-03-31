class CreateInteractions < ActiveRecord::Migration[5.2]
  def change
    create_table :interactions do |t|
      t.belongs_to :reciprocator, foreign_key: { to_table: :participants }
      t.belongs_to :listing, foreign_key: true

      t.timestamps
    end
  end
end
