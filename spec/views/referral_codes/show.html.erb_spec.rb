require 'rails_helper'

RSpec.describe "referral_codes/show", type: :view do
  before(:each) do
    @referral_code = assign(:referral_code, ReferralCode.create!(
      :nonce => "Nonce",
      :type => 2,
      :code => "Code",
      :participant => nil,
      :used => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nonce/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Code/)
    expect(rendered).to match(//)
    expect(rendered).to match(/false/)
  end
end
