require 'rails_helper'

describe Organization, type: :model do
  context 'Validations' do
    subject { build(:organization) }

    it { is_expected.to validate_presence_of :name }
  end
end
