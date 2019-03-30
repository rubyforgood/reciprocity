class CreateReferralCodes < ActiveRecord::Migration[5.2]
  def change
    create_table :referral_codes do |t|
      t.string :nonce,           unique: true
      t.string :code_type
      t.string :code
      t.references :participant, foreign_key: true
      t.boolean :used,           default: false

      t.timestamps
    end
  end
end
