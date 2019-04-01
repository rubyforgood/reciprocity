class CreateOrganizations < ActiveRecord::Migration[5.2]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :website_url
      t.string :twitter_username
      t.string :facebook_username
      t.string :instagram_username
      t.string :phone
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :description

      t.timestamps
    end
  end
end
