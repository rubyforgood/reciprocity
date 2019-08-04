require 'rails_helper'

RSpec.describe Listing, type: :model do
  it { is_expected.to validate_presence_of :type }
  it { is_expected.to validate_presence_of :title }
  it { is_expected.to validate_presence_of :publish_start_date }
  it { is_expected.to validate_presence_of :publish_end_date }
  it { is_expected.to validate_presence_of :interaction_start_date }
  it { is_expected.to validate_presence_of :interaction_end_date }
  it { is_expected.to validate_presence_of :zip_code }
end
