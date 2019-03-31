require 'rails_helper'

RSpec.describe Users::RegistrationsController, type: :controller do
  before(:each) do
    @request.env['devise.mapping'] = Devise.mappings[:user]
  end

  describe 'GET #new' do
    it 'returns a redirect with no access code' do
      get :new
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    it 'returns a redirect with invalid access code' do
      post :create, params: { code: 'foo' }
      expect(response).to redirect_to(new_user_session_path)
    end
  end
end
