require 'rails_helper'

describe Participant, type: :model do
  context 'Association' do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:referral_codes) }
    it { is_expected.to have_many(:listings) }
  end

  context 'Validations' do
    subject { build(:participant) }

    it { is_expected.to validate_presence_of :display_name }
    it { is_expected.to validate_presence_of :user }
  end
end
