class ReferralCode < ApplicationRecord
  belongs_to :participant

  def mark_used
    update(used: true) unless used
  end

  def self.nonce
    SecureRandom.uuid
  end

  def self.find_access_code(params)
    if params[:nonce]
      ReferralCode.find_by(nonce: params[:nonce])
    elsif params[:code]
      ReferralCode.find_by(code: params[:code])
    end
  end
end
