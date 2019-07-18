require 'rails_helper'

describe Listing, type: :model do
  context 'Association' do
    it { is_expected.to belong_to(:creator).class_name('Participant') }
  end

  context 'Validations' do
    subject { build(:listing) }

    it { is_expected.to validate_presence_of :type }
  end
end
