class ReferralCode < ApplicationRecord
  belongs_to :participant

  def use
    update(used: true) if !used
  end

  def self.nonce
    SecureRandom.uuid
  end
end
