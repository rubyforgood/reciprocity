require 'rails_helper'

RSpec.describe 'Listings', type: :request do
  before do
    user = User.create!(email: 'person@example.com', password: 'xyz123456', confirmed_at: Time.now)
    sign_in user
  end

  describe 'GET /listings' do
    it 'works! (now write some real specs)' do
      get listings_path
      expect(response).to have_http_status(200)
    end
  end
end
