require 'rails_helper'

RSpec.describe Listing, type: :model do
  describe 'belongs_to' do
    it { is_expected.to belong_to(:creator).class_name('Participant').with_foreign_key('created_by_id') }
  end

  describe 'has_many' do
    it { is_expected.to have_many(:photos_attachments) }
  end

  describe 'acts as taggable' do
    it { expect(described_class.tag_types).to eq([:tags]) }
  end
end
