require 'rails_helper'

RSpec.describe "referral_codes/edit", type: :view do
  before(:each) do
    @referral_code = assign(:referral_code, ReferralCode.create!(
      :nonce => "MyString",
      :type => 1,
      :code => "MyString",
      :participant => nil,
      :used => false
    ))
  end

  it "renders the edit referral_code form" do
    render

    assert_select "form[action=?][method=?]", referral_code_path(@referral_code), "post" do

      assert_select "input[name=?]", "referral_code[nonce]"

      assert_select "input[name=?]", "referral_code[type]"

      assert_select "input[name=?]", "referral_code[code]"

      assert_select "input[name=?]", "referral_code[participant_id]"

      assert_select "input[name=?]", "referral_code[used]"
    end
  end
end
