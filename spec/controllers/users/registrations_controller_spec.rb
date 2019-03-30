require 'rails_helper'

RSpec.describe Users::RegistrationsController, type: :controller do

  before(:each) {
    @request.env["devise.mapping"] = Devise.mappings[:user]
  }

  describe "GET #new" do
    it "returns a redirect with no access code" do
      get :new
      expect(response).to redirect_to(redeem_path)
    end
  end

  describe "GET #new" do
    it "returns a redirect with invalid access code" do
      get :new, params: {code: 'foo'}
      expect(response).to redirect_to(redeem_path)
    end
  end

  describe "GET #new" do
    it "returns success with valid access code" do
      participant = Participant.create!
      ReferralCode.create!(nonce: ReferralCode.nonce, code: 'test', participant_id: participant.id)
      get :new, params: {code: 'test'}
      expect(response).to be_successful
    end
  end



end