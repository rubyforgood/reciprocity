require 'rails_helper'

describe ReferralCode, type: :model do
  context 'Association' do
    it { is_expected.to belong_to(:participant) }
  end
end
