require 'rails_helper'

RSpec.describe "referral_codes/new", type: :view do
  before(:each) do
    assign(:referral_code, ReferralCode.new(
      :nonce => "MyString",
      :type => 1,
      :code => "MyString",
      :participant => nil,
      :used => false
    ))
  end

  it "renders new referral_code form" do
    render

    assert_select "form[action=?][method=?]", referral_codes_path, "post" do

      assert_select "input[name=?]", "referral_code[nonce]"

      assert_select "input[name=?]", "referral_code[type]"

      assert_select "input[name=?]", "referral_code[code]"

      assert_select "input[name=?]", "referral_code[participant_id]"

      assert_select "input[name=?]", "referral_code[used]"
    end
  end
end
