require 'rails_helper'

describe User, type: :model do
  context 'Association' do
    it { is_expected.to have_many(:participants) }
  end

  context 'Validations' do
    subject { build(:user) }

    it { is_expected.to validate_presence_of :email }
    it { is_expected.to validate_uniqueness_of(:email).case_insensitive }
  end
end
