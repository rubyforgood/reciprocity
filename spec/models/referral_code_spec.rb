require 'rails_helper'

describe ReferralCode, type: :model do
  it { should belong_to(:participant) }
end
