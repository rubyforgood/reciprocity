require 'rails_helper'

describe Participant, type: :model do
  it { should belong_to(:user) }
end
