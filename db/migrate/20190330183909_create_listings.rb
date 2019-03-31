class CreateListings < ActiveRecord::Migration[5.2]
  def change
    create_table :listings do |t|
      t.belongs_to :created_by, foreign_key: { to_table: :participants }
      t.string :type, null: false
      t.string :title
      t.text :description
      t.text :reference_url
      t.datetime :publish_start_date
      t.datetime :publish_end_date
      t.datetime :interaction_start_date
      t.datetime :interaction_end_date
      t.string :zip_code

      t.timestamps
    end
    add_index :listings, :type
  end
end
