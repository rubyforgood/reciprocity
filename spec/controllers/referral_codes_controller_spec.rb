require 'rails_helper'

RSpec.describe ReferralCodesController, type: :controller do
  before do
    sign_in user
  end

  let(:user) do
    User.create!(email: 'person@example.com', password: 'xyz123456', confirmed_at: Time.now)
  end

  let(:valid_attributes) do
    skip('Add a hash of attributes valid for your model')
  end

  let(:invalid_attributes) do
    skip('Add a hash of attributes invalid for your model')
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ReferralCodesController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      ReferralCode.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      referral_code = ReferralCode.create! valid_attributes
      get :show, params: { id: referral_code.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a success response' do
      get :new, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #edit' do
    it 'returns a success response' do
      referral_code = ReferralCode.create! valid_attributes
      get :edit, params: { id: referral_code.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new ReferralCode' do
        expect do
          post :create, params: { referral_code: valid_attributes }, session: valid_session
        end.to change(ReferralCode, :count).by(1)
      end

      it 'redirects to the created referral_code' do
        post :create, params: { referral_code: valid_attributes }, session: valid_session
        expect(response).to redirect_to(ReferralCode.last)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'new' template)" do
        post :create, params: { referral_code: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        skip('Add a hash of attributes valid for your model')
      end

      it 'updates the requested referral_code' do
        referral_code = ReferralCode.create! valid_attributes
        put :update, params: { id: referral_code.to_param, referral_code: new_attributes }, session: valid_session
        referral_code.reload
        skip('Add assertions for updated state')
      end

      it 'redirects to the referral_code' do
        referral_code = ReferralCode.create! valid_attributes
        put :update, params: { id: referral_code.to_param, referral_code: valid_attributes }, session: valid_session
        expect(response).to redirect_to(referral_code)
      end
    end

    context 'with invalid params' do
      it "returns a success response (i.e. to display the 'edit' template)" do
        referral_code = ReferralCode.create! valid_attributes
        put :update, params: { id: referral_code.to_param, referral_code: invalid_attributes }, session: valid_session
        expect(response).to be_successful
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested referral_code' do
      referral_code = ReferralCode.create! valid_attributes
      expect do
        delete :destroy, params: { id: referral_code.to_param }, session: valid_session
      end.to change(ReferralCode, :count).by(-1)
    end

    it 'redirects to the referral_codes list' do
      referral_code = ReferralCode.create! valid_attributes
      delete :destroy, params: { id: referral_code.to_param }, session: valid_session
      expect(response).to redirect_to(referral_codes_url)
    end
  end
end
