class ReferralCode < ApplicationRecord
  belongs_to :participant

  def mark_used
    update(used: true) if !used
  end

  def self.nonce
    SecureRandom.uuid
  end
end
