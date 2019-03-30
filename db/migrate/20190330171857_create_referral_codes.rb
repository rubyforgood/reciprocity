class CreateReferralCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :referral_codes do |t|
      t.string :nonce
      t.integer :type
      t.string :code
      t.references :participant, foreign_key: true
      t.boolean :used

      t.timestamps
    end
  end
end
