require 'rails_helper'

RSpec.describe "referral_codes/index", type: :view do
  before(:each) do
    assign(:referral_codes, [
      ReferralCode.create!(
        :nonce => "Nonce",
        :type => 2,
        :code => "Code",
        :participant => nil,
        :used => false
      ),
      ReferralCode.create!(
        :nonce => "Nonce",
        :type => 2,
        :code => "Code",
        :participant => nil,
        :used => false
      )
    ])
  end

  it "renders a list of referral_codes" do
    render
    assert_select "tr>td", :text => "Nonce".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Code".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
