require 'rails_helper'

RSpec.describe ListingsController, type: :controller do
  before do
    sign_in user
  end

  let(:user) do
    User.create!(email: 'person@example.com', password: 'xyz123456', confirmed_at: Time.now)
  end

  let(:participant) do
    Participant.create!(user: user)
  end

  let(:valid_attributes) do
    {
      title: 'Reciprocity Love',
      type: 'Offering',
      created_by_id: participant.id
    }
  end

  let(:valid_session) { {} }

  describe 'GET #index' do
    it 'returns a success response' do
      Listing.create! valid_attributes
      get :index, params: {}, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'GET #show' do
    it 'returns a success response' do
      listing = Listing.create! valid_attributes
      get :show, params: { id: listing.to_param }, session: valid_session
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
      listing = Listing.create! valid_attributes
      get :edit, params: { id: listing.to_param }, session: valid_session
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do
    context 'with valid params' do
      it 'creates a new Listing' do
        expect do
          post :create, params: { listing: valid_attributes }, session: valid_session
        end.to change(Listing, :count).by(1)
      end

      it 'redirects to the created listing' do
        post :create, params: { listing: valid_attributes }, session: valid_session
        expect(response).to redirect_to(Listing.last)
      end
    end
  end

  describe 'PUT #update' do
    context 'with valid params' do
      let(:new_attributes) do
        {
          title: 'Love Reciprocity'
        }
      end

      it 'updates the requested listing' do
        listing = Listing.create! valid_attributes
        put :update, params: { id: listing.to_param, listing: new_attributes }, session: valid_session
        listing.reload
        expect(listing.title).to eq('Love Reciprocity')
      end

      it 'redirects to the listing' do
        listing = Listing.create! valid_attributes
        put :update, params: { id: listing.to_param, listing: valid_attributes }, session: valid_session
        expect(response).to redirect_to(listing)
      end
    end
  end

  describe 'DELETE #destroy' do
    it 'destroys the requested listing' do
      listing = Listing.create! valid_attributes
      expect do
        delete :destroy, params: { id: listing.to_param }, session: valid_session
      end.to change(Listing, :count).by(-1)
    end

    it 'redirects to the listings list' do
      listing = Listing.create! valid_attributes
      delete :destroy, params: { id: listing.to_param }, session: valid_session
      expect(response).to redirect_to(listings_url)
    end
  end
end
